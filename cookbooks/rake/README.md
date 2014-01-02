# Description


A (very) simple LWRP to provide access to rake as a resource.

# Requirements

None.

# Attributes


```ruby
attribute :arguments, :kind_of => String, :required => true
```
The list of arguments to pass to rake.
```ruby
attribute :working_directory, :kind_of => String, :required => true
```
The working directory rake will be executed in.

# Usage

### Make sure rake is installed locally: 
```ruby
include_recipe 'rake' 
```

### Set Path
Currently it expects to find rake on the PATH env variable.  Use this in a recipe to ensure it can (this is an example
for ubuntu 10.04).

```ruby
ENV["PATH"] += ":/var/lib/gems/1.8/bin"
```
### Finally, this is how we make rake run.

```ruby
rake :run do
  working_directory "/tmp"
  arguments "--help"
  action :run
end
```

# TODO

Lots, including

* fixing the need for action :run.
* Adding path statements per platform automagically.
* Adding versioning via an attribute or data_bag.
* Adding support to specific rake + ruby version (for multi versioned systems).
* Proper platform support, this should be easy (but a bit time consuming as I don't use every platform ever.)