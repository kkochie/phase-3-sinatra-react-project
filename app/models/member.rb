class Member < ActiveRecord::Base
    belongs_to :team
    has_many :projects, through: :team

end