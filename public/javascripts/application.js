// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(function(){

    /* mascaras*/
    Mascaras();
    function Mascaras($){
        jQuery(".cpf").setMask({
            mask: '999.999.999-99'
        });
        jQuery(".cnpj").setMask({
            mask: '99.999.999/9999-99'
        });
        jQuery(".cep").setMask({
            mask: '99.999-999'
        });
        jQuery(".telefone").setMask({
            mask: '9999-9999'
        });
        jQuery(".ddd").setMask({
            mask: '99'
        });
        jQuery(".tel").setMask({
            mask: '(99)9999-9999'
        });
        jQuery(".4digitos").setMask({
            mask: '9999'
        });
        jQuery(".7digitos").setMask({
            mask: '9999999'
        });
        jQuery(".barras").setMask({
            mask: '999999999'
        });
    }
});