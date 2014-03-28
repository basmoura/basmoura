# coding: utf-8

require "Date"
require "colorize"

module Basmoura
  class BasmouraApi
    def curriculum
      clear
      puts "                            Breno Augusto Santana Moura".yellow

      puts "-" * 80
      puts "Informações Básicas".green
      basic_info
      contact_info.each { |k, v| puts "#{k.capitalize}: #{v}" }
      puts ""

      puts "Síntese de Qualificações".green
      qualifications
      puts ""

      puts "Idiomas".green
      languages.each { |k, v| puts "#{k.capitalize}: #{v}" }
      puts ""

      puts "Experiência Profissional".green
      professional_exp.each do |k, v|
        puts "#{v[:company].blue} #{v[:period].red}"
        puts v[:role]
        puts ""
      end

      puts "Projetos".green
      projects.each do |k, v|
        puts k.yellow
        v.values.each do |key, value|
          puts key[:project].blue
          puts key[:info]
          puts ""
        end
      end
      puts "-" * 80
    end

    private
    def basic_info
      puts "Brasileiro, Solteiro, #{age_calculate} anos"
    end

    def contact_info
      contact = { :telefone => "+55 (79) 8835-3428",
                  :github => "http://github.com/basmoura",
                  :email => "basmoura@gmail.com" }
    end

    def qualifications
      puts "- Cursando o sexto período da graduação em sistemas de informação;"
      puts "- Bons conhecimentos em Ruby on Rails, Java, C#, asp.net, HTML5, CSS3 e Scrum;"
      puts "- Experiência em desenvolvimento de sistemas em Ruby on Rails, asp.net e C#"
    end

    def professional_exp
      jobs = { :pop     => { :role => "Estágio na área de desenvolvimento com Ruby on Rails",
                             :period => "Nov 2013 - Atualmente",
                             :company => "Popcode Mobile Solutions" },

               :swx     => { :role => "Estágio na área de desenvolvimento com Ruby on Rails",
                             :period => "Out 2013 - Nov 2013",
                             :company => "SWX Softwares" },

               :grow    => { :role => "Estágio na área de desenvolvimento com Java e GWT",
                             :period => "Maio 2013 - Out 2013",
                             :company => "GrowBit Business Technology" },

               :code    => { :role => "Estágio na área de desenvolvimento com C# e ASP.NET",
                             :period => "Jul 2011 - Mar 2013",
                             :company => "Code2 Informática" },

               :tj      => { :role => "Estágio na área de redes e suporte",
                             :period => "Abr 2011 - Jun 2011",
                             :company => "Tribunal de Justiça do Estado de Sergipe" } }

    end

    def projects
      projects = { "Ruby on Rails" => { :dpu     => { :project => "Controle de patrimônio, contas e documentos.",
                                                      :info => "Defensoria Pública da União de Sergipe" },

                                        :ufs     => { :project => "Dia do Nutricionista - http://diadonutricionista.com.br/",
                                                      :info => "Universidade Federal de Sergipe" },

                                        :css     => { :project => "Contribuição para a gem 'css3-progress-bar-rails'",
                                                      :info => "https://github.com/yrgoldteeth/css3-progress-bar-rails/commits?author=basmoura" },

                                        :publify => { :project => "Contribuição para a gem 'Publify'",
                                                      :info => "https://github.com/publify/publify/commits?author=basmoura" },

                                        :solutio => { :project => "Contribuição para o projeto 'Solutio'",
                                                      :info => "https://github.com/coolmeia/solutio/commits?author=basmoura" } },

                   "ASP.NET C#"    => {  :cultura => { :project => "Sistema de Controle Acadêmico",
                                                       :info => "Cultura Inglesa de Sergipe" } } }
    end

    def languages
      languages = { :inglês => "Avançado",
                    :espanhol => "Básico",
                    :português => "Avançado" }
    end

    def age_calculate
      today = Date.today
      birthdate = Date.parse("27/09/1988")
      age = today.year - birthdate.year
      age = age - 1 if birthdate.month > today.month
    end

    def clear
      system('clear')
    end

  end
end
