class TasksController < ApplicationController

  def create
      @user  = User.find_by_id(params[:user_id])
      @tasks = Task.where(status: 'Open').where.not(assignee_id: @user.id)
      @tasks.each do |task|
      TaskMailer.assignment_email(self).deliver_later
      end
  end

  private

  def task_params
    params.require(:task).permit(:name, :status, :assigned_to_id)
  end

  def send_assignment_email
    if assignee.present?
      TaskMailer.assignment_email(self).deliver_later
    end
  end
end
