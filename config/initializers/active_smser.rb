
if Rails.env.development? || Rails.env.production?



  ActionSmser.delivery_options[:delivery_method] = :nexmo
  ActionSmser.delivery_options[:nexmo] = {
      :username => 'username', :password => "password"
  }

  # set callback url to nexmo http://localhost:3000/action_smser/delivery_reports/gateway_commit/nexmo
  ActionSmser.delivery_options[:gateway_commit]['nexmo'] = ActionSmser::DeliveryMethods::Nexmo

  # ActionSmser.delivery_options[:save_delivery_reports] = true
end
