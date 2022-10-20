class ManagerSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :email, :phone_number, :password, :manager_id
end
