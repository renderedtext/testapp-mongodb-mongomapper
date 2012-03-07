class Product
  include MongoMapper::Document

  key :name, String
  key :description, String
  key :price, Float

  validates_presence_of :name
  validates_presence_of :price

end
