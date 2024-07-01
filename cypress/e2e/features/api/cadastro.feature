Feature: Formulário de Contato

    Eu como usuario
    Quero utilizar o formulario de contato
    Para que possa contatar a empresa

     

    Scenario Outline: Validar formulário de contato com sucesso
        Given que eu envio o formulário com os dados de cadastro <Name> <Email> <Company> <Website> <Phone> <Inquiry>


        Then o status da resposta e 200 com possui sucesso true

        Examples:
            | Name              | Email                     | Company         | Website                | Phone           | Inquiry                           |
            | João da Silva 123 | joao.silva123@example.com | Empresa XYZ 123 | http://www.empresa.com | (51) 34567-8901 | Tenho interesse em seus serviços. |

 
    Scenario Outline: Validar formulário de contato com dados invalidos
        Given que eu envio o formulário com os dados de cadastro <Name> <Email> <Company> <Website> <Phone> <Inquiry>


        Then o status da resposta é 412 mensagem "<mensagem>"

        Examples:
            | Name              | Email                     | Company         | Website                | Phone           | Inquiry                           | mensagem                |
            | João da Silva 123 | joao.silva123example.com  | Empresa XYZ 123 | http://www.empresa.com | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Email inválido.   |
            | João da Silva 123 | joao.silva12@3example.com | Empresa_XYZ123  | http://www.empresa.com | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Company inválido. |
            | João da Silva 123 | joao.silva12@3example.com | Empresa XYZ 123 | http://www_empresa_com | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Website inválido. |
            | João da Silva 123 | joao.silva12@3example.com | Empresa XYZ 123 | http://www.empresa.com | (51) AB67-8901  | Tenho interesse em seus serviços. | Campo Phone inválido.   |
            | João da Silva 123 | joao.silva12@3example.com | Empresa XYZ 123 | http://www.empresa.com | (51) 34567-8901 | Tenho interesse @ seus serviços.  | Campo Inquiry inválido. |



    Scenario Outline: Validar campos obrigatorios do formulário de contato
        Given que eu envio o formulário com os dados de cadastro <Name> <Email> <Company> <Website> <Phone> <Inquiry>


        Then o status da resposta é 412 mensagem "<mensagem>"

        Examples:
            | Name              | Email                     | Company         | Website                | Phone           | Inquiry                           | mensagem                |
            | {backspace}       | joao.silva123@example.com | Empresa XYZ 123 | http://www.empresa.com | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Name inválido.    |
            | João da Silva 123 |                           | Empresa XYZ 123 | http://www.empresa.com | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Email inválido.   |
            | João da Silva 123 | joao.silva123@example.com |                 | http://www.empresa.com | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Company inválido. |
            | João da Silva 123 | joao.silva123@example.com | Empresa XYZ 123 |                        | (51) 34567-8901 | Tenho interesse em seus serviços. | Campo Website inválido. |
            | João da Silva 123 | joao.silva123@example.com | Empresa XYZ 123 | http://www.empresa.com |                 | Tenho interesse em seus serviços. | Campo Phone inválido.   |
            | João da Silva 123 | joao.silva123@example.com | Empresa XYZ 123 | http://www.empresa.com | (51) 34567-8901 |                                   | Campo Inquiry inválido. |
