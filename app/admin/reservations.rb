ActiveAdmin.register Reservation do
  permit_params :date, :time, :user_id, :product_id

  # 一覧ページの検索条件削除
  remove_filter :reservation

  # 一覧ページの検索条件指定
  filter :name
  filter :date
  filter :time
  filter :product_name
  filter :price
  filter :created_at
  filter :updated_at

  # or
  #
  # permit_params do
  #   permitted = [:date, :time, :user_id, :product_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
