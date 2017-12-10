module ApplicationHelper
  def item_total
    total = 0
    current_order.order_items.each do |order_item|
      total += order_item.quantity
    end
    total
  end
end
