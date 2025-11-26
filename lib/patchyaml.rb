# frozen_string_literal: true

require "yaml"

require_relative "patchyaml/version"
require_relative "patchyaml/editor"
require_relative "patchyaml/anchors"
require_relative "patchyaml/find"
require_relative "patchyaml/query_parser"
require_relative "patchyaml/pipeline"

module PatchYAML
  class Error < StandardError; end

  def self.load(data)
    Editor.new(data.end_with?("\n") ? data : data.concat("\n"))
  end

  def self.load_file(path) = load(File.read(path))
end
