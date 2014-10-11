require 'erb'

class PetCounter

  def initialize(data)
    @data = data
  end

  def create_file
    File.open(self.outfile_name, 'w') do |f|
      f.puts(
        ERB.new(File.read(self.template_name)).result(binding)
      )
    end
  end

  def outfile_name
    File.expand_path(
      "../../index.html",
      __FILE__
    )
  end

  def template_name
    File.expand_path('../templates/template.html', __FILE__)
  end

end