class Group < ActiveRecord::Base
	has_and_belongs_to_many :rooms
	has_and_belongs_to_many :subjects
	has_and_belongs_to_many :teachers
end
