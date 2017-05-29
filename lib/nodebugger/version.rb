module Nodebugger
	class Configuration
    attr_accessor :from_directories, :recursive
    
    def initialize
      @from_directories = %w(app/controllers app/models app/views)
      @recursive = false         
    end
  end
  VERSION = "0.1.2"
end
