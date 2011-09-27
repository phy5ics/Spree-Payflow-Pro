require 'spree_core'
require 'spree_payflow_hooks'

module SpreePayflow
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      
      require 'active_merchant'
      require 'active_merchant/billing/gateways/payflow'
      
      ActiveMerchant::Billing::PayflowGateway
      
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      
      Gateway::Payflow.register
    end

    config.to_prepare &method(:activate).to_proc
  end
end
