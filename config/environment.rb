# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

Depot::Application.configure do
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
	address: "smtp.someserver.net",
	port: 25,
	domain: "domain.of.sender.net",
	authentication: "login",
	#user_name: "docteur.toure",
	#password: "",
	#enable_starttls_auto: true
    }
end

