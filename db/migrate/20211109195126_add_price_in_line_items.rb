class AddPriceInLineItems < ActiveRecord::Migration
  def add_price
    Cart.all.each do |cart|
      cart.line_items.each do |line_item|
        product_price = Product.find(line_item.product_id).price.to_f
        line_item.product_price = product_price
      end
    end
  end
end
