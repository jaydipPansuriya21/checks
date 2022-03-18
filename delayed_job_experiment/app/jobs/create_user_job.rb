class CreateUserJob < ApplicationJob
  queue_as :medium

  def perform(user)
    user.create_user
  end
end
