ActiveAdmin.register Product do
  # belongs_to :reservation

  # 一覧ページの検索条件削除
  remove_filter :reservation
  # 一覧ページの検索条件指定
  filter :product_name
  filter :price
  filter :created_at
  filter :updated_at

  # 商品一覧
  permit_params :product_name, :price
  index do
    selectable_column
    id_column
    column :product_name
    column :price
    actions
  end

  # 商品新規登録/編集
  form do |f|
    panel '注意' do
      '商品を追加する場合、同一商品が既に存在しないか確認して下さい。<br>
      金額はコンマなしの半角数字のみ入力して下さい。'.html_safe
    end

    f.inputs do
      f.input :product_name
      f.input :price
    end
    f.actions
  end
  controller do
    def create
      Product.create(product_params)
      redirect_to admin_products_path
    end
    def updated
    end

    private
    def product_params
      params.require(:product).permit(:product_name, :price)
    end
  end

  # 商品詳細
  show do
    attributes_table do
      row :product_name
      row :price
    end
  end

  # or
  # permit_params do
  #   permitted = [:product_name, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
