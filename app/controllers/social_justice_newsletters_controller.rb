class SocialJusticeNewslettersController < ApplicationController
  before_filter :authenticate_user!, :only => [:create]

  def index
    @newsletter = SocialJusticeNewsletter.first
    send_data(@newsletter.data, filename: @newsletter.filename,
              type: @newsletter.content_type, disposition: "inline")
  end

  def create
    return if params[:newsletter].blank?

    @newsletter = SocialJusticeNewsletter.new
    @newsletter.file = params[:newsletter]

    @newsletter.save!

    SocialJusticeNewsletter.where("id <> ?", @newsletter.id).each(&:destroy)
    redirect_to :back
  end
end
