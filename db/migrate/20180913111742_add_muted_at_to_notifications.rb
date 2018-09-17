class AddMutedAtToNotifications < ActiveRecord::Migration[5.2]
  def change
    unless column_exists?(:notifications, :muted_at)
      add_column :notifications, :muted_at, :datetime, null: true
    end

    unless index_exists?(:notifications, :muted_at)
      add_index :notifications, :muted_at
    end
  end
end
