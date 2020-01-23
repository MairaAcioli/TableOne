//
//  UpLoadDados.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 21/11/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

import FirebaseDatabase

import FirebaseAuth
//
class UpLoadDados: NSObject {
    //    var array: [GenericData] = []
    //
    //    func upLoad() {
    //        var tipo: TipoDado = .receber
    //         array = [
    //           GenericData(titulo: "Aperitivos e Amigos", fotoPrincipal:  "aperitivosEAmigos", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Duas Gastronomia", fotosArray: ["aperitivosEAmigos01", "aperitivosEAmigos02", "aperitivosEAmigos03", "aperitivosEAmigos04","aperitivosEAmigos05", "aperitivosEAmigos06", "aperitivosEAmigos07", "aperitivosEAmigos08", "aperitivosEAmigos09", "aperitivosEAmigos10"], tipoDeDado: .receber, logoEmpresa1: "logoCosi", nomeEmpresa1: "Cosi Home", descricaoEmpresa1: "Objetos de decor genuinos e funcionais", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", tag: "aperitivo"),
    //
    //                GenericData(titulo: "Amor de Outono", fotoPrincipal:  "amorDeOutono01", conteudo: "Bolo de Rolo em São Paulo", conteudoDetalhes: nil, categoria: "Ghee Banqueteria", fotosArray: ["amorDeOutono02", "amorDeOutono03", "amorDeOutono04","amorDeOutono05", "amorDeOutono06", "amorDeOutono07", "amorDeOutono08", "amorDeOutono09", "amorDeOutono10", "amorDeOutono11", "amorDeOutono12", "amorDeOutono13", "amorDeOutono14", "amorDeOutono15"], tipoDeDado: .receber, logoEmpresa1: "logoCosi", nomeEmpresa1: "Cosi Home", descricaoEmpresa1: "Objetos de decor genuinos e funcionais", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", tag: "aperitivo"),
    //
    //                GenericData(titulo: "Café da Manhã com Tempo", fotoPrincipal:  "cafeDaManhaComTempo01", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Blue Gardenia", fotosArray: ["cafeDaManhaComTempo02", "cafeDaManhaComTempo03", "cafeDaManhaComTempo04", "cafeDaManhaComTempo05","cafeDaManhaComTempo06", "cafeDaManhaComTempo07", "cafeDaManhaComTempo08", "cafeDaManhaComTempo09"], tipoDeDado: .receber, logoEmpresa1: "logoCosi", nomeEmpresa1: "Cosi Home", descricaoEmpresa1: "Objetos de decor genuinos e funcionais", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", tag: "café da manhã"),
    //
    //                GenericData(titulo: "Flores, Café e Prosa", fotoPrincipal:  "floresCafeEProsa01", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "André Pedrotti Café e Chez Marina", fotosArray: ["floresCafeEProsa02", "floresCafeEProsa03", "floresCafeEProsa04", "floresCafeEProsa05","floresCafeEProsa06", "floresCafeEProsa07", "floresCafeEProsa08"], tipoDeDado: .receber, logoEmpresa1: "logoCosi", nomeEmpresa1: "Cosi Home", descricaoEmpresa1: "Objetos de decor genuinos e funcionais", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", tag: "chá da tarde"),
    //
    //                GenericData(titulo: "Moderno e Sofisticado", fotoPrincipal:  "modernoESofisticado01", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Chez Marina", fotosArray: ["modernoESofisticado02", "modernoESofisticado03", "modernoESofisticado04", "modernoESofisticado05","modernoESofisticado06"], tipoDeDado: .receber, logoEmpresa1: "logoCosi", nomeEmpresa1: "Cosi Home", descricaoEmpresa1: "Objetos de decor genuinos e funcionais", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", tag: "mesa posta"),
    //
    //                GenericData(titulo: "O Frescor do Limão", fotoPrincipal:  "oFrescorDoLimao01", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Jô Campos", fotosArray: ["oFrescorDoLimao02", "oFrescorDoLimao03", "oFrescorDoLimao04", "oFrescorDoLimao05","oFrescorDoLimao06", "oFrescorDoLimao07", "oFrescorDoLimao08", "oFrescorDoLimao09", "oFrescorDoLimao10", "oFrescorDoLimao11", "oFrescorDoLimao12"], tipoDeDado: .receber, logoEmpresa1: "logoCosi", nomeEmpresa1: "Cosi Home", descricaoEmpresa1: "Objetos de decor genuinos e funcionais", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", tag: "mesa posta")
    //            ]
    //
    //        var dict: [String:Any]?
    //
    //        for n in array {
    //
    //            let titulo = n.titulo
    //            let fotoPrincipal = n.fotoPrincipal
    //            let conteudo = n.conteudo
    //            let conteudoDetalhes = n.conteudoDetalhes
    //            let categoria = n.categoria
    //            let fotosArray = n.fotosArray
    //            let tipoDeDado = n.tipoDeDado.rawValue
    //
    //           dict = ["titulo": titulo, "fotoPrincipal": fotoPrincipal, "conteudo": conteudo, "conteudoDetalhes": conteudoDetalhes, "categoria": categoria, "fotosArray": fotosArray, "tipoDeDado": tipoDeDado ]
    //
    //            let context = Database.database().reference()
    //
    //            context.child("tela/receber").child(titulo).setValue(dict) { (error, context) in
    //
    //                if error == nil {
    //                    print("foi com sucesso")
    //                } else {
    //                    print("deu erro: \(error)")
    //                }
    //            }
    //
    //        }
    //
    //    }
    //
    func downLoad(completion: @escaping (String) -> Void){
        var ref: DatabaseReference!
        ref = Database.database().reference()
        
        let usuarioID = Auth.auth().currentUser?.uid
        ref.child("receita").observeSingleEvent(of: .value, with: { (snapshot) in
            // Get user value
            let value = snapshot.value as? Dictionary<String,AnyObject>
            for key in value!.keys {
                print(key)
                completion(key)
//                self.getRestItens(key: key)
            }
            
            print(value)
            
            
        }) { (error) in
            print(error.localizedDescription)
        }
    }
    
    func getRestItens(key: String, completion: @escaping (ReceitaModel) -> Void) {
        var ref: DatabaseReference!
        ref = Database.database().reference()
        ref.child("receita/\(key)").observeSingleEvent(of: .value, with: { (snapshot) in
            
            let titulo: String = snapshot.childSnapshot(forPath: "titulo").value as! String
            let chefReceita: String = snapshot.childSnapshot(forPath: "chefReceita").value as! String
            let fotoReceita: String = snapshot.childSnapshot(forPath: "fotoReceita").value as! String
            let ingredientes: String = snapshot.childSnapshot(forPath: "ingredientes").value as! String
            let modoDePreparo: String = snapshot.childSnapshot(forPath: "modoDePreparo").value as! String
            let tag: String = snapshot.childSnapshot(forPath: "tag").value as! String
            
            let receita = ReceitaModel(titulo: titulo, ingredientes: ingredientes, modoDePreparo: modoDePreparo, fotoReceita: fotoReceita, chefReceita: chefReceita, tag: tag)
            
            completion(receita)
            
            print(titulo, chefReceita, fotoReceita, ingredientes, modoDePreparo, tag)

        }) { (error) in
            print(error.localizedDescription)
        }
    }
    
    
}
