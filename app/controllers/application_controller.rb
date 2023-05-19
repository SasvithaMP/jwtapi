class ApplicationController < ActionController::API
    def encode_token(params)
        JWT.encode(params, 'secret')
    end
end
