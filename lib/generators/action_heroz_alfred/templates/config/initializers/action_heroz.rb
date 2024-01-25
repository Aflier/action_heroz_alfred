if Rails.env.production?
  $base_url = 'https://action.heroz.app'
  $action_heroz_key = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
  $action_heroz_pages_key = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
else
  $base_url = 'http://localhost:3002'
  $action_heroz_key = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
  $action_heroz_pages_key = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
end
