class NanocCorrectHtml5 < Nanoc3::Filter
  identifier :correct_html5
  
  def run(content, params = {})
    content.gsub(/\{(\/?[a-z]+( [^\n\}]+)?)\}/, '<\1>').
            gsub(/^(?:<p>)?(<\/?(?:figure|section)[^>]*>)(?:<\/p>)?/, '\1')
  end
end
