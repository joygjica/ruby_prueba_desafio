class Person
    attr_accessor :first_name, :last_name, :age
  
    def initialize(first_name, last_name, age)
      @first_name = first_name
      @last_name = last_name
      @age = age
    end

  
    def birthday
      @age += 1
    end
  
    def talk
      puts "¡#{saludo}!"
    end
  

    def introduce
      puts "¡#{saludar}!"
    end
  
    def saludo
      "Hola"
    end
  end
  

  puts "----------------------"


  class Student < Person
    def saludo
      "Aquí es la clase de programación con Ruby?"
    end

    def saludar
      "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end

  end
  
  class Teacher < Person
    def saludo
      "Bienvenidos a la clase de programación con Ruby!"
    end

    def saludar
     "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
  
  class Parent < Person
    def saludo
      "Aquí es la reunión de apoderados?"
    end

    def saludar
     "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name}
        #{@last_name}."
    end
  end
  

student = Student.new("Juan", "Pérez", 20)
student.talk 

teacher = Teacher.new("Ana", "García", 35)
teacher.talk

parent = Parent.new("José", "Pérez", 36)
parent.talk

puts "--------------"



student = Student.new("Juan", "Pérez", 20)
student.introduce 

teacher = Teacher.new("Ana", "García", 35)
teacher.introduce

parent = Parent.new("José", "Pérez", 36)
parent.introduce


