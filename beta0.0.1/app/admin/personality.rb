ActiveAdmin.register Personality do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :typeID, :strength, :chi, :goldCost, :familyHonorRequirement, :personalHonor, :keywords, :description, :clan
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
      form do |f|
    f.inputs "Personality Details" do
      f.input :title
      f.input :typeID
      f.input :strength
      f.input :chi
      f.input :goldCost
      f.input :familyHonorRequirement
      f.input :personalHonor
      f.input :keywords
      f.input :description
      f.input :clan
      
    end
    f.actions
  end


end
