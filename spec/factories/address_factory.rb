Factory.define :ppx_address do |f|
  f.firstname 'John'
  f.lastname 'Barton'
  f.address1 '250 Broadway'
  f.address2 ''
  f.city   "New York City"
  f.state  { |state| state.association(:ppx_state) }
  f.zipcode '10007'
  f.country { |country| country.association(:country) }
  f.phone '555-555-5555'
  f.state_name "New York"
  f.alternative_phone "555-555-5555"
end