# coding: utf-8

require "basmoura/version"
require "basmoura/basmoura_api"
require "basmoura/basmoura_pdf"

module Basmoura
  def self.show
    BasmouraApi.new.curriculum
  end

  def self.pdf
    BasmouraPdf.new.generate
  end
end
