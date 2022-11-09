$( document ).ready(function() {
    console.log( "ready!" );
});

$(document).on('submit','#refreshLayout',function(e) {
    
    var consultFloor = $("#consultFloor").val();
    var consultRoom = $("#consultRoom").val();

    e.preventDefault(); /* Essa função evita de recarregar a página no evento 'Submit' */

    if (!consultFloor && !consultRoom) {    
        return; /* Caso falte preencher algum campo do formulário, sai do script */
    }; 

    $.ajax ({

        type:'POST',
        url:'/refresh_layout', /* URL para rota flask */
        data: { /* Passa um dicionário com os dados inseridos no formulário para o Flask registrar */
            floor : consultFloor,
            room : consultRoom
        }

    });
});

$(document).on('submit','#consultSlot',function(e) {
    
    var consultSlot = $("input[name='slotComputer']:checked").val();

    e.preventDefault(); /* Essa função evita de recarregar a página no evento 'Submit' */

    if (!consultSlot) {    
        return; /* Caso falte preencher algum campo do formulário, sai do script */
    }; 

    $.ajax ({

        type:'POST',
        url:'/consult_slot', /* URL para rota flask */
        data: { slot : consultSlot } /* Passa um dicionário com os dados inseridos no formulário para o Flask registrar */

    });
});

$(document).on('submit','#addSlot',function(e) {
    
    var addMonitor = $("#addMonitor").val();
    var addComputer = $("#addComputer").val();
    var addKeyboard = $("#addKeyboard").val();
    var addMouse = $("#addMouse").val();

    e.preventDefault(); /* Essa função evita de recarregar a página no evento 'Submit' */

    if (!addMonitor && !addComputer && !addKeyboard && !addMouse) {    
        return; /* Caso falte preencher algum campo do formulário, sai do script */
    }; 

    $.ajax ({

        type:'POST',
        url:'/add_slot', /* URL para rota flask */
        data: { /* Passa um dicionário com os dados inseridos no formulário para o Flask registrar */
            monitor : addMonitor,
            computer : addComputer,
            keyboard : addKeyboard,
            mouse : addMouse
        }

    });
});

$(document).on('submit','#editSlot',function(e) {
    
    var editMonitorConfig = $("#editMonitorConfig").val();
    var editComputerConfig = $("#editComputerConfig").val();
    var editKeyboardConfig = $("#editKeyboardConfig").val();
    var editMouseConfig = $("#editMouseConfig").val();

    var editMonitorStatus = $("#editMonitorStatus").val();
    var editComputerStatus = $("#editComputerStatus").val();
    var editKeyboardStatus = $("#editKeyboardStatus").val();
    var editMouseStatus = $("#editMouseStatus").val();

    e.preventDefault(); /* Essa função evita de recarregar a página no evento 'Submit' */

    if (!editMonitorConfig && !editComputerConfig && !editKeyboardConfig && !editMouseConfig && !editMonitorStatus && !editComputerStatus && !editKeyboardStatus && !editMouseStatus) {    
        return; /* Caso falte preencher algum campo do formulário, sai do script */
    }; 

    $.ajax ({

        type:'POST',
        url:'/edit_slot', /* URL para rota flask */
        data: { /* Passa um dicionário com os dados inseridos no formulário para o Flask registrar */
            monitorConfig : editMonitorConfig,
            computerConfig : editComputerConfig,
            keyboardConfig : editKeyboardConfig,
            mouseConfig : editMouseConfig,
            monitorStatus : editMonitorStatus,
            computerStatus : editComputerStatus,
            keyboardStatus : editKeyboardStatus,
            mouseStatus : editMouseStatus
        }

    });
});

$(document).on('submit','#deleteSlot',function(e) {
    
    var deleteMonitor = $("#deleteMonitor").val();
    var deleteComputer = $("#deleteComputer").val();
    var deleteKeyboard = $("#deleteKeyboard").val();
    var deleteMouse = $("#deleteMouse").val();

    e.preventDefault(); /* Essa função evita de recarregar a página no evento 'Submit' */

    if (!deleteMonitor && !deleteComputer && !deleteKeyboard && !deleteMouse) {    
        return; /* Caso falte preencher algum campo do formulário, sai do script */
    }; 

    $.ajax ({

        type:'POST',
        url:'/delete_slot', /* URL para rota flask */
        data: { /* Passa um dicionário com os dados inseridos no formulário para o Flask registrar */
            monitor : deleteMonitor,
            computer : deleteComputer,
            keyboard : deleteKeyboard,
            mouse : deleteMouse
        }

    });
});

$(document).on('submit','#formEmail',function(e) {/* <!-- Essa função será ativada, quando o usuário clicar em qualquer botão 'Submit' do formulário --> */

    var c1_name = $("#c1_name").val();
    var c1_email = $("#c1_email").val();
    var c1_floor = $("#c1_floor").val();
    var c1_room = $("#c1_room").val();
    var c2_pc = $("input[name='c2_computadores']:checked").val(); /* Pega o valor(número) do computador que está selecionado */
    var c3_assunto = $("#c3_subject").val();
    var c3_texto = $("#c3_description").val();

    var btn = ($(document.activeElement).val()); /* Salva o valor do botão 'Submit', para verificar qual deles foi clicado */

    if (btn == 'SendMail') {
        
        e.preventDefault(); /* Essa função evita de recarregar a página no evento 'Submit' */

        if (!c1_name && !c1_email && !c1_floor && !c1_room && !c2_pc && !c3_assunto && !c3_texto) {    
            return; /* Caso falte preencher algum campo do formulário, sai do script */
        };        

        var nFile = document.getElementById('formFile').files.length; /* Salva o número de arquivos anexados ao formulário */

        if (nFile > 0) { /* Verifica se foi inserido pelo menos um arquivo no formulário */
                
            var form_data = new FormData();           
            form_data.append('file', document.getElementById('formFile').files[0]); /* Anexa o arquivo ao objeto FormData */

            $.ajax ({

                type:'POST',
                url:'/upload_file', /* URL para rota flask */
                data: form_data, /* Passa o objeto com o arquivo do formulário para o Flask fazer o upload */
                contentType: false,
                cache: false,
                processData: false  
                            
            });

        };

        $.ajax ({

            type:'POST',
            url:'/create_request', /* URL para rota flask */
            data: { /* Passa um dicionário com os dados inseridos no formulário para o Flask registrar */
                name : c1_name,
                mail : c1_email,
                floor : c1_floor,
                room : c1_room,
                pc : c2_pc,
                subject : c3_assunto,
                description : c3_texto
            }

        });

        $('#formEmail')[0].reset(); /* Reseta os dados inseridos no formulário */
    };
    
});