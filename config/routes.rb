Rails.application.routes.draw do
  devise_for :users, :skip => :registrations
  devise_for :parents, :children, :skip => :sessions
  root 'welcome#show'

  # routes for all users
  authenticated :users do
  end

  # routes only for users
  authenticated :parents, lambda {|u| u.type == "Parent"} do
  end

  # routes only for companies
  authenticated :user, lambda {|u| u.type == "Child"} do
  end
end
