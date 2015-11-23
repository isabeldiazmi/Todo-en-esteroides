class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.boolean :completed
      t.string :tarea
    end
  end
end
