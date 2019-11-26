Rails.application.routes.draw do
  resources :jobs
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: { sessions: 'users/sessions' }

  root to: "jobs#index"
end

=begin
jobs GET    /jobs(.:format)                                                                          jobs#index
POST   /jobs(.:format)                                                                          jobs#create
GET    /jobs/new(.:format)                                                                      jobs#new
GET    /jobs/:id/edit(.:format)                                                                 jobs#edit
GET    /jobs/:id(.:format)                                                                      jobs#show
PATCH  /jobs/:id(.:format)                                                                      jobs#update
PUT    /jobs/:id(.:format)                                                                      jobs#update
DELETE /jobs/:id(.:format)                                                                      jobs#destroy


new_user_session GET    /users/sign_in(.:format)                                                 users/sessions#new
user_session POST   /users/sign_in(.:format)                                                     users/sessions#create
destroy_user_session DELETE /users/sign_out(.:format)                                            users/sessions#destroy
new_user_password GET    /users/password/new(.:format)                                           devise/passwords#new
edit_user_password GET    /users/password/edit(.:format)                                         devise/passwords#edit
user_password PATCH  /users/password(.:format)                                                   devise/passwords#update
PUT    /users/password(.:format)                                                                devise/passwords#update
POST   /users/password(.:format)                                                                devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)                                         devise/registrations#cancel
new_user_registration GET    /users/sign_up(.:format)                                           devise/registrations#new
edit_user_registration GET    /users/edit(.:format)                                             devise/registrations#edit
user_registration PATCH  /users(.:format)                                                       devise/registrations#update
PUT    /users(.:format)                                                                         devise/registrations#update
DELETE /users(.:format)                                                                         devise/registrations#destroy
POST   /users(.:format)                                                                         devise/registrations#create