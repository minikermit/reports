class AutocompleteSearchesController < ApplicationController
  def index

    @users = User.limit(15).search_for_name(params[:term])

    respond_to do |format|
      format.js   { render :layout => false } 
    end
  end

end
