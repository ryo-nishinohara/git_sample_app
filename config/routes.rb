Rails.application.routes.draw do
  get 'test/test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get "home/page_a" => "home#page_a"
get "home/page_b" => "home#page_b"
get "home/page_c" => "home#page_c"

end
