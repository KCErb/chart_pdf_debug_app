Rails.application.routes.draw do
  root 'report#index'
  get '/report/preview' => 'report#report'
  post '/report/generate' => 'report#generate'
end
