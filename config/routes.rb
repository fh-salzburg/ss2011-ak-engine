Rails.application.routes.draw do
  match "/:action", :controller => "static"
end
