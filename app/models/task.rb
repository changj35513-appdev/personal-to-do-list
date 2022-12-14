# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  content     :text
#  deadline    :datetime
#  important   :boolean
#  state       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  user_id     :integer
#
# Indexes
#
#  index_tasks_on_category_id  (category_id)
#  index_tasks_on_user_id      (user_id)
#
# Foreign Keys
#
#  category_id  (category_id => categories.id)
#  user_id      (user_id => users.id)
#
class Task < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookmarks, :dependent => :delete_all

  enum status: { pending: "pending", rejected: "rejected", accepted: "accepted" }

  

end
