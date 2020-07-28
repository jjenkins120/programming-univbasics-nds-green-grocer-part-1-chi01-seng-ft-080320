=begin
def find_item_by_name_in_collection(string, collection)
  collection.each do |hash|
    if hash[:item] == string
      return hash
    end
  end
  nil
end

def consolidate_cart(cart)
  new_cart = []
  cart.each do |grocery_item|
    current_item = find_item_by_name_in_collection(grocery_item[:item], new_cart)
    if current_item
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] == current_item[:item]
          new_cart_item[:count] += 1
        end  
      end
    else 
      grocery_item[:count] = 1 
      new_cart << grocery_item
    end  
  end
  new_cart
end
=end

require "pry"
def find_item_by_name_in_collection(string, collection)
  collection.each do |hash|
    if hash[:item] == string
      return hash
    end
  end
  nil
end

def consolidate_cart(cart)
  new_array = []
  cart.each do |grocery_item|
    new_item = find_item_by_name_in_collection(string, collection)
    if new_item
      binding.pry
    end   
  end
end













  