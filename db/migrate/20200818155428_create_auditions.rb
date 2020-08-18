class CreateAuditions < ActiveRecord::Migration[6.0]
  def change
    create_table :auditions do |t|
      t.integer :user_id
      t.integer :job_id

      t.timestamps
    end
  end
end
