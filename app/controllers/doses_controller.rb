class DosesController < ApplicationController
  
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(params[:dose][:ingredient]) if Ingredient.exists?(params[:dose][:ingredient])
    @dose = Dose.new(dose_params)
    @dose.amount = params[:dose][:amount]
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end
 
  private

  def dose_params
    params.require(:dose).permit(:description)
  end

end
