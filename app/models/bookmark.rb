# == Schema Information
#
# Table name: bookmarks
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  task_id     :integer
#  user_id     :integer
#
# Indexes
#
#  index_bookmarks_on_category_id  (category_id)
#  index_bookmarks_on_task_id      (task_id)
#  index_bookmarks_on_user_id      (user_id)
#
# Foreign Keys
#
#  category_id  (category_id => categories.id)
#  task_id      (task_id => tasks.id)
#  user_id      (user_id => users.id)
#
class Bookmark < ApplicationRecord
  belongs_to :task
  belongs_to :user
  belongs_to :category
end
