class PublicController < ApplicationController
  caches_page   :index
  caches_action :index

  def index
    expires_in 1.year, public: true
    fresh_when last_modified: 1.year.ago, public: true
  end
end
