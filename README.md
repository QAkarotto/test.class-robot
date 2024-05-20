# Sobre o Projeto

Projeto de automação de testes da aplicação TMS.

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

Para verificar a versão instalada do Robot basta digitar o seguinte comando no terminal:
```bash
robot --version
```

## Executando os testes

```bash
# Executa os testes da pasta 'Web/Tests/CancelLoadTC_Tests'
python -m robot -d ./reports Web/Tests/CancelLoadTC_Tests

```
## Sugestão de extensão no VS Code

Robot Framework Language Server
https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp
