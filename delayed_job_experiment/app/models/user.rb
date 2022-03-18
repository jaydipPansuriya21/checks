class User < ApplicationRecord
    def send_form_to_collect_details
        puts "-------- start : Sending form to collect user details --------------"
        sleep 2
        puts "-------- end : Sending form to collect user details --------------"
    end

    def create_user
        puts "-------- start : Creating user from his/her details ------------------"
        sleep 3
        puts "-------- end : Creating user from his/her details ------------------"
    end

    def send_welcome_mail
        puts "--------- start : sending welcome mail ---------------------" 
        sleep 2
        puts "--------- end : sending welcome mail ---------------------"     
    end
end
