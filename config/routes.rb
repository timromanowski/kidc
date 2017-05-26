Rails.application.routes.draw do
  devise_for :parents
  root 'welcome#show'
end
