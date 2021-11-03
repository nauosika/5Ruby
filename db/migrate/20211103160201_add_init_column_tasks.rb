class AddInitColumnTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :address, :string
    add_column :tasks, :description, :string
    add_column :tasks, :end_at, :datetime
  end
end
