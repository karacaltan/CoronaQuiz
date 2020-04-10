Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :answers
      resources :questions do
        get '/answers_by_question', to: 'questions#answers_by_question'
      end
    end
  end

  get '/api/v1/questions/all/answers', to: 'api/v1/questions#all_answers'

end