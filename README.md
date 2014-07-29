# Feedract

Feedract: Atom or RSS Feed searcher in HTML

## Installation

Add this line to your application's Gemfile:

    gem 'feedract'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install feedract

## Usage

```ruby
Feedract.load("http://b.hatena.ne.jp/hotentry") #=> ["http://b.hatena.ne.jp/hotentry.rss"]
```

## Contributing

1. Fork it ( https://github.com/naoto/feedract/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
