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

![Modelo de Grafo](https://github.com/lucasgabriel26/neo4j-streaming-project/blob/main/diagrama.png?cache=2025-10-27)

> 💡 O diagrama foi criado para representar a estrutura do grafo no Neo4j, mostrando as entidades principais e suas conexões.

---

## 📜 Script Cypher
O script completo está disponível no arquivo [`neo4j-streaming-project.cypher`](./neo4j-streaming-project.cypher).  
Ele contém:
- Criação de constraints  
- Criação de nós (usuários, filmes, séries, gêneros, atores, diretores)  
- Criação de relacionamentos (`ACTED_IN`, `DIRECTED`, `IN_GENRE`, `WATCHED`)

---

## 🚀 Como Executar
1. Crie uma instância gratuita do **Neo4j AuraDB** em [https://neo4j.com/cloud](https://neo4j.com/cloud)
2. Acesse o **Neo4j Browser**
3. Copie o conteúdo do arquivo `neo4j-streaming-project.cypher`
4. Cole e execute no Browser (CTRL + Enter)
5. Visualize o grafo com:
   ```cypher
   MATCH (n) RETURN n;

---

## 👨‍💻 Autor

**Lucas Gabriel Pinto**  
📍 Apodi, RN — Brasil  
💼 [LinkedIn](https://www.linkedin.com/in/lucasgpin/)  
📧 lucasgabriel.lg626@gmail.com
