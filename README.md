## Installation

Add this line to your application's Gemfile:

```ruby
gem 'alias_class'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alias_class

## Usage

```ruby
class Hello
  class World
    class Extra
      class Long
        class Nesting
          def hello
            "Puts it took a long time to get here"
          end
        end
      end
    end
  end
end


class Test
  include AliasClass
  alias_class Hello::World::Extra::Long::Nesting, "Greeter"

  def hello
    Greeter.new.hello
  end
end

puts Test.new.hello # => "Puts it took a long time to get here"
```

- Remenber to pass the alias_class name as a string

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/alias_class. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

