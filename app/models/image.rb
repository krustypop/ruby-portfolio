class Image < ActiveRecord::Base
  has_one :image_descriptions
  belongs_to :categories

end
