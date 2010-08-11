class Signup < ActionMailer::Base
  

  def confirm(sent_at = Time.now)
    subject    'Signup#confirm'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

  def sent(sent_at = Time.now)
    subject    'Signup#sent'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

end
