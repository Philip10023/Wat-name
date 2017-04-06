require 'sinatra'
require_relative 'config/application'
require 'zlib'
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

helpers do
  def current_user
    if @current_user.nil? && session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
      session[:user_id] = nil unless @current_user
    end
    @current_user
  end
end
get "/" do
  redirect "/meetups"
end

get '/meetups' do
  @meetups = Meetup.all
  erb :'meetups/index'
end
get '/auth/github/callback' do
  user = User.find_or_create_from_omniauth(env['omniauth.auth'])
  session[:user_id] = user.id
  flash[:notice] = "You're now signed in as #{user.username}!"

  redirect '/'
end

get '/sign_out' do
  session[:user_id] = nil
  flash[:notice] = "You have been signed out."

  redirect '/'
end

get '/meetups/form' do
  erb :'meetup_form'
end

get '/meetups/:id' do
  @meetup = Meetup.find(params[:id])
  erb :'meetups/show'
end

post "/meetups/:uid" do
@meetup = Meetup.find(params[:uid])
user = current_user
UserMeetup.create!(
user_id: user.id,
meetup_id: @meetup.mid
)
redirect '/meetups'
end

post "/meetups" do
  # binding.pry
  meetup = params[:meetups]
  description = params[:description]
  mid = params[:mid]
  attendees = params[:attendees]
  Meetup.create(
  name: meetup,
  description: description,
  mid: mid,
  attendees: attendees
  )

  redirect "/meetups"
  end
