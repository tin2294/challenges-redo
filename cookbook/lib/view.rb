require_relative 'recipe'

class View
  def display_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}: #{recipe.description}"
    end
  end

  def user_index
    puts "Index?"
    return gets.chomp.to_i - 1
  end

  def user_recipe
    puts "Recipe Name?"
    print '>'
    name = gets.chomp

    puts 'What is the description of your recipe?'
    print '>'
    description = gets.chomp
    Recipe.new(name, description)
  end
end
