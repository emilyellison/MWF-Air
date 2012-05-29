Air::Application.routes.draw do
  
  root to: 'flights#index'
  
  get '/mockup' => 'pages#home', :as => :mockup
  get '/help' => 'pages#help', :as => :help
  
  resources :flights, only: [ :index ] 
  resources :reservations
  resources :users, only: [ :new, :create, :show ]
  get 'log_in' => 'sessions#new', as: :log_in
  post 'sessions' => 'sessions#create', as: :sessions
  get 'log_out' => 'sessions#destroy', as: :log_out
  
end
