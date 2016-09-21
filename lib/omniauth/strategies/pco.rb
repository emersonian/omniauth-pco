require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Pco < OmniAuth::Strategies::OAuth2
      option :name, 'pco'
      option :client_options, site: 'https://api.planningcenteronline.com'
      
      uid { 
        user_info['id']
      }
      
      info do 
        {
          first_name: user_info['attributes']['first_name'],
          last_name: user_info['attributes']['last_name'],
          avatar_url: user_info['attributes']['avatar']
        }
      end
      
      extra do
        {
          :raw_info => raw_info
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/people/v2/me?include=emails,phone_numbers').body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

      def user_info
        @user_info ||= raw_info.nil? ? {} : raw_info['data']
      end
    end
  end
end
