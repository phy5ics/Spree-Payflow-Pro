Factory.define(:ppx_order) do |record|
  # associations:
  record.association(:user, :factory => :user)
  record.association(:bill_address, :factory => :address)
  record.association(:shipping_method, :factory => :shipping_method)
  record.ship_address { |ship_address| Factory(:ppx_address, :city => "New York City", :zipcode => "10007") }
end

Factory.define :ppx_order_with_totals, :parent => :order do |f|
  f.after_create { |order| Factory(:line_item, :order => order) }
end
