# frozen_string_literal: true
# encoding: utf-8

require "open3"

Gem::Specification.new do |spec|
  spec.name = "hitchens-theme"
  spec.version = "0.8.0"
  spec.authors = ["Pat Dryburgh"]
  spec.email = ["hello@patdryburgh.com"]

  spec.summary = "An inarguably well-designed theme for Jekyll."
  spec.homepage = "https://github.com/patdryburgh/hitchens"
  spec.license = "MIT"

  # tzhe following makes problems with conda. So I rewrote it.
  # spec.files = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  ls_files = ""

  Open3.popen3("git ls-files -z") do |stdin, stdout, stderr, thread|
    ls_files = stdout.read.chomp
  end

  spec.files = ls_files.split("\x0").select { |f|
    f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i)
  }

  spec.add_runtime_dependency "jekyll", "~> 4.4"

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
end
