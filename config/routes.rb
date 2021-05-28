Rails.application.routes.draw do
  devise_for :users, path: 'users', controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    confirmations: "users/confirmations",
    passwords: "users/passwords",
    unlocks: "users/unlocks"
  }
  devise_for :students, path: 'students', controllers: {
    sessions: "students/sessions",
    registrations: "students/registrations",
    confirmations: "students/confirmations",
    passwords: "students/passwords",
    unlocks: "students/unlocks"
  }
  root to: 'pages#home'
  resources :tickets, only: [:index, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
