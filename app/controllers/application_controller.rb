class ApplicationController < ActionController::Base

    def logged_in?
        !!session[:user_id]
    end

    helper_method :logged_in?

    def current_user
        if logged_in?
            return User.find(session[:user_id])
        else
            return nil
        end
    end

    helper_method :current_user

end
