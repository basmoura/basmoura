# coding: utf-8

require "colorize"
require "basmoura/api"

module Basmoura
  class Console
    def self.show
      api = Api.new
      api.clear
      puts "Breno Augusto Santana Moura".yellow
      puts "=" * 40

      api.contact_info.each { |k, v| puts "#{k.capitalize}: #{v}" }
      puts ""

      puts "Skills Summary".green
      api.skill_sumary.each { |v| puts v }
      puts ""

      puts "Employment History".green
      api.professional_exp.each do |k, v|
        puts "#{v[:company].blue} #{v[:period].red}"
        puts v[:role]
        puts ""
      end

      puts "Open Source Projects".green
      api.projects.each do |k, v|
        puts k.yellow
        v.values.each do |key, value|
          puts key[:project].blue
          puts key[:info]
          puts ""
        end
      end
    end
  end
end
