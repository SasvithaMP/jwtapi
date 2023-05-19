class TaskMailer < ApplicationMailer

    def assignment_email(task)
      @task = task
      mail(to: task.assignee.email, subject: 'Task Assignment')
    end
end
