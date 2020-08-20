class AddAuditionStatusToAudition < ActiveRecord::Migration[6.0]
  def change
    add_column :auditions, :audition_status, :boolean
  end
end
