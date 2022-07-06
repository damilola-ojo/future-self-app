class MainController < ApplicationController
  def index
    @letter = current_user.letters.build
  end
end
