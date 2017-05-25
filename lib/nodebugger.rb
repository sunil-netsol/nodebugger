require "nodebugger/version"
# require_relative 'nodebugger/version'
# require 'nodebugger/configuration'

module Nodebugger
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end

  def self.run    
    Nodebugger.configuration.from_directories.each do |directory|
      files = Dir.glob("#{directory}/*.rb")
      files.each do |filename|
        if File.readlines(filename).grep(/debugger/).any?
          text = File.read(filename).split("debugger")

          # new_contents = text.gsub(/debugger/, "").gsub /^$\n/, ''
          File.open(filename, "w") {|file| file.puts text.map(&:rstrip).join }
          # /^[\s]*$\n/
        end
      end
    end    
  end
end