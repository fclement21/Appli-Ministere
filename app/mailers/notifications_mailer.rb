class NotificationsMailer < ActionMailer::Base

 # De qui ça part et vers qui ça arrive
  default :from => "florianclement21@gmail.com"
  default :to => "florianclement21@gmail.com"

  def new_message(message)
    @message = message
    # Sujet du mail
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end

end


