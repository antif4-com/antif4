#!/usr/bin/env ruby

require "thor"


class StaticSite < Thor

  desc "build", "build the antif4.com site. Generated site is placed in ./_site"
  def build
    system "./update_css.sh"
    system "bundle exec jekyll build"
  end

  desc "server", "runs the local developer server"
  def server
    build

    exec("bundle exec jekyll serve --livereload")
  end

  desc "package", "builds and packages the site to deploy"
  def package
    build

    system "./build_deploy.sh"
  end

  desc "deploy", "deploys the server"
  def deploy
    puts "deploy"
  end

end

StaticSite.start(ARGV)
