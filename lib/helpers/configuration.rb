module Configuration
	def configuration
	  yield self
	end
  # @from_directories = %w(controllers helpers models)
	# class << self
 #    attr_accessor :from_directories
 #  end
  def define_setting(name, default = nil)
  	instance_variable_set("@#{name}", default)
  end
end

