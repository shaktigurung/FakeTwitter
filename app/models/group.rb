class Group < ApplicationRecord
    has_many :group_users
    has_many :users, through: :group_users

    def self.ruby_users
        find_by(name: "Ruby").users
    end
end
