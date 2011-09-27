class Gateway::Payflow < Gateway
  preference :login, :string
  preference :password, :password
  preference :partner, :string

  def provider_class
    ActiveMerchant::Billing::PayflowGateway
  end
end
