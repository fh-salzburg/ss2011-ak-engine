Rails.application.routes.draw do
  match '/:action' => 'static'
end
