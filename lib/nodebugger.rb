require "nodebugger/version"
# require_relative 'nodebugger/version'
# require 'nodebugger/configuration'

module Nodebugger
  class << self
    attr_accessor :configuration 

    def configuration
      @configuration ||= Configuration.new
    end

    def reset
      @configuration = Configuration.new
    end

    def configure
      yield(configuration)
    end

    def run
      extensions_only = Nodebugger.configuration.extensions_only
      Nodebugger.configuration.from_directories.each do |directory|
        files =[]        
        if Nodebugger.configuration.recursive
          files = recursion(directory, files, extensions_only)       
        else
          files = Dir.glob("#{directory}/*" << extensions_only).select { |f| File.file?(f) }
        end
        process_files(files)        
      end
    end

    def recursion(directory, files, extensions_only)
      files << Dir.glob("#{directory}/*").select { |f| File.file?(f) }
      files = files.flatten!    
      dirs = Dir.glob("#{directory}/*" << extensions_only).select { |f| File.directory?(f) }
      dirs.each do |dir|
        recursion(dir, files)
      end
      files
    end

    def process_files(files)
      files.each do |filename|
        if File.readlines(filename).grep(/debugger/).any?
          text = File.read(filename).split("debugger")
          File.open(filename, "w") {|file| file.puts text.map(&:rstrip).join }
          # /^[\s]*$\n/
        end
      end
    end
  end

end