module Nodebugger
	class Configuration
    attr_accessor :from_directories
    
    def initialize
      @from_directories = %w(app/controllers app/models app/views)         
    end
  end
  VERSION = "0.0.3"
end
