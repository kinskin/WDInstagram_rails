Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'instagrams#index'
  get '/instagrams/new_posts' => 'instagrams#new_posts', as: 'new_instagram_posts'
  get '/instagrams/new_videos' => 'instagrams#new_videos', as: 'new_instagram_videos'
  get '/instagrams/new_texts' => 'instagrams#new_texts', as: 'new_instagram_texts'
  post '/instagrams/posts' => 'instagrams#create_posts'
  post '/instagrams/videos' => 'instagrams#create_videos'
  post '/instagrams/texts' => 'instagrams#create_texts'
  get '/instagrams/posts/:id' => 'instagrams#show_post' , as: 'instagram_post'
  get 'instagrams/videos/:id' => 'instagrams#show_video' , as: 'instagram_video'
  get '/instagrams/texts/:id' => 'instagrams#show_text' , as: 'instagram_text'
  get '/instagrams/:id/edit_post' => 'instagrams#edit', as: 'edit_post_instagram'
  get '/instagrams/:id/edit_video' => 'instagrams#edit_video', as: 'edit_video_instagram'
  get '/instagrams/:id/edit_text' => 'instagrams#edit_text', as: 'edit_text_instagram'
  patch '/instagrams/posts/:id' => 'instagrams#update'
  patch 'instagrams/videos/:id' => 'instagrams#update_video'
  patch 'instagrams/texts/:id' => 'instagrams#update_text'
  delete '/instagrams/posts/:id' => 'instagrams#destroy'
  delete '/instagrams/videos/:id' => 'instagrams#destroy_video'
  delete '/instagrams/texts/:id' => 'instagrams#destroy_text'


end