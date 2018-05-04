Rails.application.routes.draw do
  get 'chatroom_users/create'
  get 'chatroom_users/destroy'
  get 'chatroom_users_controller/create'
  get 'chatroom_users_controller/destroy'
  devise_for :users

  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end
 #we use this to acces the join table and grab users by id
    #by changing the nested resources from purlar to singular..it saves the app from
    # crushing should user try to leave room that they didn't join.
 

  root to: 'chatrooms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
