package com.lucasian.nsjp.app

class Imputado {

    static constraints = {
    }
    static belongsTo = [delito: Delito]
    String nombre
    Integer edad
    String escolaridad
    String estadoCivil
    String genero
    String toString(){
        ""+nombre+":"+edad
    }    
}
