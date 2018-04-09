#encoding: utf-8

require_relative '../../../src/gamer.rb'

Quando(/^começo um novo jogo$/) do
    @game = Game.new
    @game.start
  end
  
  Então(/^vejo a seguinte mensagem na tela:$/) do |message|
   
    expect(@game.output).to eql message
  end