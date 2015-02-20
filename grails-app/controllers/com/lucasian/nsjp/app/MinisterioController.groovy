package com.lucasian.nsjp.app

import org.docx4j.openpackaging.packages.WordprocessingMLPackage

import org.springframework.web.multipart.MultipartFile
import java.text.SimpleDateFormat
import org.apache.commons.io.FileUtils
class MinisterioController {
    def grailsApplication
    def denuncia() { }
    def guardarDenuncia(Delito delito){                
        delito.save()
        Expediente expediente = new Expediente(delito: delito);
        delito.expediente = expediente        
        expediente.numeroExpediente = params.numeroExpediente //'COA/FG/XX/PGU/2014/AA-'
        //expediente.save()                
        //expediente.numeroExpediente = 'COA/FG/XX/PGU/2014/AA-'+expediente.id
        expediente.save()
        try{
            File srcDir = new File(''+grailsApplication.config.grails.images.temp+'/'+session.id)
            File destDir = new File(''+grailsApplication.config.grails.images.expedientes+"/"+expediente.numeroExpediente)
            FileUtils.copyDirectory(srcDir, destDir)
        }catch(Exception e){
            println(e)
        }
        [expediente: expediente]
    }
    def subirArchivo(FileUploadCommand command){
        if(!command.file.empty){            
            try{
                def storagePath = ''+grailsApplication.config.grails.images.temp+'/'+session.id+'/'+params.id
                def storagePathDirectory = new File(storagePath)
                if (!storagePathDirectory.exists()) {
                    print "CREATING DIRECTORY "+storagePath
                    if (storagePathDirectory.mkdirs()) {
                        println "SUCCESS"
                    } else {
                        println "FAILED"
                    }
                }
                def archivo = new File(storagePath+"/"+command.file.originalFilename)
                println(archivo)
                command.file.transferTo(archivo)
            }catch(Exception e){
                println(e)
            }                
        }
        render ""
    }
 
    def exportWord = {
      WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.createPackage()
      def mainPart = wordMLPackage.getMainDocumentPart()
      SimpleDateFormat format1 = new SimpleDateFormat("dd/MM/yyyy")
      SimpleDateFormat format2 = new SimpleDateFormat("hh:mm:ss a")

      // create some styled heading...
      mainPart.addStyledParagraphOfText("Heading1", "ACTA DE DENUNCIA O QUERELLA")
      mainPart.addStyledParagraphOfText("Heading3", "DATOS GENERALES DE LA DENUNCIA")
      mainPart.addStyledParagraphOfText("Normal", "Número de denuncia: " + params.numeroExpediente + "                                             Fecha: " + format1.format(Calendar.getInstance().getTime()).toString())
      mainPart.addStyledParagraphOfText("Normal", "Número del IPH vinculado: " + params.textoIph + "                                               Hora: " + format2.format(Calendar.getInstance().getTime()).toString())
      mainPart.addStyledParagraphOfText("Normal", "Agencia: ")
      mainPart.addStyledParagraphOfText("Normal", "Nombre Delito: " + params.clasificacionDelito.nombre)
      mainPart.addStyledParagraphOfText("Normal", "Modalidad del Delito: " + params.clasificacionDelito.modalidad)
      mainPart.addStyledParagraphOfText("Normal", "Modus del Delito: " + params.clasificacionDelito.modus)
      mainPart.addStyledParagraphOfText("Heading3", "IDIOMA DEL  DENUNCIANTE  O  QUERELLANTE")
      mainPart.addStyledParagraphOfText("Normal", "Habla español: Si[ ]   No[ ]")
      mainPart.addStyledParagraphOfText("Normal", "En caso negativo especificar idioma o lengua: ")
      mainPart.addStyledParagraphOfText("Normal", "Nombre del intérprete: ")
      mainPart.addStyledParagraphOfText("Heading3", "\nDATOS GENERALES DEL  DENUNCIANTE  O  QUERELLANTE")
      mainPart.addStyledParagraphOfText("Normal", "Nombre: " + params.victima.nombre)
      mainPart.addStyledParagraphOfText("Normal", "Documento de identificación (especificar): ")
      mainPart.addStyledParagraphOfText("Normal", "Sexo: " + params.victima.genero)
      mainPart.addStyledParagraphOfText("Normal", "Edad referida: " + params.victima.edad + "                       Fecha nacimiento: ")
      mainPart.addStyledParagraphOfText("Normal", "Nacionalidad: ")
      mainPart.addStyledParagraphOfText("Normal", "Dirección: ")
      mainPart.addStyledParagraphOfText("Normal", "Teléfono(s):                             Correo electrónico: ")
      mainPart.addStyledParagraphOfText("Normal", "Religión:                                Pertenece a algún grupo étnico: Si[ ]   No[ ]")
      mainPart.addStyledParagraphOfText("Normal", "Estado civil: " + params.victima.estadoCivil + "                 Ocupación: ")
      mainPart.addStyledParagraphOfText("Normal", "Escolaridad: " + params.victima.escolaridad)
      mainPart.addStyledParagraphOfText("Normal", "¿Tiene alguna relación con el imputado? Si[ ]    No [ ]")
      mainPart.addStyledParagraphOfText("Normal", "En caso afirmativo especificar qué tipo de relación: ")
      mainPart.addStyledParagraphOfText("Normal", "*¿Se omiten datos generales del denunciante o querellante por tratarse de denuncia anónima? Si[ ]  No[ ]")
      mainPart.addStyledParagraphOfText("Heading3", "\nDATOS GENERALES DEL IMPUTADO O PRESUNTO RESPONSABLE")
      mainPart.addStyledParagraphOfText("Normal", "Nombre: " + params.imputado.nombre)
      mainPart.addStyledParagraphOfText("Normal", "Documento de identificación (especificar): ")
      mainPart.addStyledParagraphOfText("Normal", "Sexo: " + params.imputado.genero)
      mainPart.addStyledParagraphOfText("Normal", "Edad referida: " + params.imputado.edad + "                       Fecha nacimiento: ")
      mainPart.addStyledParagraphOfText("Normal", "Nacionalidad: ")
      mainPart.addStyledParagraphOfText("Normal", "Dirección: ")
      mainPart.addStyledParagraphOfText("Normal", "Teléfono(s):                             Correo electrónico: ")
      mainPart.addStyledParagraphOfText("Normal", "Religión:                                Pertenece a algún grupo étnico: Si[ ]   No[ ]")
      mainPart.addStyledParagraphOfText("Normal", "Estado civil: " + params.imputado.estadoCivil + "                 Ocupación: ")
      mainPart.addStyledParagraphOfText("Normal", "Escolaridad: " + params.imputado.escolaridad)
      mainPart.addStyledParagraphOfText("Heading3", "\nRELATO DE LOS HECHOS VERTIDO POR EL DENUNCIANTE O QUERELLANTE")
      mainPart.addStyledParagraphOfText("Normal", "")

      /* Add our list of Expedientes to the document
      Expediente.list().each { Expediente ->
        mainPart.addParagraphOfText(Expediente.numeroExpediente)
      }*/

      // write out our word doc to disk
      File file = File.createTempFile("wordexport-", ".docx")
      wordMLPackage.save file

      // and send it all back to the browser
      response.setHeader("Content-disposition", "attachment; filename=PlantillaDenuncia.docx");
      response.setContentType("application/vnd.openxmlformats-officedocument.wordprocessingml.document")
      response.outputStream << file.readBytes()
      file.delete()

    }
}
