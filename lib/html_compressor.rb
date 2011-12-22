require 'html_compressor'

class NanocHtmlCompressor < Nanoc3::Filter
  identifier :html_compressor
  
  def initialize(options)
    @compressor = HtmlCompressor::HtmlCompressor.new
  end

  def run(content, params = {})
    @compressor.compress content
  end
end
