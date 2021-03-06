class Store
	include Mongoid::Document
	include Mongoid::Timestamps
	
	belongs_to :user
	has_many :items

	accepts_nested_attributes_for :items

	field :name,        type: String
	field :total_items, type: Float, default: 0

	validates :name, presence: true

	# index({ name: 'text' })

	# scope :name, -> { where(name: 'target') }
end