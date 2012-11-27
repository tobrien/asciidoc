module AsciiDoc
  
  class PassthroughElement < AsciiElement
    
    def parse(xml)
      @type = :passthrough
      @content = xml.text
    end
    
    # override render because a passthrough element has no children and always passes the text through
    def render(views, filter_results)
      @content
    end
    
  end
  
end