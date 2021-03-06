require "appium_console"
require "appium_lib"
require "cucumber"
require "rspec"
require_relative "../acts/ActsPO"
require_relative "../gets/GetsPO"


    When('the user click your register') do
        @act = ActsPO.new
        @get = GetsPO.new
        @act.seleciona_contato
    end

    When('click on delete button') do
        @act.deleta_cliente
    end

    Then('the register must be deleted') do
        response = @get.valida_registro_deletado
        expect(response).to eq (false)
    end