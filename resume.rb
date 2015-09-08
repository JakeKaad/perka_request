require 'base64'

class Resume
  attr_accessor :base64_resume

  def initialize(resume_path)
    resume_pdf = File.binread(resume_path)
    @base64_resume = Base64.encode64(resume_pdf)
  end
end
