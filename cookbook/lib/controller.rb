require_relative 'view'
require_relative 'cookbook'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.all
    @view = @view.display_recipes(recipes)
  end

  def create
    recipe = @view.user_recipe
    @cookbook.add_recipe(recipe)
  end

  def destroy
    index = @view.user_index - 1
    @cookbook.remove_recipe(index)
  end
end
