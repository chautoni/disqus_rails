# disqus_rails

[![Build Status](https://travis-ci.org/chautoni/disqus_rails.png?branch=master)](https://travis-ci.org/chautoni/disqus_rails)

This gem provides:

  * Ansynchronous Disqus discussion integration into your Rails project

## Requirements

  * Rails 3.1 or later

## Installation

Add the `disqus_rails` gem to your Gemfile

```ruby
gem 'disqus_rails'
```

And run `bundle install`

## Getting Started

Set the `disqus_shortname` variable (will raise an exception if it has not been set)

```ruby
DisqusRails.disqus_shortname = 'my-staging-site'
```

Additional variables/configurations may be set also, please refer to [Disqus documentation](http://help.disqus.com/customer/portal/articles/472098-javascript-configuration-variables)

```ruby
DisqusRails.disqus_identifier = 'my-identifier'
DisqusRails.disqus_title = 'my-disqus_title'
DisqusRails.disqus_url = 'my-disqus_url'
```

Then embedding the `disqus_tag` into your view
```ruby
<%= disqus_tag %>
```

## Acknowledgements

  * [Disqus](https://http://disqus.com) for bringing about a nice cloud platform for discussion/comment system integration
  * [Norman Clarke](https://github.com/norman/disqus.git) for inspiring me the idea of this gem. (He also wrote a gem on Disqus, but for synchronous Disqus API)

## Contributing

Pull requests are more than welcome. Before submitting pull requests, please make sure your changes are covered with tests.

Copyright (c) 2011-2013 Thach Chau. Released under the MIT license