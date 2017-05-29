# Nodebugger

Nodebugger is used to remove the debugger from the specified directories

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nodebugger'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nodebugger

## Usage

#run below command
rails generate nodebugger
#this will crearte nodebugger.rb in /config/initializers. In this file set directories to remove debugger from
#set recursive to true to remove from subdirectories
# pass extensions for particular file extention config.extensions_only = '.{rb, coffee, js}'
#run command
 Nodebugger.run

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/nodebugger.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

