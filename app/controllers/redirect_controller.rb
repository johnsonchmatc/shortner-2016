class RedirectController < ApplicationController
  def show
    #get slug from params
    slug = params[:id]
    #find the orginal url
    link = Link.find_by(slug: slug)
    if link
      #increment count
      link.count = link.count + 1
      link.save
      #redirect user
      redirect_to link.original
    else
      redirect_to root_url, notice: 'No link found'
    end
  end
end
