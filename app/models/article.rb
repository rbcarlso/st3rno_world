class Article < ActiveRecord::Base
	
	belongs_to :category
	
	require_presence_of :title
	require_presence_of :content
	
	scope :active, where('active = ?', true)
	scope scope :alphabetical, order('title')
	
end
