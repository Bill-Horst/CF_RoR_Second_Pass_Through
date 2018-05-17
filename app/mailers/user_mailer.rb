class UserMailer < ApplicationMailer
  def contact_form(email, name, message)
    @message = message
    mail(from: email,
      to: 'bill@billhorst.com',
      subject: "A new contact form message from #{name}")
    end
  end
#just created this UserMailer class and about to make the template on 5.3 abuout 4/5 down the page... "now there's one last step which is to..."
