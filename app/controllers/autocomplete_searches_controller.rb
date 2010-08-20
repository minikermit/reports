class AutocompleteSearchesController < ApplicationController
  def Index

    @users = User.limit(10).search_for_name(params[:term])

    respond_to do |format|
      format.js   
    end
  end

end
