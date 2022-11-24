class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def search
    if params[:query].blank?
      redirect_to root_path and return
    else
      @parameter = params[:query].downcase
      @results = Dev.all.where('lower(profile) LIKE :search', search: "%#{@parameter}%")
    end
  end
end
