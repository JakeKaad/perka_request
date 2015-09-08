require './runner'

url = "https://api.perka.com/1/communication/job/apply"
headers = {"Content-Type" => "application/json",
           "Accept" => "application/json"}

runner = Runner.new(url, Runner.generate_body, headers )
runner.send_request
