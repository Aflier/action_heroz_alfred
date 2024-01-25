module ActionHelpControl
  extend ActiveSupport::Concern

  def slider
    @controller_name = params[:controller_name]
    @action_name = params[:action_name]
    @tab = params[:tab]
    @page_ident = "#{@controller_name}-#{@action_name}#{ @tab.blank? ? '': "-t-#{@tab}"}"
  end
end
