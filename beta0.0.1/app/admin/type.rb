ActiveAdmin.register Type do


  # See permitted parameters documentation:e
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :typeName, :typeID
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
    form do |f|
    f.inputs "Type Details" do
      f.input :typeName
      f.input :typeID
    end
    f.actions
  end


end
