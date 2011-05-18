class StaticController < ActionController::Base
  def show
    render :template => "static/" + params[:id]
  end
end
