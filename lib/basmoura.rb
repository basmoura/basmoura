# coding: utf-8

require "basmoura/version"
require "Date"
require "colorize"

module Basmoura
  def self.curriculum
    clear
    puts "                            Breno Augusto Santana Moura".yellow

    puts "-" * 80
    puts "Basic Info".green
    basic_info
    puts ""

    puts "Contact Info".green
    contact_info.each { |k, v| puts "#{k.capitalize}: #{v}" }
    puts ""

    puts "Qualifications".green
    qualifications
    puts ""

    puts "Languages".green
    languages.each { |k, v| puts "#{k.capitalize}: #{v}" }
    puts "-" * 80
  end

  private
  def self.basic_info
    puts "Brasileiro, Solteiro, #{age_calculate} anos"
  end

  def self.contact_info
    contact = { :phone => "+55 (79) 8835-3428",
                :github => "http://github.com/basmoura",
                :email => "basmoura@gmail.com" }
  end

  def self.qualifications
    puts "- Cursando o sexto período da graduação em sistemas de informação;"
    puts "- Bons conhecimentos em Ruby on Rails, Java, C#, asp.net, HTML5, CSS3 e Scrum;"
    puts "- Experiência em desenvolvimento de sistemas em Ruby on Rails, asp.net e C#"
  end

  def professional_exp

  end

  def self.languages
    languages = { :english => "Avançado",
                  :spanish => "Básico",
                  :portuguese => "Avançado" }
  end

  def self.age_calculate
    today = Date.today
    birthdate = Date.parse("27/09/1988")
    age = today.year - birthdate.year
    age = age - 1 if birthdate.month > today.month
  end

  def self.clear
    system('clear')
  end
end
