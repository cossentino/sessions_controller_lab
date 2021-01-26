module ApplicationHelper

    def is_logged_in?
        if !!session[:name]
            !session[:name].empty?
        else
            false
        end
    end
end
