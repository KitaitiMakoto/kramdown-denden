require_relative 'helper'

class TestDendenMarkdown < Test::Unit::TestCase
  data {
    data_set = {}
    Pathname.glob(File.join(__dir__, 'fixtures/markdown/**/*.md')).each do |md_path|
      label = md_path.sub_ext('').to_s.sub(File.join(__dir__, 'fixtures/markdown/'), '')
      html_path = md_path.sub_ext('.html')
      data_set[label] = [md_path, html_path]
    end
    data_set
  }
  def test_convert(data)
    md_path, html_path = data
    assert_equal html_path.read, convert(md_path.read)
  end

  private

  def convert(markdown)
    Kramdown::Document.new(markdown, input: 'DendenMarkdown').to_html
  end
end
