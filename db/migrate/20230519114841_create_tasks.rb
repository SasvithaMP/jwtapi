class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :status
      t.integer :assigned_id
      t.string :proof_files

      t.timestamps
    end
  end
end
