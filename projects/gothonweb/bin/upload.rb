require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do
  erb :upload_form
end

post '/save_image' do

  @filename = params[:file][:filename]
  file = params[:file][:tempfile]

  File.open("./static/#{@filename}", "wb") do |f|
    f.write(file.read)
  end

  erb :show_image
end
