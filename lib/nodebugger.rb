require "nodebugger/version"
require 'helpers/configuration'
class Nodebugger
	extend Configuration
	define_setting :from_directories, %w(controllers helpers models)

  def initialize
    p "this directories is #{@from_directories}"	
  end
end
