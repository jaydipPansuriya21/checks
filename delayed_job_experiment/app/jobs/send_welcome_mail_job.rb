class SendWelcomeMailJob < ApplicationJob
  queue_as :low

  def perform(user)
    user.send_welcome_mail
  end
end
