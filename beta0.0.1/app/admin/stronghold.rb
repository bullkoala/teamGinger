ActiveAdmin.register Stronghold do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :typeID, :provinceStrength, :familyHonor, :goldProduction, :keywords, :description, :clan
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
    form do |f|
    f.inputs "Stronghold Details" do
      f.input :title
      f.input :typeID
      f.input :provinceStrength
      f.input :familyHonor
      f.input :goldProduction
      f.input :keywords
      f.input :description
      f.input :clan
      
    end
    f.actions
  end


end
