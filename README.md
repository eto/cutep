# Cutep

Because of gem name restrictions, I use the name "cutep", but it's actually "qp". Call it "qp".

"qp" is an extension of "p".
Normal "p" only outputs the specified variables, etc. However, during programming, you may need information about where the "p" is being called.
"qp" outputs the information about where it is called at the same time.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cutep'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cutep

## Usage

First, let's run the following "sample.rb" script.

```
require 'qp'
qp 'foo'

def a_method
  qp 'in a_method'
  qp 1, 2, 3
end
a_method
```

You will get the following output.

```
% ruby sample.rb
sample.rb:2:<main>      ["foo"]
sample.rb:5:a_method    ["in a_method"]
sample.rb:6:a_method    [1, 2, 3]
```

This makes debugging a lot easier. Please try it out.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/eto/cutep. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/eto/cutep/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Cutep project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/eto/cutep/blob/master/CODE_OF_CONDUCT.md).
