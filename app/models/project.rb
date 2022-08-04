class Project < ActiveRecord::Base

    belongs_to :team
    belongs_to :business
    has_many :tasks
    has_many :requests
    has_many :members, through: :team

end