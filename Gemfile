# frozen_string_literal: true

source "https://rubygems.org"
ruby "3.3.0"

gem "jekyll", "~> 4.4"
gem "kramdown-parser-gfm"
gem "sass-embedded", ">= 1.75"

group :jekyll_plugins do
  gem "jekyll-multiple-languages-plugin"
  gem "jekyll-paginate"
  gem "jekyll-sitemap"
  gem "jekyll-feed"
  gem "jekyll-seo-tag"
  gem "jekyll-sass-converter", "~> 3.0" # nutzt dart-sass (sass-embedded)  
end

gem "standard", group: [:development, :test]

group :development do
  gem "webrick"   # nur für `jekyll serve`, schadet nicht
end
