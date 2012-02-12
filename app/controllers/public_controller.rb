class PublicController < ApplicationController
  caches_page   :index
  caches_action :index

  def index
    expires_in 1.day, public: true
    fresh_when last_modified: 1.day.ago, public: true
  end
end
