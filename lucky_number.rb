require "sinatra"
require "sinatra/reloader"

get("/") do
 "Hello World"
end

get ("/zebra") do
   "We must add a route for each path we want to support"
end

get("/giraffe") do
  "hopefully this shows up without having to start over"
end
