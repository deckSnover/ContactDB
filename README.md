# ContactDb_Setup

## Descrição

O **ContactDb_Setup** é um projeto que ilustra a criação e gerenciamento de um banco de dados de contatos utilizando MySQL e Docker. Este projeto inclui um banco de dados MySQL com uma tabela de contatos e uma interface de administração web via Adminer.

## Estrutura do Projeto

- `contactdb.compose.yml`: Arquivo Docker Compose para configurar e iniciar os contêineres MySQL e Adminer.
- `init.sql`: Script SQL para inicializar o banco de dados com as tabelas `clients` e `contacts` e inserir registros.
- `backup/`: Pasta contendo o backup do banco de dados MySQL.

## Pré-requisitos

- Docker e Docker Compose instalados em sua máquina.
- Cliente MySQL (opcional, mas recomendado para administração do banco de dados).

## Instalação de Docker e Docker Compose

### Instalação do Docker

#### Windows

Baixe e instale o Docker Desktop a partir do [site oficial do Docker](https://www.docker.com/products/docker-desktop).

#### Linux

Siga as instruções específicas da sua distribuição, disponíveis no [site oficial do Docker](https://docs.docker.com/engine/install/).

### Instalação do Docker Compose

#### Windows

O Docker Compose geralmente é incluído no Docker Desktop para Windows.

#### Linux

Você pode instalar o Docker Compose separadamente seguindo estas etapas:

```bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

## Configuração e Execução

### Passo 1: Clonar o Repositório

Clone este repositório para sua máquina local:

```bash
git clone https://github.com/seu-usuario/contactdb_setup.git
cd contactdb_setup
```

### Passo 2: Inicializar os Contêineres

#### Windows

Inicie os contêineres usando Docker Compose:

```bash
docker-compose -f contactdb.compose.yml up -d
```

#### Linux

Inicie os contêineres usando Docker Compose:

```bash
sudo docker-compose -f contactdb.compose.yml up -d
```

### Passo 3: Acessar o Adminer

Após iniciar os contêineres, você pode acessar o Adminer no navegador da web:

[http://localhost:8080](http://localhost:8080)

Use as seguintes credenciais para se conectar ao banco de dados:

- **Sistema**: MySQL
- **Servidor**: db
- **Usuário**: user
- **Senha**: password
- **Base de dados**: contactdb_compose

### Passo 4: Restaurar o Banco de Dados a partir do Backup

Se desejar restaurar o banco de dados a partir do backup incluído na pasta `backup/`, siga estas etapas:

1. Copie o arquivo de backup `backup.sql` para o contêiner MySQL:

    ```bash
    docker cp backup/backup.sql db:/backup.sql
    ```

2. Conecte-se ao contêiner MySQL:

    ```bash
    docker-compose -f contactdb.compose.yml exec db bash
    ```

3. Dentro do contêiner, restaure o banco de dados:

    ```bash
    mysql -u user -ppassword contactdb_compose < /backup.sql
    ```

4. Saia do contêiner:

    ```bash
    exit
    ```

## Testando o Banco de Dados

### Acessando o Banco de Dados via Cliente MySQL

#### Windows

Se tiver o cliente MySQL instalado, pode se conectar ao banco de dados com o seguinte comando:

```bash
mysql -h localhost -u user -ppassword contactdb_compose
```

#### Linux

Se tiver o cliente MySQL instalado, pode se conectar ao banco de dados com o seguinte comando:

```bash
mysql -h localhost -u user -ppassword contactdb_compose
```

Caso o MySQL não esteja no PATH do sistema, você pode precisar especificar o caminho completo para o comando `mysql`.

### Usando o Adminer

Acesse o Adminer através do navegador web em [http://localhost:8080](http://localhost:8080). Conecte-se ao banco de dados usando as credenciais fornecidas anteriormente e execute as consultas diretamente na interface web.

### Executando Consultas via Linha de Comando no Contêiner MySQL

#### Windows

Para acessar o MySQL diretamente no contêiner:

```bash
docker-compose -f contactdb.compose.yml exec db mysql -u user -ppassword contactdb_compose
```

#### Linux

Para acessar o MySQL diretamente no contêiner:

```bash
sudo docker-compose -f contactdb.compose.yml exec db mysql -u user -ppassword contactdb_compose
```

Isso abrirá um prompt do MySQL dentro do contêiner onde poderá executar consultas diretamente.

## Comandos Úteis

### Parar e Remover Contêineres

#### Windows e Linux

Para parar e remover os contêineres:

```bash
docker-compose -f contactdb.compose.yml down
```

### Listar Contêineres em Execução

#### Windows e Linux

Para listar os contêineres em execução:

```bash
docker-compose -f contactdb.compose.yml ps
```

## Solução de Problemas

### Erro Persistente na Consulta SQL

Se encontrar erros persistentes ao executar consultas SQL, como erros de sintaxe ou tabelas não encontradas, siga estas etapas:

1. **Verifique a Sintaxe da Consulta**: Garanta que a sintaxe da consulta esteja correta.

2. **Verifique a Existência da Tabela**: Use o comando `SHOW TABLES;` no MySQL ou no Adminer para confirmar se a tabela existe no banco de dados.

3. **Crie a Tabela, se Necessário**: Se a tabela não existir, crie-a usando um script SQL adequado.

4. **Execução da Consulta Corrigida**: Após confirmar a existência da tabela e corrigir a sintaxe da consulta, execute-a novamente.

## Contribuição

Sinta-se à vontade para abrir issues ou enviar pull requests. Toda contribuição é bem-vinda!

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---