class MerchandiserSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :email, :phone_number, :password, :user_id, :manager_id
end
