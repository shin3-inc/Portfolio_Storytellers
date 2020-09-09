class Users::InquiryController < ApplicationController
  def index
    # 入力画面を表示
    @inquiry = Inquiry.new
    @tour_provider = TourProvider.find(params[:tour_provider_id])
    @user = current_user
    render :action => 'index'
  end

  def confirm
  	@tour_provider = TourProvider.find(params[:tour_provider_id])
    @user = current_user
    # 入力値のチェック
    @inquiry = Inquiry.new(params[:inquiry].permit(:message))
    if @inquiry.valid?
      # OK→確認画面を表示
      render :action => 'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
  	@tour_provider = TourProvider.find(params[:tour_provider_id])
    @user = current_user
    @inquiry = Inquiry.new(params[:inquiry].permit(:message))
    InquiryMailer.inquiry_mail(@inquiry, @tour_provider, @user).deliver

    # 完了画面を表示
    render :action => 'thanks'
  end
end
