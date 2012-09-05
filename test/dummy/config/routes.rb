Rails.application.routes.draw do

  resources :some_models

  mount ActAsContenteditable::Engine => "/act_as_contenteditable"

end
