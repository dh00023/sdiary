class Post < ActiveRecord::Base
    has_many :comments
    paginates_per 5
end
