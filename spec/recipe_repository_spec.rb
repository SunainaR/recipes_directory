require 'database_connection'
require 'recipe_repository'

def reset_recipes_table
  seed_sql = File.read('spec/seeds_recipes.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
  connection.exec(seed_sql)
end

describe RecipeRepository do
  before(:each) do 
    reset_recipes_table
  end

  it "returns two Recipes" do
    repo = RecipeRepository.new
    recipes = repo.all
    expect(recipes.length).to eq 2
    
    expect(recipes[0].id).to eq "1"
    expect(recipes[0].name).to eq 'Spaghetti'
    expect(recipes[0].average_cook_time).to eq '15'
    expect(recipes[0].rating).to eq '4'

    expect(recipes[1].id).to eq "2"
    expect(recipes[1].name).to eq 'Dal'
    expect(recipes[1].average_cook_time).to eq '20'
    expect(recipes[1].rating).to eq '5'
  end

  it "returns one recipe using find method" do
    repo = RecipeRepository.new
    recipe = repo.find(1)
    expect(recipe.id).to eq "1"
    expect(recipe.name).to eq 'Spaghetti'
    expect(recipe.average_cook_time).to eq '15'
    expect(recipe.rating).to eq '4'
  end
end