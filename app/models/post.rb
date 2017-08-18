class Post < ActiveRecord::Base
    belongs_to :user
    belongs_to :category
    has_many :comments
    validates :category, presence: { message: "카테고리을 입력해주세요." }
    validates :title, presence: { message: "카테고리을 입력해주세요." }
    validates :content, presence: { message: "카테고리을 입력해주세요." }
end
