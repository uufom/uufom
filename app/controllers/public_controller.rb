class PublicController < ApplicationController
  caches_action :index

  def index
    expires_in 1.day, public: true
  end
end
