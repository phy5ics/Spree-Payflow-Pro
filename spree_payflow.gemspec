Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_payflow'
  s.version     = '0.60.0'
  s.summary     = 'Spree extension for PayPal Payflow Pro gateway'
  s.description = 'Spree extension for PayPal Payflow Pro gateway'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'John Barton'
  s.email             = 'jb@phy5ics.com'
  s.homepage          = 'http://www.phy5ics.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.60.0')
end
