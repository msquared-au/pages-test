module Jekyll

  # Returns the path to the specified asset.
  class HelloWorld < Liquid::Tag

    def render(context)
      "Hello, world!"
    end

  end
end

Liquid::Template.register_tag('asset_path', Jekyll::HelloWorld)
