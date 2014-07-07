# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   eate([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(namcities = City.cre: 'Emanuel', city: cities.first)

structure_list = [
    [0, "Campo Paolo Rossi", ""],
    [1, "Laboratorio A1", ""],
    [2, "Aula Magna", ""]
]

activity_list = [
    [0, 0, "sportive", 
        "Data la tradizione vincente in ambito calcistico, il nostro 
        Liceo organizza sessioni di allenamento pomeridiano di Calcio a 
        5. L'attivit&agrave; viene organizzata nel caso in cui gli iscritti 
        siano pi&ugrave; di 10.", "Allenamento Calcio a 5"]
]

teachers_list = [
    [0, 'Francesca', 'Febbo', 32, 'febbo.jpg',
        'Francesca Febbo si diploma nel 2001 al Liceo Scientifico Enrico 
        Fermi di Padova e si laurea nel 2006 in Scienze Matematiche presso 
        l\'Universit&agrave; degli Studi di Padova con la valutazione di 
        110 e lode. Dedicatasi inizialmente 
        ad attivit&agrave; accademiche, rinuncia al Dottorato di Ricerca in 
        corso per iniziare la carriera da insegnante. Diventa docente di ruolo 
        nel 2011 e nel 2012, dopo una breve attivit&agrave; di supplenza, 
        viene assunta come insegnante di ruolo di Matematica e Fisica per le 
        classi del biennio. I feedback da parte degli studenti sono molto 
        positivi. La Prof.ssa Febbo dimostra, oltre alle capacit&agrave; 
        didattiche, anche disponibilit&agrave; e passione per le materie 
        che insegna. Gli stessi genitori hanno espresso pareri positivi sulla 
        gentilezza e disponibilit&agrave; al dialogo della Prof.ssa Febbo.
        Dal 2011 &egrave; inoltre impegnata in attivit&agrave; di ricerca 
        in collaborazione con l\'Universit&agrave; degli Studi di Milano 
        riguardanti la statistica demografica. Francesca Febbo conosce 
        tre lingue, oltre all\'italiano: inglese, francese e tedesco. Per 
        queste sue competenze, &egrave; spesso contattata dal Politecnico di 
        Milano per collaborazioni in ambito di Reasearch & Development.'],
    [1, 'Umberto', 'Di Fabrizio', 41, '#', ''],
    [2, 'Francesco', 'Corsini', 38, '#', ''],
    [3, 'Francesco', 'Angelo', 50, '#', ''],
    [4, 'Valentina', 'Ceriani', 39, '#', '']
]

office_hours_list = [
    [0, 0, 'Lunedì', 10, 15],
    [1, 1, 'Mercoledì', 11, 30],
    [2, 2, 'Venerdì', 17, 00],
    [3, 3, 'Martedì', 10, 15],
    [4, 4, 'Lunedì', 10, 45],
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

book_list_list = [
    [0, 0, 0],
    [1, 1, 0],
    [2, 2, 0],
    [3, 3, 0],
    [4, 4, 0],
    [5, 5, 0],
    [6, 6, 0],
    [7, 7, 0],
    [8, 8, 0],
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


user_list = [
    [0, 'admin', 'admin', 'admin@liceoalanturing.it', 0],
    [1, 'febbo', 'febbo', 'francesca.febbo@liceoalanturing.it', 1],
    [2, 'Buffon Gianluigi', 'buffon_gianluigi', 'buffon_gianluigi_00@hotmail.it', 2],
    [3, 'D.amico Ilaria', 'd.amico_ilaria', 'ila4ever_2000@libero.it', 2],
]

structure_list.each do |id, room, description|
  if !Structure.find_by_id(id)
    Structure.create(id: id, room: room, description: description)
  end
end

activity_list.each do |id, structure_id, activity_type, description, name|
  if !Activity.find_by_id(id)
    Activity.create(id: id, structure_id: structure_id, activity_type: activity_type, description: description, name: name)
  else
      if !Activity.find_by(description: description)
          activity = Activity.find_by_id(id)
          activity.update(description: description)
      end
      if !Activity.find_by(name: name)
          activity = Activity.find_by_id(id)
          activity.update(name: name)
      end
  end
end

teachers_list.each do |id, name, surname, age, photo_url, curriculum|
  if !Teacher.find_by_id(id)
    Teacher.create(id: id, name: name, surname: surname, age: age,
                   photo_url: photo_url, curriculum: curriculum)
  else
    if !Teacher.find_by(photo_url: photo_url)
        teacher = Teacher.find_by_id(id)
        teacher.update(photo_url: photo_url)
    end
    if !Teacher.find_by(curriculum: curriculum)
        teacher = Teacher.find_by_id(id)
        teacher.update(curriculum: curriculum)
    end
  end
end

office_hours_list.each do |id, teacher_id, day, hour, minute|
  if !OfficeHour.find_by_id(id)
    OfficeHour.create(id: id, teacher_id: teacher_id, day: day, hour: hour, minute: minute)
  else
      if !OfficeHour.find_by(day: day)
          office_hour = OfficeHour.find_by_id(id)
          office_hour.update(day: day)
      end
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

book_list_list.each do |id, material_id, school_class_id|
  if !BookList.find_by_id(id)
    material = Material.find_by_id(material_id)
    school_class = SchoolClass.find_by_id(school_class_id)

    BookList.create(id: id, :material => material, :school_class => school_class)
  end
end

material_list.each do |id, name, isbn, publisher|
  if !Material.find_by_id(id)
    Material.create(id: id, name: name, isbn: isbn, publisher: publisher)
  else
    if !Material.find_by(name: name)
      material = Material.find_by_id(id)
      material.update(name: name)
    end
    if !Material.find_by(isbn: isbn)
      material = Material.find_by_id(id)
      material.update(isbn: isbn)
    end
    if !Material.find_by(publisher: publisher)
      material = Material.find_by_id(id)
      material.update(publisher: publisher)
    end
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

user_list.each do |id, username, password, email, type_user|
  if !User.find_by_id(id)
    User.create(id: id, :username => username, password: password,
                email: email, :type_user => type_user)
  else
    user = User.find_by_id(id)
    user.update(:username => username, password: password, email: email, :type_user => type_user)
  end
end