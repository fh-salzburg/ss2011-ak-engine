class Ss2011akengine::StaticController < ApplicationController
  layout 'static_layout'
  def show
    render :template => 'static/' + params[:file]
  end
end
