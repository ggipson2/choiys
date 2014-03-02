require 'net/smtp'

class PagesController < ApplicationController
		def home
		end

		def about
		end 

        def signup
            @user = Betauser.new(name: params[:name], email: params[:email])
            
            if @user.save
                render :status => 201, :text => "Sign up successful!"
            else
                if Betauser.where("email = ?", params[:email]).empty?
                    render :status => 400, :text => @user.errors.messages.values.flatten(1).collect { |x| x + "<br />" }.join()
                else
                    render :status => 200, :text => @user.errors.messages.values.flatten.join
                end
            end
        end
end