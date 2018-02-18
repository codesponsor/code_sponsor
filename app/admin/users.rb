ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation

  sidebar "Project Details", only: [:show, :edit] do
    ul do
      li link_to "Properties", admin_user_properties_path(resource)
      li link_to "Campaigns", admin_user_campaigns_path(resource)
    end
  end

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
