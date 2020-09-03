class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameters, if: :devise_controller?


  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name,:first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:phone_number,:profile_image,:tour_prefecture_id,:tour_city,:profile_information,:twitter_url,:facebook_url,:instagram_url,:blog_url])
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:last_name,:first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:phone_number,:profile_image,:tour_prefecture_id,:tour_city,:profile_information,:twitter_url,:facebook_url,:instagram_url,:blog_url])
  # end

 private
  def after_sign_in_path_for(resource)
  	case resource
	   when TourProvider
		    tour_providers_tour_providers_path
	   when User
	 	   root_path
  	end
  end

end
