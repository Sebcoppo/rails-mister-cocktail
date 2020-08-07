class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
    @dose = Dose.find(params[:dose_id])
  end


# "plant_tag"=>{"tag"=>"5"},
# "commit"=>"Create Plant tag", "controller"=>"plant_tags", "action"=>"create", "plant_id"=>"4"}

  def create
    @dose = Dose.find(params[:dose_id])
    @ingredient = Ingredient.find(params[:dose][:ingredient])
    @dose.ingredients << @ingredient
    redirect_to cocktail_path(@dose.cocktail)
  end
end

end
