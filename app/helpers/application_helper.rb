module ApplicationHelper
  def item_total
    total = 0
    current_order.order_items.each do |order_item|
      total += order_item.quantity
    end
    total
  end

  def greater_than
    if current_order.order_items <= 0
      return "Please enter a number greater than 0"
    end
  end
  
end
