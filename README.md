# OmniAuth for Planning Center Online (PCO)

OmniAuth for Planning Center Online's API.

## How To Use It

Add this gem to your Gemfile:

```ruby
gem 'omniauth-pco', git: 'git://github.com/emersonian/omniauth-pco.git'
```

Add the following to your `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :pco, 'consumer_key', 'consumer_secret', scope: 'people'
end
```

NOTE: If you are using Devise, add this instead to your
`config/initializers/devise.rb`
 
```ruby    
config.omniauth :pco, ENV['PCO_OAUTH2_KEY'], ENV['PCO_OAUTH2_SECRET'], scope: 'people'
```  

Set the PCO_OAUTH2* environmental variables to your key and secret,
which you can obtain from https://api.planningcenteronline.com


## Todo

* Example project
* Tests

