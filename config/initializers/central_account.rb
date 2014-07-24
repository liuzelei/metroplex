CentralAccount.setup do |config|
  config.app_code = "MP"
  config.app_key_file = "config/certs/mp.pem"
  config.um_server_url = "http://0.0.0.0:8800"
  config.um_server_ca_file = ""
end