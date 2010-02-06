class CreateHome < ActiveRecord::Migration
  def self.up
  	Page.create!( :name=>"home", :navlabel=>"Home", :title=>"Welcome", :subtitle=>"This site will soon be filled with lots of cool functions." )
  end

  def self.down
  	Page.find_by_name('home').destroy
  end
end
