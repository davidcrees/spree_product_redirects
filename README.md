SpreeProductRedirects
=====================

When a product's permalink (url) is changed in the admin interface, any 
links from search engines to the old product url will break. This adversely 
affects SEO unless a 301 redirect is issued to redirect the user from an 
old product url to the current url.

This can be done in the webserver configuration file ... a task that is 
manual and error prone. 

This Spree extension stores old product permalinks and consults this list 
if a product cannot be found. It will issue a 301 redirect from all old 
permalinks to the new one.

To Do
-----

Write tests.


Installation
------------

Add spree_product_redirects to your Gemfile:

```ruby
gem 'spree_product_redirects'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_product_redirects:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_product_redirects/factories'
```

Copyright (c) 2014 [Davd Crees], released under the New BSD License
