#!/usr/bin/env ruby

require 'sinatra'

NUMBER_OF_ALBUMS = 100

set :port, 8080

get "/form" do
  erb :form
end

post "/list" do
  @sort_order = params[:order]
  @albums = []
  erb :list
end
