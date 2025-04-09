require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
 "Hello World"
end

get ("/zebra") do
   "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to start over"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end

get("/dice/2/10")
  first_die_10 = rand(1..10)
  second_die_ten = rand(1..10)
  sum_ten=first_die_10 + second_die_ten
  
  outcome_ten = "You rolled a #{first_die_10} and a #{second_die_ten} for a total of #{sum_ten}."
  
  #do I need the <h1> statement?
end

get("/dice/1/20")
  first_die_20 = rand(1..20)
  outcome_20= "You rolled #{first_die_20}."

  #<h1?>
end

get("/dice/5/4")
  first_die_4 = rand(1..4)
  second_die_4 = rand(1..4)
  third_die_4 = rand(1..4)
  fourth_die_4 = rand(1..4)
  fifth_die_4 = rand(1..4)

  sum_4 = first_die_4 + second_die_4 + third_die_4 + fourth_die_4 + fifth_die_4

outcome_4 = "You rolles a #{first_die_4}, #{second_die_4}, #{third_die_4}, #{fourth_die_4}, and #{fifth_die_4} for a total of #{sum_f4}"

  #<h1?>
end
