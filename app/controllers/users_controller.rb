class UsersController < ApplicationController
    def show
        @user = current_user
        @bookmarks = Bookmark.where(user: current_user)
    end
end
