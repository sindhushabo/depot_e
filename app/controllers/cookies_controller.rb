class CookiesController < ApplicationController
  def index
    cookies[:the_name] = { :value =>'Web',	:expires => 120.days.from_now}
    cookies[:the_time] = Time.now.to_s;
    redirect_to :action => "next_visit"
  end
  def next_visit
    cookie_value = cookies[:the_time]
    cookie_string = cookies[:the_name]
    render(:text => "The last time you visited was #{cookie_value} #{cookie_string}")
    #
  end
end