# frozen_string_literal: true
# encoding: utf-8

require "open3"

Gem::Specification.new do |spec|
  spec.name        = "hitchens-theme"
  spec.version     = "0.8.0"
  spec.authors     = ["Pat Dryburgh"]
  spec.email       = ["hello@patdryburgh.com"]
  spec.summary     = "An inarguably well-designed theme for Jekyll."
  spec.homepage    = "https://github.com/patdryburgh/hitchens"
  spec.license     = "MIT"

  # Dateien per git ls-files holen (null-separiert), Encoding hart auf UTF-8 setzen
  files = ""
  begin
    output, status = Open3.capture2("git", "ls-files", "-z")
    if status.success?
      files = output.force_encoding("UTF-8")
    end
  rescue => _e
    # stiller Fallback unten
  end

  list =
    if !files.empty?
      files.split("\x0")
    else
      # Fallback ohne git: greife direkt aus dem Arbeitsverzeichnis
      Dir.glob(
        %w[
          assets/**/*      _layouts/**/*   _includes/**/*  _sass/**/*
          LICENSE*         README*
        ],
        File::FNM_DOTMATCH
      ).reject { |f| File.directory?(f) }
    end

  spec.files = list.grep(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i)

  spec.add_runtime_dependency "jekyll", "~> 4.4"

  # Dev-Abhängigkeiten modern halten (verhindert Konflikte mit sass-embedded >= 1.63.4)
  spec.add_development_dependency "bundler", ">= 2.1", "< 3.0"
  spec.add_development_dependency "rake",    ">= 13",  "< 14"
end