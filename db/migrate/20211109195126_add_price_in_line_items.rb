class AddPriceInLineItems < ActiveRecord::Migration
  def up
    Cart.all.each do |cart|
      cart.line_items.each do |line_item|
        product_price = Product.find(line_item.product_id).price
        line_item.product_price = product_price
        line_item.save!
      end
    end
  end

  def down
    Cart.all.each do |cart|
      cart.line_items.each do |line_item|
        line_item.product_price = nil
        line_item.save!
      end
    end
  end
end
