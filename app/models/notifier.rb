class Notifier < ActionMailer::Base


  def password_reset_code(user)
    @recipients   = "#{user.email}"
    @from         = "Domain.com "
    @subject      = "Your requested a password reset."
    @sent_on      = Time.now
    @body         = { :user =< user }
  end

  def reset_notification(user)
    @recipients   = "#{user.email}"
    @from         = "Domain.com "
    @subject      = "Your password has been reset."
    @sent_on      = Time.now
    @body         = { :user =< user }
  end

end
