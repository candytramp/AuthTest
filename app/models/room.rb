class Room < ActiveRecord::Base
	belongs_to :class_type
	has_and_belongs_to_many :groups
end
