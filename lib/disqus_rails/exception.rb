module DisqusRails
  module Exception
    class RequiredArgumentsMissing < StandardError
      def initialize(msg = 'Required argument (disqus_shortname) is not given. Please set value for DisqusRails.disqus_shortname!')
        super(msg)
      end
    end
  end
end
