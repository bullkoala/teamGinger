ActiveAdmin.register MonkShugenjaAttachment do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :typeID, :goldCost, :keywords, :description, :focus
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

      form do |f|
    f.inputs "Monk Shugenja Attachment Details" do
      f.input :title
      f.input :typeID
      f.input :keywords
      f.input :description
      f.input :focus
      f.input :goldCost
      
    end
    f.actions
  end


end

