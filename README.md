# rspec-shared

This gem adds a `shared` method to RSpec Core which basically a `let` that is
shared across examples.

## Synopsis

``` ruby
describe do
  @@one = 1

  def shared_value
    @@one = @@one.next
  end

  shared(:foo) { shared_value }

  example { foo.should eq(2) }
  example { foo.should eq(2) }

  describe do
    example { foo.should eq(2) }
  end
end
```