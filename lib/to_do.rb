class Task
  @@tasks = []

  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@tasks
  end

  define_method(:save) do
    @@tasks.push(self)
  end

  define_singleton_method(:clear) do
    @@tasks = []
  end

end
