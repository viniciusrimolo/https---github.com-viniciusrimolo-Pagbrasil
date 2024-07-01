# Projeto para realização de testes E2E, com Cypress e JavaScript (focado em testes de FRONT e API)

Projeto de testes aplicação Desafio PagBrasil;

## Pré-requisitos:
- [NodeJS](https://nodejs.org/en/download/ "NodeJS")

## Ferramentas utilizadas:
- [VSCode](https://code.visualstudio.com/ "VSCode")
- [Cypress](https://www.npmjs.com/package/cypress "Cypress")

### Clone o repositório:

```
git clone https://github.com/seu-usuario/seu-projeto.git
cd seu-projeto
```

### Executar este projeto em sua maquina

* 1- Em um terminal, dentro da pasta do projeto, execute o seguinte comando:

**Instalar as dependências:**  
```
npm install
```
* 2- Em seguida prossiga com a instalação do cypress no projeto, digite o comando abaixo para instalar a última versão do cypress ou @numerodaversao desejada:

```
npm install cypress@numero da versao
```
### Utilizando o cypress

* 4- Em um terminal execute o comando abaixo para abrir o cypress:
```
npx cypress open

```
### Relatórios com MochaAwesome

* 1-Instale as dependências necessárias:


```
npm install mocha mochawesome mochawesome-merge mochawesome-report-generator --save-dev
```

### Gerando o report:  
```
Use o seguinte comando para rodar os testes e gerar relatórios MochaAwesome:
```
npm run test:report
```