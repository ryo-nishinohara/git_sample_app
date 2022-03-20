Rails.application.routes.draw do
  get "courses/index" => "courses#index"
  get "labs/index" => "labs#index"
  get 'requests/new'
  get '/' => "home#top"
  get "/about" => "home#about"
  get 'courses/:course_id' => "courses#show"
  get 'labs/:lab_id' => "labs#show"
  get 'review_labs/:lab_id/new' => "review_labs#new"
  get "review_courses/:course_id/new" => "review_courses#new"
  post "review_labs/:lab_id/create" => "review_labs#create"
  post "review_courses/:course_id/create" => "review_courses#create"
  post "/requests/create" => "requests#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
