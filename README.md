# ReturnMany - Tested with 1.9.3, may not work with 2+ (because of keyword arguments)

Little method that makes returning many values easier and better. 
You can access returned values via hash-like function `[:name]`. 

## Installation

Add this line to your application's Gemfile:

    gem 'return_many'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install return_many

## Usage

You have to require gem:

    require 'return_many'

And you can include (module) whenever you want.   
If you require it outside any module/class it will be avaible globally.

    include ReturnMany

Now you can use it via `many` function:
    
    def qux
      return many a: 1, b: 2, c: 3 # and so on
    end

    # lets create little function, so I don‘t have to make a lot of function-examples
    # it takes and returns arguments:
    def foo args
        return many args
    end

    a, b = foo a: 1, b: 2
    # a = 1; b = 2

`c` will have the 3rd+ args
    a, b, *c =  foo a: 1, b: 2, c: 3, d: 4
    # a = 1; b = 2; c = [3, 4]

Takes only a and c

    a, c = foo( a: 1, b: 2, c: 3 )[:a, :c]
    # a = 1; c = 3

Takes selected return values as array:

    a = foo( a: 1, b: 2, c: 3)[:a, :c]
    # a = [1, 3]

Returns modyfied hash:

    a = foo( a: 1, b: 2)
    # a= {:a=>1, :b=>2}

So you can do the same thing as above:
    a[:a, :b, :b]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
