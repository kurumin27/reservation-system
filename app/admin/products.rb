ActiveAdmin.register Product do

  # 一覧ページの検索条件削除
  remove_filter :reservation
  # 一覧ページの検索条件指定
  filter :product_name
  filter :price
  filter :created_at
  filter :updated_at

  # or
  # permit_params do
  #   permitted = [:product_name, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
