class UserMailer < ApplicationMailer
  default from: "linberg.dev@gmail.com"

  def contact_form(email, name, message)
    @message = message
      mail(:from => email,
        :to => 'linberg.dev@gmail.com'
        :subject => "A new contact form message from #{name}")
  end
   
end
