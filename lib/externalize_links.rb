class NanocExternalizeLinks < Nanoc3::Filter
  identifier :externalize_links
  
  def run(content, params = {})
    content.gsub(/<a\s+href="https?:\/\/[^"]+"/, '\0 target="_blank"')
  end
end
