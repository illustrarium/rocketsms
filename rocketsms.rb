require "uri"
require "net/http"
require "digest"


class Rocketsms
  def send(phone, text)
    @username = "USERNAME" # обычно это ваш УНП
    @password = "PASSWORD"
    @api_path = "http://api.rocketsms.by/simple/send"

    parameters = parameters_construct(phone, text) #make hash with URI parameters
    uri = URI.parse(@api_path) #make URI
    http = Net::HTTP.new(uri.host, uri.port) #make HTTP object with uri
    request = Net::HTTP::Post.new(uri.request_uri) #POST
    request.set_form_data(parameters) #set parameters
    response = http.request(request) #get response
    response = JSON.parse(response.body) #parse json response
    return response
  end

  def parameters_construct(phone, sms_text) 
    query_hash = {
        :username =>  @username,
        :password =>  Digest::MD5.hexdigest(@password),
        :text =>      sms_text,
        :phone =>     phone
    }
    return query_hash
  end
end
