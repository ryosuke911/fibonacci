Rails.application.routes.draw do
  get '/fib', to: 'fib#index'
end
