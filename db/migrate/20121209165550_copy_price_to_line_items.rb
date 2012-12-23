class CopyPriceToLineItems < ActiveRecord::Migration
  def up
      LineItem.all.each do |item|

	 # item.price = item.product.price
	  item.update_attributes({:price=>item.product.price})

      end
  end

  def down
  end
end
