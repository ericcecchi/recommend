# frozen_string_literal: true

# Helper methods for locales
module LocalesHelper
  # this is only so that the tests pass
  def local_url(image)
    return image unless !image.starts_with?('//') && !image.starts_with?('http://') && !image.starts_with?('https://')

    "/assets/images/#{image}"
  end
end
