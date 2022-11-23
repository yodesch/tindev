class PagesController < ApplicationController
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
