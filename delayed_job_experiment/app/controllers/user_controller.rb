class UserController < ApplicationController
  def index
  end

  def demo
    user1 =  User.create
    # we can override default priority by passing argument here
    # https://stackoverflow.com/questions/50414865/setting-priority-with-activejob-when-using-delayedjob
    # SendWelcomeMailJob.set(priority: 0).perform_later(user1)
    # SendWelcomeMailJob.set(wait: 20.seconds).perform_later(user1)
    # SendWelcomeMailJob.set(wait_until: Date.tomorrow.noon).perform_later(user1)
    # https://edgeguides.rubyonrails.org/active_job_basics.html
    SendWelcomeMailJob.perform_later(user1)
    CreateUserJob.perform_later(user1)
    AskInformationJob.perform_later(user1)
    render 'index'       
  end
end
