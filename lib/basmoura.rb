# coding: utf-8

require "basmoura/version"
require "basmoura/basmoura_api"

module Basmoura
  def self.show
    BasmouraApi.new.curriculum
  end
end
