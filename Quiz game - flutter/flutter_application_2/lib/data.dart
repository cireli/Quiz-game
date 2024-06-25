class Question {
  final String question;
  final List<String> options;
  final String correctAnswer;

  Question({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}

final Map<String, List<Question>> questions = {
  'Matematika': [
    Question(
      question: 'Koliko je 2 + 2?',
      options: ['3', '4', '5', '6'],
      correctAnswer: '4',
    ),
    Question(
      question: 'Koliko je 3 x 3?',
      options: ['6', '7', '8', '9'],
      correctAnswer: '9',
    ),
    Question(
      question: 'Koliko je koren iz 16?',
      options: ['2', '3', '4', '5'],
      correctAnswer: '4',
    ),
    Question(
      question: 'Koliko je 10 - 4?',
      options: ['5', '6', '7', '8'],
      correctAnswer: '6',
    ),
    Question(
      question: 'Koliko je 15 / 3?',
      options: ['4', '5', '6', '7'],
      correctAnswer: '5',
    ),
    Question(
      question: 'Koliko je 5 + 7?',
      options: ['11', '12', '13', '14'],
      correctAnswer: '12',
    ),
    Question(
      question: 'Koliko je 12 - 8?',
      options: ['2', '3', '4', '5'],
      correctAnswer: '4',
    ),
    Question(
      question: 'Koliko je 6 x 6?',
      options: ['30', '32', '34', '36'],
      correctAnswer: '36',
    ),
    Question(
      question: 'Koliko je 8 / 2?',
      options: ['2', '3', '4', '5'],
      correctAnswer: '4',
    ),
    Question(
      question: 'Koliko je 7 + 5?',
      options: ['11', '12', '13', '14'],
      correctAnswer: '12',
    ),
  ],
  'Istorija': [
    Question(
      question: 'Ko je bio prvi predsednik SAD?',
      options: [
        'Abraham Lincoln',
        'George Washington',
        'Thomas Jefferson',
        'John Adams'
      ],
      correctAnswer: 'George Washington',
    ),
    Question(
      question: 'Ko je otkrio Ameriku?',
      options: [
        'Leif Erikson',
        'Christopher Columbus',
        'Ferdinand Magellan',
        'Marco Polo'
      ],
      correctAnswer: 'Christopher Columbus',
    ),
    Question(
      question: 'Ko je bio prvi car Rima?',
      options: ['Nero', 'Caligula', 'Augustus', 'Tiberius'],
      correctAnswer: 'Augustus',
    ),
    Question(
      question: 'Ko je napisao "Ilijadu"?',
      options: ['Sokrat', 'Platon', 'Aristotel', 'Homer'],
      correctAnswer: 'Homer',
    ),
    Question(
      question: 'Ko je bio osnivač Mongolskog carstva?',
      options: ['Kublai Khan', 'Ogedei Khan', 'Genghis Khan', 'Batu Khan'],
      correctAnswer: 'Genghis Khan',
    ),
    Question(
      question: 'Koji je rat poznat kao "Veliki rat"?',
      options: [
        'Prvi svetski rat',
        'Drugi svetski rat',
        'Američki građanski rat',
        'Rusko-japanski rat'
      ],
      correctAnswer: 'Prvi svetski rat',
    ),
    Question(
      question: 'Ko je bio prvi čovek na Mesecu?',
      options: [
        'Buzz Aldrin',
        'Yuri Gagarin',
        'Michael Collins',
        'Neil Armstrong'
      ],
      correctAnswer: 'Neil Armstrong',
    ),
    Question(
      question: 'Ko je bio poznat kao "Madam Curie"?',
      options: [
        'Marie Curie',
        'Ada Lovelace',
        'Rosalind Franklin',
        'Dorothy Hodgkin'
      ],
      correctAnswer: 'Marie Curie',
    ),
    Question(
      question: 'Koji je događaj započeo Drugi svetski rat?',
      options: [
        'Napad na Perl Harbur',
        'Bitka za Britaniju',
        'Invaija na Poljsku',
        'D-Day'
      ],
      correctAnswer: 'Invaija na Poljsku',
    ),
    Question(
      question: 'Ko je bio poslednji car Rusije?',
      options: ['Ivan IV', 'Petar Veliki', 'Aleksandar III', 'Nikola II'],
      correctAnswer: 'Nikola II',
    ),
  ],
  'Geografija': [
    Question(
      question: 'Koji je glavni grad Francuske?',
      options: ['Pariz', 'London', 'Berlin', 'Madrid'],
      correctAnswer: 'Pariz',
    ),
    Question(
      question: 'Koji je najveći kontinent?',
      options: ['Afrika', 'Azija', 'Evropa', 'Južna Amerika'],
      correctAnswer: 'Azija',
    ),
    Question(
      question: 'Koja je najduža reka na svetu?',
      options: ['Nil', 'Amazon', 'Jangce', 'Misisipi'],
      correctAnswer: 'Nil',
    ),
    Question(
      question: 'Koje je najveće jezero na svetu?',
      options: [
        'Kaspijsko jezero',
        'Severno jezero',
        'Viktorijina jezera',
        'Bajkalsko jezero'
      ],
      correctAnswer: 'Kaspijsko jezero',
    ),
    Question(
      question: 'Koja je najviša planina na svetu?',
      options: ['K2', 'Alpi', 'Everest', 'Makalu'],
      correctAnswer: 'Everest',
    ),
    Question(
      question: 'Koji je najmanji kontinent?',
      options: ['Antarktik', 'Evropa', 'Australija', 'Južna Amerika'],
      correctAnswer: 'Australija',
    ),
    Question(
      question: 'Koji je najveći okean na svetu?',
      options: ['Atlantik', 'Indijski', 'Arktički', 'Pacifik'],
      correctAnswer: 'Pacifik',
    ),
    Question(
      question: 'Koja je najgušće naseljena zemlja na svetu?',
      options: ['Kina', 'Indija', 'Monako', 'Bangladeš'],
      correctAnswer: 'Monako',
    ),
    Question(
      question: 'Koji je glavni grad Japana?',
      options: ['Osaka', 'Tokio', 'Kjoto', 'Nagoja'],
      correctAnswer: 'Tokio',
    ),
    Question(
      question: 'Koja država ima najviše stanovnika?',
      options: ['Indija', 'Sjedinjene Američke Države', 'Indonezija', 'Kina'],
      correctAnswer: 'Indija',
    ),
  ],
  'Informatika': [
    Question(
      question: 'Šta znači CPU?',
      options: [
        'Central Processing Unit',
        'Central Performance Unit',
        'Central Programming Unit',
        'Central Print Unit'
      ],
      correctAnswer: 'Central Processing Unit',
    ),
    Question(
      question: 'Šta je RAM?',
      options: [
        'Random Access Memory',
        'Read Access Memory',
        'Run Access Memory',
        'Rapid Access Memory'
      ],
      correctAnswer: 'Random Access Memory',
    ),
    Question(
      question: 'Šta je HTTP?',
      options: [
        'Hypertext Transfer Protocol',
        'Hypertext Transfer Program',
        'Hypertext Transfer Path',
        'Hypertext Transfer Process'
      ],
      correctAnswer: 'Hypertext Transfer Protocol',
    ),
    Question(
      question: 'Ko je tvorac Linux operativnog sistema?',
      options: ['Bill Gates', 'Steve Jobs', 'Linus Torvalds', 'Ken Thompson'],
      correctAnswer: 'Linus Torvalds',
    ),
    Question(
      question: 'Šta znači GUI?',
      options: [
        'General User Interface',
        'Graphical User Interface',
        'Graphic User Internet',
        'General User Internet'
      ],
      correctAnswer: 'Graphical User Interface',
    ),
    Question(
      question: 'Šta je JSON?',
      options: [
        'JavaScript Object Notation',
        'JavaScript Object Network',
        'JavaScript Object Navigation',
        'JavaScript Object Namespace'
      ],
      correctAnswer: 'JavaScript Object Notation',
    ),
    Question(
      question: 'Šta je IP adresa?',
      options: [
        'Internet Protocol address',
        'Internet Provider address',
        'Internet Path address',
        'Internet Protocol access'
      ],
      correctAnswer: 'Internet Protocol address',
    ),
    Question(
      question: 'Koja je osnovna funkcija operativnog sistema?',
      options: [
        'Upravljanje hardverom',
        'Upravljanje softverom',
        'Upravljanje mrežom',
        'Sve navedeno'
      ],
      correctAnswer: 'Sve navedeno',
    ),
    Question(
      question: 'Šta znači SQL?',
      options: [
        'Structured Query Language',
        'Standard Query Language',
        'Simple Query Language',
        'System Query Language'
      ],
      correctAnswer: 'Structured Query Language',
    ),
    Question(
      question: 'Šta znači WWW?',
      options: [
        'World Wide Web',
        'World Wide Wave',
        'World Wide Word',
        'World Wide Walk'
      ],
      correctAnswer: 'World Wide Web',
    ),
  ],
  'Sport': [
    Question(
      question: 'Koliko igrača ima fudbalski tim?',
      options: ['10', '11', '12', '13'],
      correctAnswer: '11',
    ),
    Question(
      question: 'Ko je osvojio najviše titula u Formuli 1?',
      options: [
        'Michael Schumacher',
        'Lewis Hamilton',
        'Ayrton Senna',
        'Alain Prost'
      ],
      correctAnswer: 'Lewis Hamilton',
    ),
    Question(
      question: 'Koja država je domaćin Olimpijskih igara 2020?',
      options: ['Kina', 'Brazil', 'Japan', 'Velika Britanija'],
      correctAnswer: 'Japan',
    ),
    Question(
      question: 'Ko je poznat kao "Kralj fudbala"?',
      options: ['Lionel Messi', 'Cristiano Ronaldo', 'Pelé', 'Diego Maradona'],
      correctAnswer: 'Pelé',
    ),
    Question(
      question: 'Ko je osvojio najviše Grand Slam titula u tenisu?',
      options: [
        'Roger Federer',
        'Rafael Nadal',
        'Novak Đoković',
        'Pete Sampras'
      ],
      correctAnswer: 'Novak Đoković',
    ),
    Question(
      question: 'Koji sport se igra na Wimbledonu?',
      options: ['Fudbal', 'Košarka', 'Tenis', 'Ragbi'],
      correctAnswer: 'Tenis',
    ),
    Question(
      question: 'Koji sport koristi termin "home run"?',
      options: ['Kriket', 'Fudbal', 'Košarka', 'Bejzbol'],
      correctAnswer: 'Bejzbol',
    ),
    Question(
      question: 'Koliko igrača ima košarkaški tim?',
      options: ['5', '6', '7', '8'],
      correctAnswer: '5',
    ),
    Question(
      question: 'Koji sport koristi termin "hole in one"?',
      options: ['Golf', 'Fudbal', 'Tenis', 'Bejzbol'],
      correctAnswer: 'Golf',
    ),
    Question(
      question: 'Koji sport koristi termin "spike"?',
      options: ['Odbojka', 'Košarka', 'Tenis', 'Ragbi'],
      correctAnswer: 'Odbojka',
    ),
  ],
  'Kultura': [
    Question(
      question: 'Ko je napisao "Rat i mir"?',
      options: [
        'Fjodor Dostojevski',
        'Anton Čehov',
        'Lav Tolstoj',
        'Ivan Turgenjev'
      ],
      correctAnswer: 'Lav Tolstoj',
    ),
    Question(
      question: 'Ko je slikao "Mona Lisu"?',
      options: [
        'Vincent van Gogh',
        'Claude Monet',
        'Pablo Picasso',
        'Leonardo da Vinci'
      ],
      correctAnswer: 'Leonardo da Vinci',
    ),
    Question(
      question: 'Ko je napisao "Hamlet"?',
      options: [
        'Christopher Marlowe',
        'William Shakespeare',
        'John Milton',
        'Geoffrey Chaucer'
      ],
      correctAnswer: 'William Shakespeare',
    ),
    Question(
      question: 'Koji je poznati balet napisao P. I. Čajkovski?',
      options: [
        'Labuđe jezero',
        'Romeo i Julija',
        'Petruška',
        'Gaite Parisienne'
      ],
      correctAnswer: 'Labuđe jezero',
    ),
    Question(
      question: 'Ko je autor "Prohujalo sa vihorom"?',
      options: [
        'Margaret Mitchell',
        'Harper Lee',
        'Emily Brontë',
        'Jane Austen'
      ],
      correctAnswer: 'Margaret Mitchell',
    ),
    Question(
      question: 'Koji je prvi igrani film snimljen u istoriji?',
      options: [
        'Putovanje na Mesec',
        'Veliki vozni pljačka',
        'Dolazak voza',
        'Narodni vrt'
      ],
      correctAnswer: 'Dolazak voza',
    ),
    Question(
      question: 'Ko je režirao film "Psiho"?',
      options: [
        'Alfred Hitchcock',
        'Stanley Kubrick',
        'Orson Welles',
        'John Ford'
      ],
      correctAnswer: 'Alfred Hitchcock',
    ),
    Question(
      question: 'Koji je poznati grčki filozof?',
      options: ['Sokrat', 'Albert Einstein', 'Isaac Newton', 'Galileo Galilei'],
      correctAnswer: 'Sokrat',
    ),
    Question(
      question: 'Ko je napisao "Božanstvenu komediju"?',
      options: ['Geoffrey Chaucer', 'John Milton', 'Dante Alighieri', 'Homer'],
      correctAnswer: 'Dante Alighieri',
    ),
    Question(
      question: 'Ko je bio poznat kao "Kralj popa"?',
      options: ['Elvis Presley', 'Michael Jackson', 'Prince', 'David Bowie'],
      correctAnswer: 'Michael Jackson',
    ),
  ],
};
