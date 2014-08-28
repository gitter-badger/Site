Rails.application.routes.draw do
  get 'home/index' =>'home#index'

  get 'home/aboutus' =>'home#aboutus'

  get 'home/contactus' =>'home#contactus'
  get '/members' =>'home#members'
  get '/gallery' =>'home#gallery'
  get '/inaugration' => 'home#inaugration'
  get '/walkathon' =>'home#walkathon'
  get '/inaugration' => 'home#inaugration'

  #devise_for :admins
  devise_for :admins, :controllers => { :omniauth_callbacks => "admins/omniauth_callbacks" }

  resources :post_attachments
  root :to => redirect('/home/index')
  resources :posts
  get 'check' => 'posts#check'
  get '/movie/index'=>'movie#index'
  get '/trumpet/index' => 'trumpet#index'
 
  get '/women/index' =>'women#index'
 						
  get '/vogue/index' =>'vogue#index'
end
