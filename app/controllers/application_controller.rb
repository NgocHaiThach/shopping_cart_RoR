class ApplicationController < ActionController::Base
    include SessionsHelper
    
    def hello
        render html: "hello word!"
    end
end
