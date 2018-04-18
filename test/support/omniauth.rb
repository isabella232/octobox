# frozen_string_literal: true
OmniAuth.config.test_mode = true

OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new(
  'provider'    => 'github',
  'uid'         => 42,
  'info'        => { 'nickname' => 'douglas_adams' },
  'credentials' => { 'token' => SecureRandom.hex(20) }
)


module SignInHelper
  def sign_in_as(user)
    OmniAuth.config.mock_auth[:github].uid = user.github_id
    OmniAuth.config.mock_auth[:github].info = { 'nickname' => user.github_login }
    OmniAuth.config.mock_auth[:github].credentials.token = user.access_token
    Sidekiq::Testing.inline! do
      inline_sidekiq_status do
        post '/auth/github/callback'
      end
    end
  end
end
