class AskInformationJob < ApplicationJob
  queue_as :high

  def perform(user)
    user.send_form_to_collect_details
  end
end
