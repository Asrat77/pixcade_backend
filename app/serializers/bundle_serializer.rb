class BundleSerializer < ActiveModel::Serializer
  attributes :id, :bundle_name, :bundle_price, :bundle_discount
end
