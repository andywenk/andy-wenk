# frozen_string_literal: true

source "https://rubygems.org"
gemspec
ruby "3.2.2"

# for demo site
gem "jekyll-paginate"
gem "jekyll", "~> 4.4"
gem "kramdown-parser-gfm"
gem "jekyll-sitemap"
gem "jekyll-feed"
gem "jekyll-seo-tag"
gem "jekyll-sass-converter", "~> 3.0" # nutzt dart-sass (sass-embedded)

group :jekyll_plugins do
  gem "jekyll-multiple-languages-plugin"
end

gem "standard", group: [:development, :test]

group :development do
  gem "webrick"   # nur für `jekyll serve`, schadet nicht
end
