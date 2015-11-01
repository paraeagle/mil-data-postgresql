class InventoryItem < ActiveRecord::Base
	validates_presence_of :spare_id
end
