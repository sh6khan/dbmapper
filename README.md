# Dbmapper

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dbmapper'
```

And then execute:

    $ bundle


## Usage

Start by opening up the rails console with `rails c`
the very first thing that you want to do is load up the databse base
```
Rails.application.eager_load!
```
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
To print out all your columns run 
```
db.all_columns
```
To print out all your models with their associations run
```
db.all_models_with_association
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/dbmapper/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
