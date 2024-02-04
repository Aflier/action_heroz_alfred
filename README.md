# ActionHerozAlfred

# Gemfile

    gem 'action_heroz_alfred', git: 'https://github.com/Aflier/action_heroz_alfred.git', branch: 'main'

# Install

    rails g action_heroz_alfred:install

For now also run the above everytime you update.

# Add the controller

Add in the controller. It needs to be include the button and the turbo tag for the Slider!

    <body data-controller="help-slider">...</body>

# Add the button

Add the button to where you want it to be. 

    <%= render '/action_heroz_alfred/action_heroz_button' %>

Add the following everywhere you would like to be able to trigger the slider if clicked on:

    <div data-action="click->help-slider#slider">Here...</div>

# Add the slider

Add the follower to all your layouts files where you want the slider to show.

    <%= turbo_frame_tag :help_slider %>

# Keys to the door

Complete the config file at config/initializers/action_heroz.rb

    if Rails.env.production? # or true
        $base_url = 'https://action.heroz.app'
        $action_heroz_key = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
        $action_heroz_pages_key = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
    else
        # For you for some testing! 
        $base_url = 'http://localhost:3002'
        $action_heroz_key = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
        $action_heroz_pages_key = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
    end

There is a separate key for raising actions ($action_heroz_key) and for help pages ($action_heroz_pages_key).
They can be the same.