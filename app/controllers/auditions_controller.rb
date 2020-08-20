class AuditionsController < ApplicationController

    def new
        @audition = Audition.new 
    end
    
    def create 
        @audition = Audition.new(audition_params)
        @audition.user_id = current_user.id
        if @audition.valid?
            @audition.save 
            redirect_to user_path(@audition.user_id)
        else
            render :new
        end
    end

    private

    def audition_params
        params.require(:audition).permit(
            :user_id, :job_id, :audition_status)
    end

end
