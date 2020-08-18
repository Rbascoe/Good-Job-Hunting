class JobsController < ApplicationController

    def new
        @job = Job.new
    end

    def create
        @job = Job.new(job_params)
        if @job.valid?
            @job.save
            session[:user_id] = @user.id
            redirect_to job_path(@job)
        else
            render :new
        end
    end

end
