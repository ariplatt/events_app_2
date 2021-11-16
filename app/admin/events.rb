ActiveAdmin.register Event do
  permit_params :event_id, :event_name, :event_start_time, :event_start_date,
                :event_end_time, :event_end_date, :event_host_id, :event_host_name, :photo

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
end
