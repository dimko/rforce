begin; require 'rforce/soap_response_nokogiri'; rescue LoadError; end
begin; require 'rforce/soap_response_expat';   rescue LoadError; end
require 'rforce/soap_response_rexml'


module RForce
  # Use the fastest XML parser available.
  SoapResponse =
    (RForce::const_get(:SoapResponseNokogiri) rescue nil) ||
    (RForce::const_get(:SoapResponseExpat) rescue nil)    ||
    SoapResponseRexml
end
