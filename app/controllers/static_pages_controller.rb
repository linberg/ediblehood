class StaticPagesController < ApplicationController

  def index
  end

  def landing_page
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
        :to => 'linberg.dev@gmail.com',
        :subject => "A new contact form message from #{@name}",
        :body => @message).deliver_now
  end

end
