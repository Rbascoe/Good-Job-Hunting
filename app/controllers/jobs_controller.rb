class JobsController < ApplicationController

    def index
        @jobs = Job.all
    end

    def show
        @job = Job.find(params[:id])
    end

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

    def destroy
        id = params[:id]
        Job.destroy(id)
        redirect_to jobs_path
    end

    private

    def job_params
        params.require(:job).permit(:title, :description, :location, :salary)
    end

end
