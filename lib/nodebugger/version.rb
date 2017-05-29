module Nodebugger
	class Configuration
    attr_accessor :from_directories, :recursive, :extensions_only
    
    def initialize
      @from_directories = %w(app/controllers app/models app/views)
      @recursive = false
      @extensions_only = ""         
    end
  end
  VERSION = "0.1.3"
end
