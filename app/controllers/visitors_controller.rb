class VisitorsController < ApplicationController
  def create
     @visitor = Visitor.new(params.require(:visitor).permit(:email))
    @visitor.save
    respond_to do |f|
      f.html { redirect_to unauthenticated_root_path }
      f.js { render js: "$('#email_form').hide();$('.email_txt').text('Thank you for your interest')" }
    end
  end
end