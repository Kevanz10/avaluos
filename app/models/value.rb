class Value < ActiveRecord::Base
	has_many :evaluates
	accepts_nested_attributes_for :evaluates, allow_destroy: true
	belongs_to :rural
end
