# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions"}
  resources :kudos
  devise_for :employees, path: 'employees', controllers: { sessions: "employees/sessions"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "kudos#index"
end
