# =========================
# Basic Hashes
# =========================

# To create a hash, we instantiate a new 
# instance of the Hash class:

item = Hash.new

# This is identical to how we built arrays.
# Hashes can also be created by using curly braces:

item = {}

# Notice this is similar to arrays with brackets []
# The main difference between an array and hash is that
# arrays are indexed by numbers, while hashes can be indexed
# by keys, which can have any standard name.

# When creating a hash using curly braces, 
# keys and values can also be specified:


item = { "item" => "Bread", "quantity" => 1 }


# Hash keys can be almost any Ruby type. 
# Here's an example of using symbols as hash keys:

item = { :item => "Bread", :quantity => 1 }

# Hash keys can also be numbers. 
# If we set the following hash key and value:

item[1] = "Grocery Store"

# Inspect our hash and we would see:

puts item.inspect
# { :item => "Bread", :quantity => 1, 1 => "Grocery Store" }

# Once a hash has been instantiated, it is possible 
# to add new hash keys and values by using the name 
# of the hash, brackets containing the new key, an equals sign, 
# and the new value for said key:

item["brand"] = "Wonder Bread"