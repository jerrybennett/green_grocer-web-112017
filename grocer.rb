require 'pry'
def consolidate_cart(cart)
  produce = cart.inject({}) do |hash, food|
    item = food.keys.first
    hash[item] ||= food[item].merge(count: 0)
    hash[item][:count] += 1
    hash
  end
end

def apply_coupons(cart, coupons)
  coupon_arr = {}
  coupons.each do |coupon|
    cart.each do |item|
      if coupon[:item] == item[0]
        cart = {"#{coupon[:item]} W/COUPON"}{:price => 5.0, :clearance => true, :count => 1}
      end

    end
  end
  binding.pry
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
