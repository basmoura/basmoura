# coding: utf-8

require "basmoura/basmoura_api"
require "prawn"

module Basmoura
  class BasmouraPdf
    def generate
      Prawn::Document.generate("basmoura.pdf", page_size: "A4") do
        basmoura = BasmouraApi.new
        text "Breno Augusto Santana Moura", size: 18, style: :bold, align: :center

        move_down 10
        basmoura.contact_info.each { |k, v| text "#{v}", align: :center }

        move_down 20
        text "Síntese de Qualificações", style: :bold, size: 12
        basmoura.qualifications.each { |v| text "#{v}", size: 10 }

        move_down 20
        text "Experiência Profissional", style: :bold, size: 12
        basmoura.professional_exp.each do |k, v|
          text "#{v[:company]}", style: :bold, size: 10
          text_box "#{v[:period]}", style: :bold, at: [380, cursor], size: 10
          text v[:role], size: 10
          move_down 5
        end

        move_down 20
        text "Projetos", style: :bold, size: 12
        basmoura.projects.each do |k, v|
          text "#{k}", style: :bold, size: 11
          v.values.each do |key, value|
            text "#{key[:project]}", style: :bold, size: 10
            text "#{key[:info]}", size: 10
            move_down 5
          end
        end
      end
      detect_os
    end

    def self.detect_os
      @os ||= (
        host_os = RbConfig::CONFIG['host_os']
        case host_os
        when /darwin|mac os/
          system('open basmoura.pdf')
        when /linux/
          system('xdg-open basmoura.pdf')
        else
          raise Error::WebDriverError, "unknown os: #{host_os.inspect}"
        end
      )
    end
  end
end
