def create
  Material.new
  if params[:status] == 'Open'
    material.status = material.statuses.open!
  end
  if material.save
    redirect_to material_path(@material)
    flash[:success] = 'Hooray'
  else
    flash[:error] = 'Error'
    redirect_to :back
  end
end