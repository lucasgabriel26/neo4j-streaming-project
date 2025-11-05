# 🎬 Neo4j Streaming Project

Modelagem de dados em grafos utilizando **Neo4j**, representando a estrutura de um **serviço de streaming**.  
O projeto foi desenvolvido como parte do **Bootcamp DIO + Neo4j**, com o objetivo de explorar conceitos de **modelagem de grafos**, **relacionamentos** e **constraints** no contexto de um sistema real.

---

## 🧩 Objetivo

Criar um **grafo de conhecimento** para um serviço de streaming, contendo entidades (nós) e relacionamentos que representam as interações entre usuários, produções, atores, diretores e gêneros.

---

## 🧠 Modelo Conceitual

O modelo foi projetado para conter as seguintes entidades e conexões:

### **Entidades (Nós)**
- 🧍 **User**
- 🎬 **Movie**
- 📺 **Serie**
- 🎭 **Actor**
- 🎥 **Director**
- 🏷️ **Genre**

### **Relacionamentos**
| Relação | Origem → Destino | Descrição | Propriedades |
|----------|------------------|------------|---------------|
| `WATCHED` | User → Movie/Series | Indica que o usuário assistiu uma produção | `rating` |
| `ACTED_IN` | Actor → Movie/Series | Indica que um ator participou de uma produção | — |
| `DIRECTED` | Director → Movie/Series | Indica o diretor responsável por uma produção | — |
| `IN_GENRE` | Movie/Series → Genre | Classifica a produção em um gênero | — |

---

## 🗺️ Diagrama do Grafo

![Modelo de Grafo](./diagrama?cache=2025-10-27)

> 💡 O diagrama foi criado para representar a estrutura do grafo no Neo4j, mostrando as entidades principais e suas conexões.

---

## ⚙️ Criação de Constraints

```cypher
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
