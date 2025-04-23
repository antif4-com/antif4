#!/usr/bin/env ruby

require "benchmark"

require "thor"
require "pastel"
require "tty-box"


class StaticSite < Thor

  no_commands do
    def stage(s)
      @pastel = Pastel.new if @pastel.nil?
      stage_start(@pastel.green ("Starting: ") + @pastel.white(s))
      @stage_duration = Benchmark.measure { yield }
      stage_end 
    end

    def stage_update(s=nil)
      @cur_stage = s unless s.nil?

      puts pretty_box(@cur_stage)

      @cur_stage = nil if s.nil?
    end

    def pretty_box(s, completed=false)
      # TODO: can't seem to get border control to work, I wanted to make clear
      #       start and stop boxes, the below would be the end box, for example.
      border = {top: false, top_right: false, right:false}

      TTY::Box.frame({border: border}) do
        s
      end
    end

    def stage_start(s)
      stage_update(s)
    end

    def stage_end
      stage_update(@pastel.green("Complete!") + 
                   @pastel.red(" Elapsed Time: #{format('%.2fs', @stage_duration.real)}"))
    end
  end

  desc "build", "build the antif4.com site. Generated site is placed in ./_site"
  def build
    stage ("Updating NPM packages") do 
      system "npm install"
    end 

    stage ("Updating CSS in jekyll assett dir") do
      system "./update_css.sh"
    end

    stage ("Building jekyll site") do
      system "bundle exec jekyll build"
    end
  end

  desc "server", "runs the local developer server"
  def server
    build

    system ("bundle exec jekyll server --livereload")
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
