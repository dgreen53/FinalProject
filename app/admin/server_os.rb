ActiveAdmin.register ServerOs do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  permit_params :name, :description, :image

  show do
    attributes_table do
      row :image do |os|
        image_tag os.image.thumb
      end
      row :name
      row :description
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :image do |os|
      image_tag os.image.thumb
    end
    actions
  end

  index as: :grid do |os|
    a href: admin_server_o_path(os) do
      img src: image_path(os.image), alt: os.name
      div os.name
    end
  end
end
