Delayed::Worker.destroy_failed_jobs = false
Delayed::Worker.sleep_delay = 60
Delayed::Worker.max_attempts = 3
Delayed::Worker.max_run_time = 5.minutes
Delayed::Worker.read_ahead = 10
Delayed::Worker.default_queue_name = 'default'
Delayed::Worker.delay_jobs = !Rails.env.test?
Delayed::Worker.raise_signal_exceptions = :term
Delayed::Worker.logger = Logger.new(File.join(Rails.root, 'log', 'delayed_job.log'))
Delayed::Worker.queue_attributes = {
    default:        { priority: 15 },
    high:           { priority: 1 },
    medium:         { priority: 5},
    low:            { priority: 10 }
  }
Delayed::Worker.logger = Logger.new(File.join(Rails.root, 'log', 'dj.log'))

# commands to start background jobs : 
# start : bundle exec rake jobs:work
# stop : crt + c
# start : RAILS_ENV=production bin/delayed_job start (daemons gem needed)
# stop : RAILS_ENV=production bin/delayed_job stop (daemons gem needed)
# https://axiomq.com/blog/deal-with-long-running-rails-tasks-with-delayed-job/