<%-- 
    Document   : lista
    Created on : 23/12/2014, 02:25:40 PM
    Author     : (°_°)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://code.jquery.com/jquery-latest.js">
            
        </script>
        <script>
            $(document).ready(function(){
                $('#submit').click(function (event){
                    var paci = $('#paci').val();
                    var RA = $('#RA').val();
                    var procedi = $('#procedi').val();
                    var peso = $('#peso').val();
                    var hora = $('#hora').val();
                    var etiqueta = $('#etiqueta').val();
                    $.post('s1',{
                        paci : paci,
                        RA : RA,
                        procedi : procedi,
                        peso : peso,
                        hora : hora,
                        etiqueta : etiqueta
                    }), function(responseText){
                                $('#tabla').html(responseText)
                            }
                        
                    });
                }); 
            
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="s1">
            <input type="submit" name="sub" value="ENNN"/>
        </form>
    </body>
</html>
