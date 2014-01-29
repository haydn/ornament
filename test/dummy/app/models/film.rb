class Film < ActiveRecord::Base

  attr_accessible :category_id, :name, :synopsis

  belongs_to :category

  paginates_per 2

  validates :name, presence: true

end
