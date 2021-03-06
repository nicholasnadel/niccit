class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  scope :publicscope, -> { where(public: true) }
  scope :privatescope, -> { where(public: false) }
  scope :visible_to, -> (user) { user ? all : public }
end