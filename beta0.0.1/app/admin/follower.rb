ActiveAdmin.register Follower do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :typeID, :strength, :chi, :personalHonor, :goldCost, :honorRequirement, :keywords, :description, :focus
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
    form do |f|
    f.inputs "Follower Details" do
      f.input :title
      f.input :typeID
      f.input :strength
      f.input :chi
      f.input :personalHonor
      f.input :goldCost
      f.input :honorRequirement
      f.input :keywords
      f.input :description
      f.input :focus
            
    end
    f.actions
  end

end