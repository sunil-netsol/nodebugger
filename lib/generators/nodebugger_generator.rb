class NodebuggerGenerator < Rails::Generators::Base  
  desc "set directories to remove debugger from"
  def create_initializer_file
    create_file "config/initializers/nodebugger.rb", "Nodebugger.configure do |config|
	#pass directories to remove debugger from
	#config.from_directories = %w(app/controllers app/models app/views)
	#config.recursive = false
	#config.extensions_only = '.{rb, coffee, js}' # leave commented for all extentions
end"
  end
end