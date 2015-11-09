# AlwaysHasOne

Make sure a has_one association always exists

## Installation

```bash
gem install always_has_one
```

Or add it to your Gemfile:

```ruby
gem 'always_has_one'
```

Then:

```bash
bundle
```

## Usage

```ruby
class Supplier < ActiveRecord::Base

  always_has_one :account

end

supplier = Supplier.new
supplier.account.account_number  # you can reference account attributes without needing to build it first, or check its presence
```

It accepts the same attributes that has_one.
