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
consolidated = {}
  cart.each do |contents|
    contents.each do |item, info|
    if consolidated.include?(item)
      consolidated[item][:count] += 1
    else
      consolidated[item] = {
          :price => info[:price],
          :clearance => info[:clearance],
          :count => 1
      }
    end
  end
end
consolidated
end