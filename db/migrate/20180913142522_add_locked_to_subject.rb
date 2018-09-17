class AddLockedToSubject < ActiveRecord::Migration[5.2]
  def change
    unless column_exists?(:subjects, :locked)
      add_column :subjects, :locked, :boolean
    end
  end
end
