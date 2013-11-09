Kramdown Denden
===============
[![Build Status](https://travis-ci.org/KitaitiMakoto/kramdown-denden.png?branch=master)](https://travis-ci.org/KitaitiMakoto/kramdown-denden)
[![Coverage Status](https://coveralls.io/repos/KitaitiMakoto/kramdown-denden/badge.png?branch=master)](https://coveralls.io/r/KitaitiMakoto/kramdown-denden?branch=master)

This is an extension for kramdown to parse [Den-Den Markdown][dendenmarkdown] format.

Den-Den Markdown is a Markdown extension for [EPUB 3.0 Content Documents][epub30-contentdocs], written by [@lostandfound][lostandfound] in PHP. Thanks for his great work! This library is a Ruby port of it.

Installation
------------

Add this line to your application's Gemfile:

    gem 'kramdown-denden'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kramdown-denden

Usage
-----

### Command-line tool

Use `kramdown` command with `DendenMarkdown` as input format.

Specifying Markdown file:

    $ kramdown -i DendenMarkdown path/to/document.md

Reading from standard input:

    $ echo '{電子出版|electronic publishing}' | kramdown -i DendenMarkdown
    <p><ruby>電子出版<rt>electronic publishing</rt></ruby></p>

### Ruby interface

Specify `DendenMarkdown` as input format like other formats:

```ruby
require 'kramdown/denden'

doc = Kramdown::Document.new('{電子出版|electronic publishing}', input: 'DendenMarkdown')
doc.to_html #=> "<p><ruby>電子出版<rt>electronic publishing</rt></ruby></p>\n"
```

See also
--------

* [Original Den-Den Markdown implementation in PHP][dendenmarkdown]

Development setup
-----------------

### Install Bundler

    $ gem install bundler

### Install dependent gems

    $ bundle install --path=vendor/bundle

### Run test

    $ bundle exec rake test

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[dendenmarkdown]: https://github.com/denshoch/DenDenMarkdown
[epub30-contentdocs]: http://www.idpf.org/epub/30/spec/epub30-contentdocs.html
[lostandfound]: https://github.com/lostandfound
