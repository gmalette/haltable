# Haltable

Haltable is a gem that allows halting controller actions to simplify the flows.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'haltable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install haltable

## Usage

```ruby
class AwesomesController < ApplicationController
  def update
    haltable do
      verify_something
      verify_something_else

      awesome.update(params)
    end
  end

  private
  def verify_something
    return if something.valid?
    render :somethings_not_valid
    halt
  end
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/haltable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
