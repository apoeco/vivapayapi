# Vivapayapi

Wrapper for VivaPayments Pay with VivaWallet solution.
Caution:
    Work in progress.
Demo mode only for now!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vivapayapi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vivapayapi

## Usage
```ruby
transaction = VivaPayAPI::Transaction.new("your_merchant_id_here","your_api_key_here")
transaction.capture("your_vivaWalletToken_here")

transaction.succesfull? #Returns returns true if error code equals to 0, nil if capture failed
transaction.transaction_id #Returns the transactions id, nil if capture failed
transaction.status #Returns the transactions status, nil if capture failed
transaction.amount #Returns the transactions amount, nil if capture failed
transaction.error_text #Returns the captures error text, nil if capture didnt happen
transaction.error_code #Returns the captures error code, nil if capture didnt happen
transaction.response #Returns the captures parsed response from HTTParty, nil if capture didnt happen
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/apoeco/vivapayapi/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
