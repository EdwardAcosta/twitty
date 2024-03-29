
  Rails.application.routes.draw do
   
  root 'epicenter#feed'
  get 'epicenter/show_user'
  get 'epicenter/now_following'
  get 'epicenter/unfollow'
  get 'tag_tweets' => 'epicenter#tag_tweets'
  root 'epicenter#feed'


  get 'show_user' => 'epicenter#show_user'

  get 'now_following' => 'epicenter#now_following'

  get 'unfollow' => 'epicenter#unfollow'

  resources :tweets
  devise_for :users
  # somewhere within routes.rb

  get 'following' => 'epicenter#following'

  get 'followers' => 'epicenter#followers'

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # config/routes.rb

  
    root 'epicenter#feed'

  get 'all_users' => 'epicenter#all_users'

  # more routes down here...
end
