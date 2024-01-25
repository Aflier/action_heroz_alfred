# Routes: Something like the following needs to be in your routes. Assumes you add to UserController
#
# resources :users, only: [:xxx, :slider] do
#   member do
#     get :xxx
#     get :slider
#   end
# end

module ActionHelpControl
  extend ActiveSupport::Concern

  def slider
    @controller_name = params[:controller_name]
    @action_name = params[:action_name]
    @tab = params[:tab]
    @page_ident = "#{@controller_name}-#{@action_name}#{ @tab.blank? ? '': "-t-#{@tab}"}"
  end
end
