class ChangeDeadlineToBeTimeInTasks < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :deadline, :time
  end
end
