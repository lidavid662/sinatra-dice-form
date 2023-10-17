require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll") do
  @ndice=params.fetch("dice").to_i
  @sides=params.fetch("sides").to_i

  @rolls = []

  @ndice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end
  erb(:process)
end
