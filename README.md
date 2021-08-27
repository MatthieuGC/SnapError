# SnapError

SnapError has been made to unify error management between backend and frontend within all our apps/services.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'snap_error'
```

Then execute:

    $ bundle install

Finally install the gem by running:

    $ rails g snap_error:install
## Usage

In your ApplicationController add:

    $ include SnapError::Renderer

You're now ready to customize custom errors' code and status in `config/initializers/snap_error.rb`!
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/snap_error.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
