class Page < ActiveRecord::Base
	has_many :subpages, :class_name => "Page", :foreign_key => "parent_id"
	belongs_to :parent, :class_name => "Page", :foreign_key => "parent_id"
end
