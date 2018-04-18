require 'sidekiq/testing'
require 'sidekiq_unique_jobs/testing'

Sidekiq::Testing.fake!
Sidekiq::Logging.logger = nil

def inline_sidekiq_status
  Sidekiq::Status.stubs(:status).returns(:complete)
  yield
ensure
  Sidekiq::Status.unstub(:status)
end

module SidekiqMinitestSupport
  def after_teardown
    Sidekiq::Worker.clear_all
    super
  end
end
