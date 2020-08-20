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
        @job.user_id = current_user.id 
        if @job.valid?
            @job.save 
            redirect_to job_path(@job)
        else
            render :new
        end
    end

    def destroy
        id = params[:id]
        Job.destroy(id)
        redirect_to user_path(current_user)
    end

    private

    def job_params
        params.require(:job).permit(:title, :description, :location, :salary, :user_id)
    end

end
