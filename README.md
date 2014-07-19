# Reservira

[![Build Status](https://travis-ci.org/GanfOfFourOrFive/reservira.svg?branch=master)](https://travis-ci.org/GanfOfFourOrFive/reservira)
[![Code Climate](https://codeclimate.com/github/GanfOfFourOrFive/reservira.png)](https://codeclimate.com/github/GanfOfFourOrFive/reservira)
[![Code Coverage](https://codeclimate.com/github/GanfOfFourOrFive/reservira/coverage.png)](https://codeclimate.com/github/GanfOfFourOrFive/reservira)
[![Dependency Status](https://gemnasium.com/GanfOfFourOrFive/reservira.svg)](https://gemnasium.com/GanfOfFourOrFive/reservira)

Esse sistema tem o fim didático e tem como objetivo servir de aprendizado através
do uso dos diversos recursos do Ruby on Rails, HTML 5, CSS 3 e Javascript. Também
tem o objetivo de apresentar as melhores práticas de desenvolvimento e trabalho em
equipe com colaboradores distribuidos, usando para isso diversas ferramentas como
Github, Travis CI, Hound CI, Gemnasium, Slack, Heroku e Code Climate.

## Como contribuir como desenvolvedor

### Baixando o projeto, implementando uma nova fixture e contribuindo no Github
O projeto usa o controle de versão [GIT-SCM](http://git-scm.com) e se caso você
ainda não conhece muito de GIT recomendamos que [assista esse tutorial completo]
(http://goo.gl/bLCO43) feito pelo [Fábio Akita](http://akitaonrails.com.br/).

- Faça um fork do projeto para a sua conta do github e clone no seu ambiente de
desenvolvimento usando o comando:

  git clone url-do-seu-clone
  
- Assuma a tarefa no Trello e então planeje o desenvolvimento de sua feature. O
ideal é criar um novo branch para a sua feature com o comando:

  git checkout -b nome-da-feature
  
- Utilize TDD/BDD para guiar o processo de design e desenvolvimento, não é uma sugestão, é sua
obrigação como desenvolvedor.
- Implementada a feature, certifique-se que todos os testes estão passando, e que
o seu código esteja limpo, caso contrário Hound CI e o Travis CI vão acabar com a sua
reputação no Github e na equipe.
- Use o comando pull do git para puxar os arquivos do projeto:

    git pull origin nome-da-feature

verifique se o Travis e Hound aprovaram sua submissão. Feito isso aguarde o code review.
