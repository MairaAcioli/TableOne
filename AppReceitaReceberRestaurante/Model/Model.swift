//
//  Model.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 13/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import Foundation

import UIKit

enum TipoDado: String {
    case receber = "Receber"
    case receita = "Receita"
    case restaurante = "Restaurante"
}

struct GenericData {
    var titulo: String
    var fotoPrincipal: String
    var conteudo: String
    var conteudoDetalhes: String?
    var categoria: String
    var fotosArray: [String]
    var tipoDeDado: TipoDado
    
    var logoEmpresa1: String
    var nomeEmpresa1: String
    var descricaoEmpresa1: String
    var siteEmpresa1: String
    
    var logoEmpresa2: String
    var nomeEmpresa2: String
    var descricaoEmpresa2: String
    var siteEmpresa2: String
    
    var tag: String 
    
    
}

//struct Receber {
//    
//    var fotoReceber: String? //fotoPrincipal
//    var tituloReceber: String //titulo
//    var fonteReceber: String //categoria
//    var conteudoReceber: String //conteudo
//    var fotosReceberArray: [String] //fotosArray
//}
//
//struct Receita {
//    
//    var fotoReceita: String //fotoPrincipal
//    var nomeReceita: String //titulo
//    var tipoReceita: String //categoria
//    var ingredientesReceita: String //conteudo
//    var modoDePreparoReceita: String //conteudo
//    var fotosReceitaArray: [String]?  //fotosArray
//}
//
//struct Restaurante {
//    
//    var fotoRestaurante: String //fotoPrincipal
//    var nomeRestaurante: String //titulo
//    var categoriaRestaurante: String //categoria
//    var releaseRestaurante: String //conteudo
//    var fotosRestauranteArray: [String]?  //fotosArray
//}
//
//
