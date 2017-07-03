Rails.application.routes.draw do
  devise_for :users, skip: [:sessions, :registrations]
  devise_for :parents, path: 'parent', controllers: { sessions: "parents/sessions" }
  devise_for :children, path: 'child', controllers: { sessions: "children/sessions" }

  unauthenticated :users do
    root 'welcome#show', as: :unauthenticated_root
  end

  # routes only for users
  authenticated :parents, lambda {|u| u.type == "Parent"} do
    root 'parents#show', as: :parent_authenticated_root
  end

  # routes only for companies
  authenticated :children, lambda {|u| u.type == "Child"} do
    root 'children#show', as: :child_authenticated_root
  end

  resource :visitors, :only => :create

  resources :tasks
end
