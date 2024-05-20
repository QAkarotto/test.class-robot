# Sobre o Projeto

Projeto usado para demonstrar o funcionamento do Robot Framework na aula da test.class.

## Instação
### Python

O Robot Framework é implementado usando Python, então é necessário ter o Python instalado na versão 3.6 ou mais recente.
Caso não tenha o Python instalado acesse [https://www.python.org/](https://www.python.org/) e realize a instalação segundo o sistema operacional utilizado.
Para verificar a versão instalada do Python basta digitar o seguinte comando no terminal:

```bash
python --version
```

### Robot Framework e Libraries

É necessário instalar o o package do Robot Framework e suas libraries utilizando o pip (gerenciador de pacotes padrão do Python).
Abaixo segue o comando para instalar o Robot e todas as bibliotecas utilizadas no projeto:

```bash
pip install -U -r requirements.txt
```

Para instalar as dependências do node da Browser Library é necessário ter o [Node JS](nodejs.org) instalado e rodar o comando:

```bash
rfbrowser init
```

Para verificar a versão instalada do Robot basta digitar o seguinte comando no terminal:
```bash
robot --version
```

## Executando os testes

```bash
# Executa os testes da pasta 'web/login'
python -m robot -d ./reports web/login

```
## Sugestão de extensão no VS Code

[RobotCode - Robot Framework Support](https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp)
