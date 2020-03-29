Rails.application.routes.draw do
  devise_for :all_casa_admins
  resources :casa_orgs
  resources :case_updates
  resources :case_assignments
  resources :supervisor_volunteers
  devise_for :users
  root to: 'casa_cases#index' # needed for devise - not sure what this will actually end up being
  resources :casa_cases
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
