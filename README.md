Arquivos da prática 03 da disciplina de Desenvolvimento em Nuvem do curso de Análise de Desenvolvimento de Sistemas da UFCA.
---
# Autor
Francisco Sávio Sousa da Cunha

---
# Estrutura do Projeto
```
app_db/
│
├── app/
│   ├── app.py
│   ├── requirements.txt
│   └── Dockerfile
│
├── db/
│   └── init.sql
│
└── docker-compose.yml

```
## 🚀 Como executar o projeto

### 1️⃣ Clonar o repositório

```bash
git clone https://github.com/seu-usuario/escola360-api.git
cd escola360-api
```

---

### 2️⃣ Verificar se o Docker está instalado

```bash
docker --version
docker compose version
```

---

### 3️⃣ Subir os containers

Execute o comando abaixo na pasta do projeto:

```bash
docker compose up 
```

Isso irá:

* criar a imagem da aplicação Flask
* baixar a imagem do MySQL
* iniciar os containers da aplicação e do banco de dados
* criar automaticamente o banco `escola360`

---

### 4️⃣ Acessar a aplicação

Abra o navegador e acesse:

```text
http://localhost:5000
```

Se estiver rodando em um servidor ou máquina virtual:

```text
http://IP_DO_SERVIDOR:5000
```

---

### 5️⃣ Verificar os containers em execução

```bash
docker ps
```

---

### 6️⃣ Parar a aplicação

Para parar os containers execute:

```bash
docker compose down
```

---

### 📌 Observação

O banco de dados é criado automaticamente ao iniciar o container MySQL através do arquivo:

```
db/init.sql
```
