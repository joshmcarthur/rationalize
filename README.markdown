Rationalize
===========

....is a Redis-backed web front end for all of your Rails translations (I18n).

Installation
------------

1. If not already installed, install redis - Linux `[package tool (apt-get, yum etc) install redis-server`. Mac `brew install redis`
2. Add to your Gemfile - `gem 'rationalize', :git => 'https://github.com/joshmcarthur/rationalize.git`
3. `bundle install`
... and that's it!

Usage
-----

When your run `rails server`, Rationalize automatically mounts itself at /_rationalize/. It also initializes I18n differently than the default in Rails, to first use Redis to look up I18n keys, and fall back on the normal YAML file if it can not be found.

To Do
-----

* Authentication - HTTP Basic will do (and/or perhaps local access only)
* Testing
* Pretty styles (If you're keen to do this, just fork and fill out `public/stylesheets/rationalize.css`

Acknowledgements
----------------

* Pretty much this entire engine was build to tutorial at [Railscasts](http://railscasts.com/episodes/256-i18n-backends)
* Rails engines don't have their own generator yet, as far as I know. To this end, [krschacht's Rails 3 engine structure](https://github.com/krschacht/rails_3_engine_demo) was very handy.
