class Page < ActiveRecord::Base
	acts_as_textiled :body
	acts_as_tree
	
	validates_presence_of :name, :navlabel
	validates_uniqueness_of :name, :navlabel
	validates_numericality_of :position
	
	#has_many :subpages, :class_name => "Page", :foreign_key => "parent_id"
	#belongs_to :parent, :class_name => "Page", :foreign_key => "parent_id"
end
