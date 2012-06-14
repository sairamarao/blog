class Review < ActiveRecord::Base
attr_accessible :title , :content ,:creator
	
	validates :title,:content,:creator ,:presence =>true
	validates :title,:length=>{ :minimum => 2}
	validates :title,:uniqueness =>true
end
