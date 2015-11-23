class TasksController
  def initialize(argv)
    @view = TasksView.new
    command = argv.shift #saca el primer elemento de arreglo para saber que accion hacer
    str = argv.join(" ") #une el resto de los elementos del arreglo en un string que es la tarea
    action(command, str) 
  end

  def index
    tasks = Task.all 
    @view.index(tasks)
  end

  def add(str)
    Task.create(completed: false, tarea: "#{str}")
    index
  end

  def delete(ind)
    tasks = Task.all 
    tasks[ind-1].delete
    index
  end

  def complete(ind)
    tasks = Task.all 
    tasks[ind-1].update(completed: true)
    index
  end

  def action(command, str)
    case command
    when "index"
      index
    when "add"
      add(str)
    when "delete"
      delete(str.to_i)
    when "complete"
      complete(str.to_i)
    else
      puts "Unexpected command"
    end
  end
end