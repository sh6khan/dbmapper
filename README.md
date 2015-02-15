# Dbmapper

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dbmapper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dbmapper

## Usage

Start by opening up the rails console with `rails c`
then create a new instance of the dbmapper with 
```
db = Dbmapper::DatabaseMapper.new
```
you no have free reign to do display all the information you could need about our database 

## Methods
To print out all your models run
```
db.all_models
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/dbmapper/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
