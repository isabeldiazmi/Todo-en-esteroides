class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

	def index(tasks)
    tasks.each_with_index do |task, index|
      if task.completed == true
        puts "#{index + 1}. [X] #{task.tarea}"
      else
        puts "#{index + 1}. [ ] #{task.tarea}"
      end
    end
	end

  def create
  end

  def delete
  end

  def update
  end

	def error
	end
end
