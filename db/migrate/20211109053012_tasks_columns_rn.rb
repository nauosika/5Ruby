class TasksColumnsRn < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :address
  end
end
