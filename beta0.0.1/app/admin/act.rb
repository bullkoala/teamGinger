ActiveAdmin.register Act do
  

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
  index do
    selectable_column
    id_column
    column :title
    column :typeID
    column :goldCost
    column :keywords
    column :description
    column :focus
    actions
  end

    filter :title
    filter :typeID
    filter :goldCost
    filter :keywords
    filter :description
    filter :focus


  form do |f|
    f.inputs "Act Details" do
      f.input :title
      f.input :typeID
      f.input :goldCost
      f.input :keywords
      f.input :description
      f.input :focus
    end
    f.actions
  end

end
