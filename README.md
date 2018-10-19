# Tads6Patrick

Seja bem vindo ao tads6_patrick, gem para auxilia-lo na serialização e desserialização de objetos! Para tanto, a gem lhe desponibila uma biblioteca básica com CRUD.

Segue abaixo, as instruções de instalação e uso desta gem.

## Instalação

Adicione esta linha em seu aplicativo de Gemfile:

```ruby
gem 'tads6_patrick'
```

E então execute:

    $ bundle

Ou instale com:

    $ gem install tads6_patrick

## Como Usar - Parte 1

Após instalada a gem, o próximo passo é ir no arquivo o qual se tem a necessidade de uso da biblioteca, e digitar o seguinte comando no topo deste:

```ruby
require 'tads6_patrick'
```

No próximo passo, se deve atribuir por herança em nossa classe, O nome do modulo e biblioteca `Tads6Patrick::ORM`.
Veja abaixo como deve estar nosso arquivo.

```ruby
require 'tads6_patrick'
class Bolo < Tads6Patrick::ORM
end  
```
Só com o código disposto acima, ainda não temos o programa funcional. Para que funcione, é necessário ter uma `id` e `initializable`.

```ruby
require 'tads6_patrick'
class Bolo < Tads6Patrick::ORM
  attr_accessor :id, :titulo
  def initialize(atributos)
    		@titulo = atributos.first[:titulo]
  end      
end  
```
## Como Usar - Parte 2: CRUD

Para o satisfatório uso da biblioteca, esta tem disponível de forma fácil, as 4 operações do CRUD.
* Criar
* Listar
* Selecionar
* Atualizar
* Excluir

Segue exemplo para cada caso:

###Criar
```ruby
Bolo.criar(titulo:'Formigueiro')
```
OBS: Ao rodarmos o código acima, o seguinte caminho será gerado na pasta raiz do arquivo em execução: `db/bolo`
O nome da segunda pasta do caminho, dependerá do nome da classe usada. De uma forma ou de outra, os objetos serializados podem ser encontrados dentro deste.

###Listar
```ruby
Bolo.listar
```
###Selecionar
```ruby
Bolo.selecionar(n)
```
No exemplo acima, `n` corresponde ao id que queremos selecionar.

###Atualizar
```ruby
bolo = Bolo.selecionar(1)
bolo.titulo = "Quatro Leites"
Bolo.atualizar(bolo)
```
No caso acima, o atualizar é dependente do selecionar, uma vez selecionada a classe, modificamos seu atributo, para então em seguida, atualizar a classe.

###Deletar
```ruby
Bolo.deletar(n)
```
Acima temos o bolo do id `n` excluido.

## Desenvolvimento

Depois de verificar o repositório, execute o `bin / setup` para instalar dependências. Então, execute `rake spec` para executar os testes. Você também pode executar o `bin / console` para um prompt interativo que permitirá que você experimente.

Para instalar esta gem na sua máquina local, execute `bundle exec rake install`. Para liberar uma nova versão, atualize o número da versão em `version.rb`, e então execute` bundle exec rake release`, que irá criar uma tag git para a versão, push commits git e tags, e pressionar o arquivo `.gem` arquivo para [rubygems.org] (https://rubygems.org).

## Contribuição

Relatórios de bugs e pedidos de pull são bem-vindos no GitHub em https://github.com/[PatrickMendC]/tads6_patrick. Porém, o presente projeto destina-se a ser material de avaliação pelo professor da disciplina de Frameworks.

## Licença

A gem está disponível como código aberto sob os termos da [MIT License](https://opensource.org/licenses/MIT).

## Codigo de Conduta

Everyone interacting in the Tads6Patrick project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/tads6_patrick/blob/master/CODE_OF_CONDUCT.md).
