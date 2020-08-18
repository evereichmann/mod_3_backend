Rails.application.routes.draw do
  resources :inner_texts
  resources :wrapping_paper_images
  resources :wrapping_papers
  resources :images
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
