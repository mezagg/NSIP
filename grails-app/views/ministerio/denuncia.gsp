<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="layout" content="main"/>
        <script type="text/javascript">

            // ref: http://diveintohtml5.org/detect.html
            function supports_input_placeholder()
            {
            var i = document.createElement('input');
            return 'placeholder' in i;
            }

            if(!supports_input_placeholder()) {
            var fields = document.getElementsByTagName('INPUT');
            for(var i=0; i < fields.length; i++) {
            if(fields[i].hasAttribute('placeholder')) {
            fields[i].defaultValue = fields[i].getAttribute('placeholder');
            fields[i].onfocus = function() { if(this.value == this.defaultValue) this.value = ''; }
            fields[i].onblur = function() { if(this.value == '') this.value = this.defaultValue; }
            }
            }
            }

        </script>

        <style type="text/css">

            input:required:invalid, input:focus:invalid {
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAeVJREFUeNqkU01oE1EQ/mazSTdRmqSxLVSJVKU9RYoHD8WfHr16kh5EFA8eSy6hXrwUPBSKZ6E9V1CU4tGf0DZWDEQrGkhprRDbCvlpavan3ezu+LLSUnADLZnHwHvzmJlvvpkhZkY7IqFNaTuAfPhhP/8Uo87SGSaDsP27hgYM/lUpy6lHdqsAtM+BPfvqKp3ufYKwcgmWCug6oKmrrG3PoaqngWjdd/922hOBs5C/jJA6x7AiUt8VYVUAVQXXShfIqCYRMZO8/N1N+B8H1sOUwivpSUSVCJ2MAjtVwBAIdv+AQkHQqbOgc+fBvorjyQENDcch16/BtkQdAlC4E6jrYHGgGU18Io3gmhzJuwub6/fQJYNi/YBpCifhbDaAPXFvCBVxXbvfbNGFeN8DkjogWAd8DljV3KRutcEAeHMN/HXZ4p9bhncJHCyhNx52R0Kv/XNuQvYBnM+CP7xddXL5KaJw0TMAF8qjnMvegeK/SLHubhpKDKIrJDlvXoMX3y9xcSMZyBQ+tpyk5hzsa2Ns7LGdfWdbL6fZvHn92d7dgROH/730YBLtiZmEdGPkFnhX4kxmjVe2xgPfCtrRd6GHRtEh9zsL8xVe+pwSzj+OtwvletZZ/wLeKD71L+ZeHHWZ/gowABkp7AwwnEjFAAAAAElFTkSuQmCC);
            background-position: right top;
            background-repeat: no-repeat;
            -moz-box-shadow: none;
            }
            input:required:valid {
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAepJREFUeNrEk79PFEEUx9/uDDd7v/AAQQnEQokmJCRGwc7/QeM/YGVxsZJQYI/EhCChICYmUJigNBSGzobQaI5SaYRw6imne0d2D/bYmZ3dGd+YQKEHYiyc5GUyb3Y+77vfeWNpreFfhvXfAWAAJtbKi7dff1rWK9vPHx3mThP2Iaipk5EzTg8Qmru38H7izmkFHAF4WH1R52654PR0Oamzj2dKxYt/Bbg1OPZuY3d9aU82VGem/5LtnJscLxWzfzRxaWNqWJP0XUadIbSzu5DuvUJpzq7sfYBKsP1GJeLB+PWpt8cCXm4+2+zLXx4guKiLXWA2Nc5ChOuacMEPv20FkT+dIawyenVi5VcAbcigWzXLeNiDRCdwId0LFm5IUMBIBgrp8wOEsFlfeCGm23/zoBZWn9a4C314A1nCoM1OAVccuGyCkPs/P+pIdVIOkG9pIh6YlyqCrwhRKD3GygK9PUBImIQQxRi4b2O+JcCLg8+e8NZiLVEygwCrWpYF0jQJziYU/ho2TUuCPTn8hHcQNuZy1/94sAMOzQHDeqaij7Cd8Dt8CatGhX3iWxgtFW/m29pnUjR7TSQcRCIAVW1FSr6KAVYdi+5Pj8yunviYHq7f72po3Y9dbi7CxzDO1+duzCXH9cEPAQYAhJELY/AqBtwAAAAASUVORK5CYII=);
            background-position: right top;
            background-repeat: no-repeat;
            }

        </style>
        <title>Generar denuncia</title>
    </head>
    <body>
        <div class="row">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-12">
                        <ol class="breadcrumb">
                            <li><a href="${request.contextPath}">Home</a></li>
                            <li class="active"><span>Denuncia</span></li>
                        </ol>
                        <h1>Generar Denuncia</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                            <div class="main-box clearfix" style="min-height: 820px;">
                                <header class="main-box-header clearfix">
                                    <h2>Captura los datos en el orden presentado</h2>
                                </header>
                                <div class="main-box-body clearfix">
                                        <div class="modal fade" id="myModalVentanaEmer" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Cancelar Registro de Denuncia</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div>
                                                            ¿Está seguro que desea cancelar el registro?
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <a href="${request.contextPath}" class="btn btn-primary" >                                            
                                                            <span  style="padding-right: 10px;"></span> Si
                                                        </a>   
                                                        <a data-dismiss="modal" class="btn btn-danger">                                            
                                                            <span style="padding-right: 10px;"></span> No
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="myWizard" class="wizard">
                                            <div class="wizard-inner">
                                                <ul class="steps">
                                                    <li data-target="#step1" class="active"><span class="badge badge-primary">1</span>Delito<span class="chevron"></span></li>
                                                    <li data-target="#step2"><span class="badge">2</span>Victima<span class="chevron"></span></li>
                                                    <li data-target="#step3"><span class="badge">3</span>Presunto Responsable<span class="chevron"></span></li>
                                                    <li data-target="#step4"><span class="badge">4</span>IPH<span class="chevron"></span></li>
                                                    <li data-target="#step5"><span class="badge">5</span>Archivos<span class="chevron"></span></li>
                                                </ul>
                                                <div class="actions" style="z-index: 1">
                                                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModalVentanaEmer"></i>Cancelar</button>
                                                    <button type="button" class="btn btn-default btn-mini btn-prev"></i>Anterior</button>
                                                    <button type="button" class="btn btn-success btn-mini btn-next" data-last="Guardar" onclick="if($(this).html().indexOf('Guardar')==0){$('#denuncia').submit();}">Siguiente</i></button>
                                                </div>
                                            </div>
                                            <g:form controller="ministerio" action="guardarDenuncia" name="denuncia">
                                                <div class="step-content">
                                                    <div class="step-pane active" id="step1">
                                                        <br/>
                                                        <h4>1.- Datos del delito</h4>
                                                        <div class="form-group">
                                                            <label for="delito">Nombre</label>
                                                            <input type="text" class="form-control" name="clasificacionDelito.nombre" placeholder="Nombre del delito" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Modalidad </label>
                                                            <input type="text" class="form-control" name="clasificacionDelito.modalidad" placeholder="Modalidad del delito" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Modus</label>
                                                            <input type="text" class="form-control" name="clasificacionDelito.modus" placeholder="Modus del delito" required>
                                                        </div>                                                
                                                    </div>
                                                    <div class="step-pane" id="step2">
                                                        <br/>
                                                        <h4>2.- Datos de la victima</h4>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Nombre </label>
                                                            <input type="text" class="form-control" name="victima.nombre" placeholder="Nombre completo de la victima" required>
                                                        </div>                                                
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Genero </label>
                                                            <select class="form-control" name="victima.genero">
                                                                <option>Femenino</option>
                                                                <option>Masculino</option>
                                                            </select>
                                                        </div>                                                
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Edad</label>
                                                            <input type="text" class="form-control" name="victima.edad" placeholder="Edad de la victima" required>
                                                        </div>                                                
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Estado Civil</label>
                                                            <input type="text" class="form-control" name="victima.estadoCivil" placeholder="Estado civil de la victima" required>
                                                        </div>                                                
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Escolaridad</label>
                                                            <input type="text" class="form-control" name="victima.escolaridad" placeholder="Escolaridad de la victima" required>
                                                        </div>                                                

                                                    </div>
                                                    <div class="step-pane" id="step3">
                                                        <br/>
                                                        <h4>3.- Datos del presunto responsable</h4>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Nombre </label>
                                                            <input type="text" class="form-control" name="imputado.nombre" placeholder="Nombre completo del presunto responsable" required>
                                                        </div>                                                
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Genero </label>
                                                            <select class="form-control" name="imputado.genero">
                                                                <option>Femenino</option>
                                                                <option>Masculino</option>
                                                            </select>
                                                        </div>                                                
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Edad</label>
                                                            <input type="text" class="form-control" name="imputado.edad" placeholder="Edad del presunto responsable" required>
                                                        </div>                                                
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Estado Civil</label>
                                                            <input type="text" class="form-control" name="imputado.estadoCivil" placeholder="Estado civil del presunto responsable" required>
                                                        </div>                                                
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Escolaridad</label>
                                                            <input type="text" class="form-control" name="imputado.escolaridad" placeholder="Escolaridad del presunto responsable" required>
                                                        </div>                                                 
                                                    </div>
                                                    <div class="step-pane" id="step4">
                                                        <br/>
                                                        <h4>4.- IPH</h4>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" id="textoIph" size="40" placeholder="Seleccione un IPH  " required>
                                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Buscar IPH</button>
                                                        </div>
                                                    </div>
                                                </g:form>

                                                <div class="step-pane" id="step5">
                                                    <br/>
                                                    <div class="panel-group accordion" id="accordion">                                                        
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                <h4 class="panel-title">
                                                                    <a class="accordion-toggle " data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                                                                        Plantillas
                                                                    </a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseFour" class="panel-collapse collapse in" style="height: 1px;">
                                                                <div class="panel-body">
                                                                    <a href=${resource(dir: 'Plantillas', file: 'PlantillaDenuncia.docx')} title="Descargar">
                                                                        <span class="fa fa-file-word-o" style="padding-right: 10px;"></span> Plantilla Denuncia
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>                                                                                        

                                                </div>

                                            </div>
                                        </div>                                
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Modal-->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">Número de IPH</h4>
                                <input class="form-control" type="search" id="SearchBox" />
                            </div>
                            <div class="modal-body">
                                <div class="scrollable" id="CustomerSelectDiv">
                                    <select size="2" class="form-control" id="CustomerSelect">
                                        <option>IPH/FG/XX/PGU/2015/BB-9</option>
                                        <option>IPH/FG/XX/PGU/2015/BB-10</option>
                                        <option>IPH/FG/XX/PGU/2015/BB-11</option>
                                        <option>IPH/FG/XX/PGU/2015/BB-12</option>
                                        <option>IPH/FG/XX/PGU/2015/BB-8</option>
                                    </select>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                <button type="button" class="btn btn-primary" onclick="document.getElementById('textoIph').value = CustomerSelect.value;" data-dismiss="modal">Seleccionar</button>
                            </div>
                        </div>
                    </div>
                </div>
          <!--Fin Modal-->
                <script type="text/javascript">
                    var showOnlyOptionsSimilarToText = function (selectionEl, str, isCaseSensitive) {
                    if (isCaseSensitive)
                    str = str.toLowerCase();
                // cache the jQuery object of the <select> element
                    var $el = $(selectionEl);
                    if (!$el.data("options")) {
                    // cache all the options inside the <select> element for easy recover
                    $el.data("options", $el.find("option").clone());
                    }
                    var newOptions = $el.data("options").filter(function () {
                    var text = $(this).text();
                    if (isCaseSensitive)
                    text = text.toLowerCase();
                    return text.match(str);
                    });
                    $el.empty().append(newOptions);
                    };

                    $("#SearchBox").on("keyup", function () {
                    var userInput = $("#SearchBox").val();
                    showOnlyOptionsSimilarToText($("#CustomerSelect"), userInput.toUpperCase());
                    });
                </script>
            </body>
        </html>
