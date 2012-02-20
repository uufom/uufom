class Newsletter < ActiveRecord::Base
  def file=(attached)
    self.filename     = sanitize(attached.original_filename)
    self.content_type = attached.content_type
    self.data         = attached.read
  end

  private

  def sanitize(filename)
    File.basename(filename).gsub(/[^\w\.\-]/, "_")
  end
end
