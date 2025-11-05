//constraits
CREATE CONSTRAINT user_id IF NOT EXISTS
FOR (u:User) REQUIRE u.id IS UNIQUE;

CREATE CONSTRAINT movie_title IF NOT EXISTS
FOR (m:Movie) REQUIRE m.title IS UNIQUE;

CREATE CONSTRAINT serie_title IF NOT EXISTS
FOR (s:Serie) REQUIRE s.title IS UNIQUE;

CREATE CONSTRAINT genre_name IF NOT EXISTS
FOR (g:Genre) REQUIRE g.name IS UNIQUE;

CREATE CONSTRAINT actor_name IF NOT EXISTS
FOR (a:Actor) REQUIRE a.name IS UNIQUE;

CREATE CONSTRAINT director_name IF NOT EXISTS
FOR (d:Director) REQUIRE d.name IS UNIQUE;

// users
CREATE (:User {id: 1, name:'Lucas Gabriel'});
CREATE (:User {id: 2, name:'Maria Eduarda'});
CREATE (:User {id: 3, name:'Maria Clara'});
CREATE (:User {id: 4, name:'Kerol'});
CREATE (:User {id: 5, name:'Marcos'});
CREATE (:User {id: 6, name:'Geovana'});
CREATE (:User {id: 7, name:'Neta'});
CREATE (:User {id: 8, name:'Cassinha'});
CREATE (:User {id: 9, name:'Luiza'});
CREATE (:User {id: 10, name:'Dehon'});

// movies
CREATE (:Movie {title:'Vingadores: Ultimato', year:2019});
CREATE (:Movie {title:'F1: O Filme', year:2025});
CREATE (:Movie {title:'Oppenheimer', year: 2023});
CREATE (:Movie {title:'Interestelar', year:2014});
CREATE (:Movie {title:'Carros 1', year:2006});
CREATE (:Movie {title:'Mad Max: Estrada da Fúria', year:2015});
CREATE (:Movie {title:'Ainda Estou Aqui', year:2024});
CREATE (:Movie {title:"Avatar", year:2009});
CREATE (:Movie {title:"Deadpool", year:2016});
CREATE (:Movie {title:'O Poderoso Chefão', year:1972});

// series
CREATE (:Serie {title:'Breaking Bad', yearStart:2008});
CREATE (:Serie {title:'Game Of Thrones', yearStart:2011});
CREATE (:Serie {title:'Rick e Morty', yearStart: 2013});
CREATE (:Serie {title:'Better Call Saul', yearStart:2015});
CREATE (:Serie {title:'Arcane', yearStart:2021});
CREATE (:Serie {title:'The Office', yearStart:2005});
CREATE (:Serie {title:'Dark', yearStart:2017});
CREATE (:Serie {title:"Stranger Things", yearStart:2016});
CREATE (:Serie {title:"Friends", yearStart:1994});
CREATE (:Serie {title:"How I Met Your Mother", yearStart:2005});

//genres
CREATE (:Genre {name:"Ação"});
CREATE (:Genre {name:"Drama"});
CREATE (:Genre {name:"Ficção Científica"});
CREATE (:Genre {name:"Comédia"});
CREATE (:Genre {name:"Aventura"});
CREATE (:Genre {name:"Fantasia"});
CREATE (:Genre {name:"Crime"});
CREATE (:Genre {name:"Animação"});
CREATE (:Genre {name:"Biografia"});
CREATE (:Genre {name:"Thriller"});

//actors
CREATE (:Actor {name:"Robert Downey Jr."});
CREATE (:Actor {name:"Chris Evans"});
CREATE (:Actor {name:"Brad Pitt"});
CREATE (:Actor {name:"Damson Idris"});
CREATE (:Actor {name:"Cillian Murphy"});
CREATE (:Actor {name:"Emily Blunt"});
CREATE (:Actor {name:"Matthew McConaughey"});
CREATE (:Actor {name:"Anne Hathaway"});
CREATE (:Actor {name:"Owen Wilson"});
CREATE (:Actor {name:"Paul Newman"});
CREATE (:Actor {name:"Tom Hardy"});
CREATE (:Actor {name:"Charlize Theron"});
CREATE (:Actor {name:"Fernanda Torres"});
CREATE (:Actor {name:"Maria Fernanda Cândido"});
CREATE (:Actor {name:"Sam Worthington"});
CREATE (:Actor {name:"Zoe Saldaña"});
CREATE (:Actor {name:"Ryan Reynolds"});
CREATE (:Actor {name:"Morena Baccarin"});
CREATE (:Actor {name:"Marlon Brando"});
CREATE (:Actor {name:"Al Pacino"});
CREATE (:Actor {name:"Bryan Cranston"});
CREATE (:Actor {name:"Aaron Paul"});
CREATE (:Actor {name:"Emilia Clarke"});
CREATE (:Actor {name:"Kit Harington"});
CREATE (:Actor {name:"Justin Roiland"});
CREATE (:Actor {name:"Chris Parnell"});
CREATE (:Actor {name:"Bob Odenkirk"});
CREATE (:Actor {name:"Rhea Seehorn"});
CREATE (:Actor {name:"Hailee Steinfeld"});
CREATE (:Actor {name:"Ella Purnell"});
CREATE (:Actor {name:"Steve Carell"});
CREATE (:Actor {name:"John Krasinski"});
CREATE (:Actor {name:"Louis Hofmann"});
CREATE (:Actor {name:"Lisa Vicari"});
CREATE (:Actor {name:"Millie Bobby Brown"});
CREATE (:Actor {name:"Finn Wolfhard"});
CREATE (:Actor {name:"Jennifer Aniston"});
CREATE (:Actor {name:"Courteney Cox"});
CREATE (:Actor {name:"Josh Radnor"});
CREATE (:Actor {name:"Neil Patrick Harris"});

//directors
CREATE (:Director {name:"Anthony Russo"});
CREATE (:Director {name:"Joe Russo"});
CREATE (:Director {name:"Joseph Kosinski"});
CREATE (:Director {name:"Christopher Nolan"});
CREATE (:Director {name:"John Lasseter"});
CREATE (:Director {name:"George Miller"});
CREATE (:Director {name:"Walter Salles"});
CREATE (:Director {name:"James Cameron"});
CREATE (:Director {name:"Tim Miller"});
CREATE (:Director {name:"Francis Ford Coppola"});
CREATE (:Director {name:"Vince Gilligan"});
CREATE (:Director {name:"David Benioff"});
CREATE (:Director {name:"D.B. Weiss"});
CREATE (:Director {name:"Dan Harmon"});
CREATE (:Director {name:"Justin Roiland"});
CREATE (:Director {name:"Peter Gould"});
CREATE (:Director {name:"Christian Linke"});
CREATE (:Director {name:"Alex Yee"});
CREATE (:Director {name:"Greg Daniels"});
CREATE (:Director {name:"Baran bo Odar"});
CREATE (:Director {name:"The Duffer Brothers"});
CREATE (:Director {name:"David Crane"});
CREATE (:Director {name:"Marta Kauffman"});
CREATE (:Director {name:"Carter Bays"});
CREATE (:Director {name:"Craig Thomas"});

//relationships

// (Actor)-[ACTED_IN]->(Movie/Serie)
MATCH (a:Actor {name:"Robert Downey Jr."}) 
MATCH (m:Movie {title:"Vingadores: Ultimato"})
CREATE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name:"Brad Pitt"})
MATCH (m:Movie {title:"F1: O Filme"}) 
CREATE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name:"Cillian Murphy"})
MATCH (m:Movie {title:"Oppenheimer"}) 
CREATE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name:"Bryan Cranston"})
MATCH (m:Serie {title:"Breaking Bad"}) 
CREATE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name:"Emilia Clarke"})
MATCH (m:Serie {title:"Game Of Thrones"}) 
CREATE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name:"Bob Odenkirk"})
MATCH (m:Serie {title:"Better Call Saul"}) 
CREATE (a)-[:ACTED_IN]->(m);

// (Director)-[DIRECTED]->(Movie/Serie)
MATCH (d:Director {name:"Anthony Russo"})
MATCH (m:Movie {title:"Vingadores: Ultimato"}) 
CREATE (d)-[:DIRECTED]->(m);

MATCH (d:Director {name:"Joseph Kosinski"})
MATCH (m:Movie {title:"F1: O Filme"}) 
CREATE (d)-[:DIRECTED]->(m);

MATCH (d:Director {name:"Baran bo Odar"})
MATCH (s:Serie {title:"Dark"}) 
CREATE (d)-[:DIRECTED]->(s);

// (Movie/Serie)-[IN_GENRE]->(Genre)
MATCH (m:Movie {title:"Oppenheimer"})
MATCH (g:Genre {name:"Biografia"})
CREATE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title:"Ainda Estou Aqui"})
MATCH (g:Genre {name:"Drama"})
CREATE (m)-[:IN_GENRE]->(g);

MATCH (s:Serie {title:"Breaking Bad"})
MATCH (g:Genre {name:"Crime"}) 
CREATE (s)-[:IN_GENRE]->(g);

// (User)-[WATCHED {rating:nota}]->(Movie/Serie)
MATCH (u:User {name:"Lucas"})
MATCH (m:Movie {title:"Interestelar"}) 
CREATE (u)-[:WATCHED {rating:9.2}]->(m);

MATCH (u:User {name:"Maria Eduarda"})
MATCH (m:Movie {title:"Dark"}) 
CREATE (u)-[:WATCHED {rating:8}]->(m);

MATCH (u:User {name:"Geovana"})
MATCH (m:Movie {title:"Carros 1"}) 
CREATE (u)-[:WATCHED {rating:6.5}]->(m);

MATCH (u:User {name:"Marcos"}) 
MATCH (m:Movie {title:"Mad Max: Estrada da Fúria"}) 
CREATE (u)-[:WATCHED {rating:9.5}]->(m);

MATCH (u:User {name:"Maria Clara"})
MATCH (m:Movie {title:"Oppenheimer"}) 
CREATE (u)-[:WATCHED {rating:8}]->(m);

MATCH (u:User {name:"Kerol"})
MATCH (s:Serie {title:"Friends"}) 
CREATE (u)-[:WATCHED {rating:8.5}]->(s);