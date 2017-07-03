class WelcomeController < ApplicationController
  def show
    @visitor = Visitor.new
  end

  def sign_up

  end
end
