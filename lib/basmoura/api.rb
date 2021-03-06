# coding: utf-8

module Basmoura
  class Api
    def contact_info
      contact = { :phone  => "+55 (79) 8835-3428",
                  :github => "http://github.com/basmoura",
                  :email  => "basmoura@gmail.com" }
    end

    def skill_sumary
      %w(Ruby\ /\ Ruby\ on\ Rails Java C#\ /\ ASP.NET HTML\ /\ CSS\ /\ JavaScript GIT Scrum)
    end

    def professional_exp
      jobs = { :jaya    => { :role    => "Software Developer",
                             :tasks   => ["- Full application development using Ruby on Rails, Java and Shell Script"],
                             :period  => "Jun 2014 - Today",
                             :company => "Jaya Apps" },

               :pop     => { :role    => "Ruby on Rails Developer",
                             :tasks   => ["- Full application development using Ruby on Rails",
                                          "- Full webservice development and integration with push notifications server for Android and iOS systems"],
                             :period  => "Nov 2013 - May 2014",
                             :company => "Popcode Mobile Solutions" },

               :swx     => { :role    => "Ruby on Rails Developer Trainee",
                             :tasks   => ["- Creation and improvement of features", "- Code refactoring"],
                             :period  => "Oct 2013 - Nov 2013",
                             :company => "SWX Softwares" },

               :grow    => { :role    => "Web Developer Trainee",
                             :tasks   => ["- Websites development using HTML, CSS and JavaScript"],
                             :period  => "Apr 2013 - Oct 2013",
                             :company => "GrowBit Business Technology" },

               :code    => { :role    => "C# and ASP.NET Trainee",
                             :tasks   => ["- Development of websites and systems using ASP.NET;",
                                          "- Development of desktop applications and plugins  using C#"],
                             :period  => "Jun 2011 - Mar 2013",
                             :company => "Code2" } }
    end

    def projects
      projects = { "Ruby on Rails" => { :css          => { :project => "Css3-progress-bar-rails",
                                                           :info    => "https://github.com/yrgoldteeth/css3-progress-bar-rails/commits?author=basmoura" },

                                        :publify      => { :project => "Publify",
                                                           :info    => "https://github.com/publify/publify/commits?author=basmoura" },

                                        :solutio      => { :project => "Solutio",
                                                           :info    => "https://github.com/coolmeia/solutio/commits?author=basmoura" },

                                        :postmon_ruby => { :project => "PostmonRuby",
                                                           :info    => "https://github.com/PostmonAPI/postmon-ruby/commits?author=basmoura" },

                                        :postmon_cli  => { :project => "PostmonCLI",
                                                           :info    => "https://github.com/PostmonAPI/postmon-cli/commits?author=basmoura" },

                                        :tdd          => { :project => "TDD-Ruby",
                                                           :info    => "https://github.com/basmoura/TDD-Ruby" },

                                        :basmoura     => { :project => "Basmoura CV Generator",
                                                           :info    => "https://github.com/basmoura/basmoura" } } }
    end

    def languages
      languages = { :inglês    => "Fluent",
                    :espanhol  => "Basic",
                    :português => "Fluent" }
    end

    def clear
      system('clear')
    end
  end
end
