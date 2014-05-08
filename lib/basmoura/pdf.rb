# coding: utf-8

require "basmoura/api"
require "prawn"

module Basmoura
  class Pdf
    def self.generate
      Prawn::Document.generate("basmoura.pdf", page_size: "A4") do
        api = Api.new
        text "Breno Augusto Santana Moura", size: 18, style: :bold, align: :center

        move_down 10
        api.contact_info.each { |k, v| text "#{v}", align: :center }

        move_down 20
        text "Skill Summary", style: :bold, size: 12
        move_down 3
        api.skill_sumary.each { |v| text "- #{v}", size: 10 }

        move_down 20
        text "Employment History", style: :bold, size: 12
        move_down 3
        api.professional_exp.each do |k, v|
          text_box "#{v[:period]}", style: :bold, at: [415, cursor], size: 10, align: :right
          text "#{v[:company]}", style: :bold, size: 10
          text v[:role], style: :italic, size: 9
          move_down 2
          v[:tasks].map do |task|
            text task, size: 8, indent_paragraphs: 5
          end
          move_down 10
        end

        move_down 20
        text "Open Source Projects", style: :bold, size: 12
        api.projects.each do |k, v|
          text "#{k}", style: :bold, size: 10
          move_down 3
          v.values.each do |key, value|
            text "#{key[:project]}", style: :bold, size: 9, indent_paragraphs: 5
            text "#{key[:info]}", size: 9, indent_paragraphs: 5
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
