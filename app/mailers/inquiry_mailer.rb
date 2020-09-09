class InquiryMailer < ApplicationMailer


  default from: 'no-replay@gmail.com'

  def inquiry_mail(inquiry, tour_provider, user)
    @tour_provider = tour_provider
    email_with_name = %("#{@tour_provider.last_name} 様" <#{@tour_provider.email}> )
    @inquiry = inquiry
    @user = user

    mail(
    	to: email_with_name ,
    	subject: "お問い合わせ通知"
    	)
  end


end
