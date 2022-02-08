if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_authentication_app', domain: 'mighty-tor-35081.herokuapp.com'
  else
    Rails.application.config.session_store :cookie_store, key: '_api'
  end