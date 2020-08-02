def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0
  while i < collection.length do
    return collection[i] if name === collection[i][:item]
    i += 1
  end
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
hash = {}
  cart.each do |item_hash|
    item_hash.each do |name, price_hash|
      if hash[name].nil?
        hash[name] = price_hash.merge({:count => 1})
      else
        hash[name][:count] += 1
      end
    end
  end
  hash
end
  