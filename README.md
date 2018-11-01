# Hsw::Cli

Hello! Use this piece of code to scrape interesting articles from howstuffworks.com. To do this, simply type: 

ruby bin/run

It will print articles currently featured on the homepage, with title and blurb. Then it will ask to pick an article from the list. Pick any article and it will print the content. Finally it will ask whether to pick another article to read or quit.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hsw-cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hsw-cli

## Usage

First type this:

ruby bin/run

It will then print a list of articles, and ask to pick one to read. After reading one, it's possible to read another article.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'MNGiit'/hsw-cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hsw::Cli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'MNGiit'/hsw-cli/blob/master/CODE_OF_CONDUCT.md).
