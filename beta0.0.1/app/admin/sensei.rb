ActiveAdmin.register Sensei do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :typeID, :provinceStrength, :goldProduction, :familyHonor, :keywords, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
    form do |f|
    f.inputs "Sensei Details" do
      f.input :title
      f.input :typeID
      f.input :provinceStrength
      f.input :goldProduction
      f.input :familyHonor
      f.input :keywords
      f.input :description
      
    end
    f.actions
  end

end
