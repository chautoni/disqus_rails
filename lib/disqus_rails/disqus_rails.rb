module DisqusRails
  class << self
    def valid_settings?
      respond_to?(:disqus_shortname) && disqus_shortname.present?
    end

    def embeded_code(options = {})
      %Q{
        <div id="disqus_thread"></div>
        <script type="text/javascript">
        /* * * CONFIGURATION VARIABLES * * */
        #{configuration_string(options)}

        /* * * DON'T EDIT BELOW THIS LINE * * */
        (function() {
           var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
           dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
           (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
        </script>
        <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
        <a href="http://disqus.com" class="dsq-brlink">blog comments powered by <span class="logo-disqus">Disqus</span></a>
      }
    end

    private
      def configuration_string(options = {})
        @attributes.inject('') do |result, attr|
          "#{result}var #{attr} = '#{send(attr)}';\n"
        end.concat(options.map { |variable, value| "var #{variable} = '#{value}';\n" }.join('')).html_safe
      end

      def method_missing(method, *args, &block)
        if method.to_s =~ /\A(.*)\=\z/
          attribute = $1.strip
          singleton_class.send(:attr_accessor, attribute)
          @attributes ||= []
          @attributes << attribute
          send(method, *args)
        else
          super
        end
      end
  end
end
