module Jekyll

  class SpeakerPage < Page
    def initialize(site, base, dir, speaker_data)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'speaker.html')
      self.data['speaker_data'] = speaker_data

      print speaker_data['test']

      self.data['title'] = "#{speaker_data['name']}"
    end
  end

  class CategoryPageGenerator < Generator
    safe false

    def generate(site)
      dir = 'speakers'

      site.data['speakers'].keys.each do |speaker_name_normal|
        speaker_data = site.data['speakers'][speaker_name_normal]
        site.pages << SpeakerPage.new(site, site.source, File.join(dir, speaker_name_normal), speaker_data)
      end
    end
  end

end