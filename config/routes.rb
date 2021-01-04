Rails.application.routes.draw do
  
  root to: 'templates#home'
  get '/cursos', to: "templates#cursos"

  namespace :admin do
    resources :alunos, :cursos, :professores
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
