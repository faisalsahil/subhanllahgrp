class UserMailer < ActionMailer::Base
  default :from => "hmz.industry@gmail.com"

  def registration_confirmation(name,email,message)
  	@name = name
  	@message = message
  	@email = email
    mail(:to => "hmz.industry@gmail.com", :subject => "HMZ Food Comment")
  end

end
