# coding: utf-8

require "basmoura/version"
require "basmoura/console"
require "basmoura/pdf"

module Basmoura
  def self.show
    Console.new.curriculum
  end

  def self.pdf
    BasmouraPdf.new.generate
  end
end
