module DisqusRails
  module Helper
    def disqus_tag(options = {})
      raise ::DisqusRails::Exception::RequiredArgumentsMissing unless DisqusRails.valid_settings?
      DisqusRails.embeded_code(options).html_safe
    end
  end
end
