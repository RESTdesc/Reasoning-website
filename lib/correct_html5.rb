class NanocCorrectHtml5 < Nanoc3::Filter
  identifier :correct_html5
  
  def run(content, params = {})
    content.gsub(/^<p>(<figure>)|^(<\/figure>)<\/p>/, '\1\2')
  end
end
