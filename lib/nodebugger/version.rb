module Nodebugger
	class Configuration
    attr_accessor :from_directories
    
    def initialize
      @from_directories = %w(controller model view)         
    end
  end
  VERSION = "0.0.1"
end
