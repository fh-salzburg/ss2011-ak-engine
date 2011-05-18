Rails.application.routes.draw do
  match "/:id" => "static#show"
end