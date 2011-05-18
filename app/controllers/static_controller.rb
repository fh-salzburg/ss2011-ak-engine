class StaticController < ActionController::Base
  def show
    render :file => params[:controller] + "/" + params[:id]
  end
end
