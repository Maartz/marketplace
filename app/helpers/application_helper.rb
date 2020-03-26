module ApplicationHelper
    def author_of(resource)
        # Check if the user is signed in and if the resource id passed is the same as the current user ones
        user_signed_in? && resource.user_id == current_user.id
    end

    def admin?
        user_signed_in? && current_user.admin?
    end
end
