require './resume'
require './request'

require 'json'

class Runner
  def initialize(perka_uri, body, headers)
    @request = Request.new(perka_uri, body, headers)
  end

  def send_request
    request.send
  end

  def self.generate_body
    resume_formatter = Resume.new("Sept-2015-Resume.pdf")
    resume = resume_formatter.base64_resume
    JSON.generate({
      first_name: "Jake",
      last_name: "Kaad",
      email: "kaadalac@gmail.com",
      position_id: "GENERALIST",
      explanation: "Simple Ruby application with a runner class, request class and resume class for encoding the resume",
      projects: [
        "https://github.com/JakeKaad/fair_share_sample",
        "https://github.com/JakeKaad/HelpQueue",
        "https://github.com/JakeKaad/material_camera",
        "https://github.com/JakeKaad/command_line_resume"
      ],
      source: "Friend",
      resume: resume
    })
  end
end



