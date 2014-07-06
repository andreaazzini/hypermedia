# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   eate([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(namcities = City.cre: 'Emanuel', city: cities.first)

teachers_list = [
    [0, 'Francesca', 'Febbo', 32, '#', ''],
    [1, 'Umberto', 'Di Fabrizio', 41, '#', ''],
    [2, 'Francesco', 'Corsini', 38, '#', ''],
    [3, 'Francesco', 'Angelo', 50, '#', ''],
    [4, 'Valentina', 'Ceriani', 39, '#', '']
]

office_hours_list = [
    [0, 0, 'Monday', 10, 15],
    [1, 1, 'Wednesday', 11, 30],
    [2, 2, 'Friday', 17, 00],
    [3, 3, 'Tuesday', 10, 15],
    [4, 4, 'Monday', 10, 45],
]

school_classes_list = [
    [0, 1, 'A', 
        "<div id='hours' class='timetable-column'><div class='day'><h2>
        </h2></div><div class='prima-ora'><h2>
        08:20-09:15</h2></div><div class='seconda-ora'><h2>
        09:15-10:10</h2></div><div class='terza-ora'><h2>
        10:10-11:05</h2></div><div class='quarta-ora'><h2>
        11:20-12:15</h2></div><div class='quinta-ora'><h2>
        12:15-13:10</h2></div></div>
        
        <div class='timetable-column'><div class='day'><h2>
        Luned&igrave;</h2></div><div class='prima-ora'><p>
        Matematica</p></div><div class='seconda-ora'><p>
        Matematica</p></div><div class='terza-ora'><p>
        Storia</p></div><div class='quarta-ora'><p>
        Informatica</p></div><div class='quinta-ora'><p>
        Informatica</p></div></div>
        
        <div class='timetable-column'><div class='day'><h2>
        Marted&igrave;</h2></div>
        <div class='prima-ora'><p>
        Ed. Fisica</p></div><div class='seconda-ora'><p>
        Ed. Fisica</p></div><div class='terza-ora'><p>
        Geografia</p></div><div class='quarta-ora'><p>
        Lettere</p></div><div class='quinta-ora'><p>
        Lettere</p></div></div>
        
        <div class='timetable-column'><div class='day'><h2>
        Mercoled&igrave;</h2></div><div class='prima-ora'><p>
        Geografia</p></div><div class='seconda-ora'><p>
        Latino</p></div><div class='terza-ora'><p>
        Latino</p></div><div class='quarta-ora'><p>
        Matematica</p></div><div class='quinta-ora'><p>
        Fisica</p></div></div>
        
        <div class='timetable-column'><div class='day'><h2>
        Gioved&igrave;</h2></div>
        <div class='prima-ora'><p>
        Inglese</p></div><div class='seconda-ora'><p>
        Matematica</p></div><div class='terza-ora'><p>
        Fisica</p></div><div class='quarta-ora'><p>
        Informatica</p></div><div class='quinta-ora'><p>
        Scienze</p></div></div>
        
        <div class='timetable-column'><div class='day'><h2>
        Venerd&igrave;</h2></div>
        <div class='prima-ora'><p>
        Scienze</p></div><div class='seconda-ora'><p>
        Inglese</p></div><div class='terza-ora'><p>
        Storia</p></div><div class='quarta-ora'><p>
        Lettere</p></div><div class='quinta-ora'><p>
        Latino</p></div></div>
        
        <div class='timetable-column'><div class='day'><h2>
        Sabato</h2></div><div class='prima-ora'><p>
        Storia</p></div><div class='seconda-ora'><p>
        Geografia</p></div><div class='terza-ora'><p>
        Scienze</p></div><div class='quarta-ora'><p>
        Inglese</p></div><div class='quinta-ora'><p>
        Informatica</p></div></div>",
        "<p>Il Consiglio di Classe della classe Prima A, in attivit&agrave 
        dal 2 ottobre 2013 e per tutto l'Anno Scolastico 2013-2014, &egrave; 
        composto dai 2 alunni di seguito.</p><div class='student-1'></div>
        <div class='student'><h2>Gianluigi Buffon</h2><blockquote>Ogni buona 
        classe deve essere tutelata nei suoi diritti da una persona che sia 
        volenterosa di fare bene. Io sono quella persona.
        </blockquote></div>
        <div class='student-2'></div>
        <div class='student'><h2>Ilaria D'Amico</h2><blockquote>L'organizzazione 
        di una classe dipende principalmente dalla comunicazione degli 
        studenti con i professori. Sar&agrave; questo l'aspetto su cui lavorer&ograve; 
        maggiormente.
        </blockquote></div>"],
    [1, 1, 'B', "", ""],
    [2, 1, 'C', "", ""],
    [3, 2, 'A', "", ""],
    [4, 2, 'B', "", ""],
    [5, 2, 'C', "", ""],
    [6, 3, 'A', "", ""],
    [7, 3, 'B', "", ""],
    [8, 3, 'C', "", ""],
    [9, 4, 'A', "", ""],
    [10, 4, 'B', "", ""],
    [11, 4, 'C', "", ""],
    [12, 5, 'A', "", ""],
    [13, 5, 'B', "", ""],
    [14, 5, 'C', "", ""],
]

teaching_list = [
    [0, 0, 0, "matematica", 1],
    [1, 0, 1, "matematica", 0],
    [2, 0, 3, "matematica", 0],
    [3, 0, 4, "matematica", 0],
]

material_list = [
    [0, "Matematica.blu 1", "9788808111777", "Zanichelli"],
    [1, "Path Ways", "97888478111777", "Oxford Line"],
    [2, "Sulle Spalle Dei Giganti", "9733208111757", "Scuola Editore"],
    [3, "Geografia 1", "9788803411734", "Zanichelli"],
    [4, "La Fisica Di Amaldi", "9788808392847", "Zanichelli"],
    [5, "Biologia 1", "9793825911777", "Zanichelli"],
    [6, "Fondamenti di Informatica per il Liceo", "97888083282856", "Nuova Editrice"],
    [7, "Lettere antiche e moderne", "97888027294756", "Nuova Editrice"],
    [8, "Nova", "97888083292745", "Scuola Editore"]
]

board_list = [
    [0, 0, "03-02-2014", "Si ricorda che l'ultima rata di iscrizione al
        corrente Anno Scolastico deve essere versata entro e non oltre il
        giorno 04 marzo 2014, pena la non iscrizione all'anno scolastico
        successivo."],
    [1, 0, "18-01-2014", "In accordo con i Rappresentanti e i Coordinatori
        di Classe, la gita di quest'anno avr&agrave; come destinazione
        Genova. La giornata prevista per l'occasione &egrave; il giorno
        19 marzo 2014, con partenza alle ore 7:00 dalla Sede Centrale e
        arrivo previsto per le 9:30. Durante il prossimo Consiglio di Classe
        saranno decise le tappe in maniera definitiva. Il costo totale 
        verr&agrave; comunicato in tale occasione."],
    [2, 0, "23-12-2013", "La Dirigenza, unitamente con i Professori e gli
        altri dipendenti del Liceo Alan Turing, augura a tutti gli alunni
        Buon Natale e Felice Anno Nuovo."],
    [3, 0, "05-10-2013", "Il Consiglio di Classe ricorda che in data 17 
        ottobre 2013, gli alunni della classe Prima A sono tenuti a 
        partecipare alle elezioni del nuovo Consiglio d'Istituto. Per questo 
        motivo, i genitori sono avvisati della sospensione delle lezioni 
        nella stessa data dalle ore 11:10 alle 13:15."],
]

teachers_list.each do |id, name, surname, age, photo_url, curriculum|
  if !Teacher.find_by_id(id)
    Teacher.create(id: id, name: name, surname: surname, age: age,
                   photo_url: photo_url, curriculum: curriculum)
  end
end

office_hours_list.each do |id, teacher_id, day, hour, minute|
  if !OfficeHour.find_by_id(id)
    OfficeHour.create(id: id, teacher_id: teacher_id, day: day, hour: hour, minute: minute)
  end
end

school_classes_list.each do |id, yaer, section, timetable, council|
  if !SchoolClass.find_by_id(id)
      SchoolClass.create(id: id, year: yaer, section: section,
                         timetable: timetable, council: council)
  else
      if !SchoolClass.find_by(timetable: timetable)
          board = SchoolClass.find_by_id(id)
          board.update(timetable: timetable)
      end
      if !SchoolClass.find_by(council: council)
          board = SchoolClass.find_by_id(id)
          board.update(council: council)
      end
  end
end

teaching_list.each do |id, teacher_id, school_class_id, subject, coordinator|
  if !Teaching.find_by_id(id)
    teacher = Teacher.find_by_id(teacher_id)
    school_class = SchoolClass.find_by_id(school_class_id)

    Teaching.create(id: id, :teacher => teacher, :school_class => school_class, subject: subject, coordinator: coordinator)
  end
end

material_list.each do |id, name, isbn, publisher|
    if !Material.find_by_id(id)
      Material.create(id: id, name: name, isbn: isbn, publisher: publisher)
    end
end

board_list.each do |id, school_class_id, date, description|
    school_class = SchoolClass.find_by_id(school_class_id)
    if !Board.find_by_id(id)
        Board.create(id: id, :school_class => school_class, date: date, description: description)
    else
        if !Board.find_by(description: description)
            board = Board.find_by_id(id)
            board.update(description: description)
        end
        if !Board.find_by(date: date)
            board = Board.find_by_id(id)
            board.update(date: date)
        end
    end
end