class SpotSerializer < ActiveModel::Serializer
  attributes :name, :tag, :address, :lnglat
end
