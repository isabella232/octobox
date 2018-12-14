# frozen_string_literal: true

class SyncAllUserNotificationsWorker
  include Sidekiq::Worker
  sidekiq_options queue: :sync_notifications,
    unique: :until_and_while_executing,
    on_conflict: :raise,
    retry: 2,
    lock_expiration: 20 * 60 # 20 mins

  def perform
    User.find_each(&:sync_notifications)
  end
end
