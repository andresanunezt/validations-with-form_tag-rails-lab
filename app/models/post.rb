class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 100}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
        message: "%{value} not a valid category. Category must either be Fiction or Non-Fiction."}
end
