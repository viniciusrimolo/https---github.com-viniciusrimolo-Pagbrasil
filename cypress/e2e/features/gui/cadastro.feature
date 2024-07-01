Feature: Formulário de Contato

s
  Scenario Outline: Validar formulário de contato com sucesso
    Given que eu estou na página do formulário de contato
    When eu preencho o campo name com "<Name>"
    And eu preencho o campo email com "<Email>"
    And eu preencho o campo company com "<Company>"
    And eu preencho o campo website com "<Website>"
    And eu preencho o campo phone com "<Phone>"
    And eu preencho o campo inquiry com "<Inquiry>"
    Then eu submeto o formulário

    Examples:
      | Name              | Email                     | Company         | Website                | Phone           | Inquiry                           |
      | João da Silva 123 | joao.silva123@example.com | Empresa XYZ 123 | http://www.empresa.com | (51) 34567-8901 | Tenho interesse em seus serviços. |

  Scenario Outline: Validar formulário de contato com invalidos
    When eu preencho o campo name com "<Name>"
    And eu preencho o campo email com "<Email>"
    And eu preencho o campo company com "<Company>"
    And eu preencho o campo website com "<Website>"
    And eu preencho o campo phone com "<Phone>"
    And eu preencho o campo inquiry com "<Inquiry>"
    And eu submeto o formulário
    Then sera exibido a mensagem "<mensagem>"

    Examples:
      | Name              | Email                     | Company         | Website                | Phone           | Inquiry                           | mensagem                |
      | João da Silva 123 | joao.silva123example.com  | Empresa XYZ 123 | http://www.empresa.com | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Email inválido.   |
      | João da Silva 123 | joao.silva12@3example.com | Empresa_XYZ123  | http://www.empresa.com | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Company inválido. |
      | João da Silva 123 | joao.silva12@3example.com | Empresa XYZ 123 | http://www_empresa_com | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Website inválido. |
      | João da Silva 123 | joao.silva12@3example.com | Empresa XYZ 123 | http://www.empresa.com | (51) AB67-8901  | Tenho interesse em seus serviços. | Campo Phone inválido.   |
      | João da Silva 123 | joao.silva12@3example.com | Empresa XYZ 123 | http://www.empresa.com | (51) 34567-8901 | Tenho interesse @ seus serviços.  | Campo Inquiry inválido. |

  Scenario Outline: Validar campos obrigatorios do formulário de contato
    When eu preencho o campo name com "<Name>"
    And eu preencho o campo email com "<Email>"
    And eu preencho o campo company com "<Company>"
    And eu preencho o campo website com "<Website>"
    And eu preencho o campo phone com "<Phone>"
    And eu preencho o campo inquiry com "<Inquiry>"
    Then eu submeto o formulário

    Examples:
      | Name              | Email                     | Company         | Website                | Phone           | Inquiry                           | mensagem                |
      | {backspace}       | joao.silva123@example.com | Empresa XYZ 123 | http://www.empresa.com | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Name inválido.    |
      | João da Silva 123 |                           | Empresa XYZ 123 | http://www.empresa.com | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Email inválido.   |
      | João da Silva 123 | joao.silva123@example.com |                 | http://www.empresa.com | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Company inválido. |
      | João da Silva 123 | joao.silva123@example.com | Empresa XYZ 123 |                        | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Website inválido. |
      | João da Silva 123 | joao.silva123@example.com | Empresa XYZ 123 | http://www.empresa.com |                 | Tenho interesse em seus serviços. | Campo Phone inválido.   |
      | João da Silva 123 | joao.silva123@example.com | Empresa XYZ 123 | http://www.empresa.com | (51) 34567-8901 |                                   | Campo Inquiry inválido. |
