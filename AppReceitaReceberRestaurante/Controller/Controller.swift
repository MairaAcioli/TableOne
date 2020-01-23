//
//  Controller.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 13/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import Foundation

import UIKit

class GenericController {
    
    var tipo: TipoDado = .receber
    var array = [
        GenericData(titulo: "Aperitivos e Amigos", fotoPrincipal:  "aperitivosEAmigos", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Duas Gastronomia", fotosArray: ["aperitivosEAmigos01", "aperitivosEAmigos02", "aperitivosEAmigos03", "aperitivosEAmigos04","aperitivosEAmigos05", "aperitivosEAmigos06", "aperitivosEAmigos07", "aperitivosEAmigos08", "aperitivosEAmigos09", "aperitivosEAmigos10"], tipoDeDado: .receber, logoEmpresa1: "logoCosi", nomeEmpresa1: "Cosi Home", descricaoEmpresa1: "Objetos de decor genuinos e funcionais.", siteEmpresa1: "https://www.cosihome.com.br", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", siteEmpresa2: "https://www.instagram.com/duasgastronomia/?hl=pt-br", tag: "aperitivo"),
        
        GenericData(titulo: "Amor de Outono", fotoPrincipal:  "amorDeOutono01", conteudo: "Bolo de Rolo em São Paulo", conteudoDetalhes: nil, categoria: "Ghee Banqueteria", fotosArray: ["amorDeOutono02", "amorDeOutono03", "amorDeOutono04","amorDeOutono05", "amorDeOutono06", "amorDeOutono07", "amorDeOutono08", "amorDeOutono09", "amorDeOutono10", "amorDeOutono11", "amorDeOutono12", "amorDeOutono13", "amorDeOutono14", "amorDeOutono15"], tipoDeDado: .receber, logoEmpresa1: "logo-ghee", nomeEmpresa1: "Ghee Banqueteria", descricaoEmpresa1: "Buffet para eventos sociais e corporativos.", siteEmpresa1: "http://www.ghee.com.br", logoEmpresa2: "logoDuas", nomeEmpresa2: "D.Filipa", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", siteEmpresa2: "https://www.instagram.com/dfilipa/", tag: "aperitivo"),

        GenericData(titulo: "Café da Manhã com Tempo", fotoPrincipal:  "cafeDaManhaComTempo01", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Blue Gardenia", fotosArray: ["cafeDaManhaComTempo02", "cafeDaManhaComTempo03", "cafeDaManhaComTempo04", "cafeDaManhaComTempo05","cafeDaManhaComTempo06", "cafeDaManhaComTempo07", "cafeDaManhaComTempo08", "cafeDaManhaComTempo09"], tipoDeDado: .receber, logoEmpresa1: "blueGardenia", nomeEmpresa1: "Blue Gardenia", descricaoEmpresa1: "Loja especializada em roupas de cama e decoração de luxo.", siteEmpresa1:"https://www.bluegardenia.com.br", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", siteEmpresa2: "https://www.instagram.com/paninoteca_/", tag: "café da manhã"),

        GenericData(titulo: "Flores, Café e Prosa", fotoPrincipal:  "floresCafeEProsa01", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "André Pedrotti Café e Chez Marina", fotosArray: ["floresCafeEProsa02", "floresCafeEProsa03", "floresCafeEProsa04", "floresCafeEProsa05","floresCafeEProsa06", "floresCafeEProsa07", "floresCafeEProsa08"], tipoDeDado: .receber, logoEmpresa1: "patiPiva", nomeEmpresa1: "Pati Piva", descricaoEmpresa1: "Desde 1995. Chocolates, bolos, doces e comidinhas", siteEmpresa1: "https://www.patipiva.com.br", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", siteEmpresa2: "https://www.instagram.com/pedrottifloresecafe/?hl=pt-br", tag: "chá da tarde"),

        GenericData(titulo: "Moderno e Sofisticado", fotoPrincipal:  "modernoESofisticado01", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Chez Marina", fotosArray: ["modernoESofisticado02", "modernoESofisticado03", "modernoESofisticado04", "modernoESofisticado05","modernoESofisticado06"], tipoDeDado: .receber, logoEmpresa1: "olaria", nomeEmpresa1: "Olaria Paulistana", descricaoEmpresa1: "Há 19 anos fornecendo cerâmicas utilitárias.", siteEmpresa1: "http://www.olariapaulistana.com.br", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", siteEmpresa2: "https://www.instagram.com/pedrottifloresecafe/?hl=pt-br",tag: "mesa posta"),

        GenericData(titulo: "O Frescor do Limão", fotoPrincipal:  "oFrescorDoLimao01", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Jô Campos", fotosArray: ["oFrescorDoLimao02", "oFrescorDoLimao03", "oFrescorDoLimao04", "oFrescorDoLimao05","oFrescorDoLimao06", "oFrescorDoLimao07", "oFrescorDoLimao08", "oFrescorDoLimao09", "oFrescorDoLimao10", "oFrescorDoLimao11", "oFrescorDoLimao12"], tipoDeDado: .receber, logoEmpresa1: "MariaPiaCasa", nomeEmpresa1: "Maria Pia Casa", descricaoEmpresa1: "Tudo para sua casa.", siteEmpresa1: "https://www.mariapiacasa.com.br", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", siteEmpresa2: "https://www.instagram.com/pedrottifloresecafe/?hl=pt-br", tag: "mesa posta")
        
    ]
    
    var arrayBkp = [
        GenericData(titulo: "Aperitivos e Amigos", fotoPrincipal:  "aperitivosEAmigos", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Duas Gastronomia", fotosArray: ["aperitivosEAmigos01", "aperitivosEAmigos02", "aperitivosEAmigos03", "aperitivosEAmigos04","aperitivosEAmigos05", "aperitivosEAmigos06", "aperitivosEAmigos07", "aperitivosEAmigos08", "aperitivosEAmigos09", "aperitivosEAmigos10"], tipoDeDado: .receber, logoEmpresa1: "logoCosi", nomeEmpresa1: "Cosi Home", descricaoEmpresa1: "Objetos de decor genuinos e funcionais.", siteEmpresa1: "https://www.cosihome.com.br", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", siteEmpresa2: "https://www.instagram.com/duasgastronomia/?hl=pt-br", tag: "aperitivo"),
        
        GenericData(titulo: "Amor de Outono", fotoPrincipal:  "amorDeOutono01", conteudo: "Bolo de Rolo em São Paulo", conteudoDetalhes: nil, categoria: "Ghee Banqueteria", fotosArray: ["amorDeOutono02", "amorDeOutono03", "amorDeOutono04","amorDeOutono05", "amorDeOutono06", "amorDeOutono07", "amorDeOutono08", "amorDeOutono09", "amorDeOutono10", "amorDeOutono11", "amorDeOutono12", "amorDeOutono13", "amorDeOutono14", "amorDeOutono15"], tipoDeDado: .receber, logoEmpresa1: "logo-ghee", nomeEmpresa1: "Ghee Banqueteria", descricaoEmpresa1: "Buffet para eventos sociais e corporativos.", siteEmpresa1: "http://www.ghee.com.br", logoEmpresa2: "logoDuas", nomeEmpresa2: "D.Filipa", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", siteEmpresa2: "https://www.instagram.com/dfilipa/", tag: "aperitivo"),

        GenericData(titulo: "Café da Manhã com Tempo", fotoPrincipal:  "cafeDaManhaComTempo01", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Blue Gardenia", fotosArray: ["cafeDaManhaComTempo02", "cafeDaManhaComTempo03", "cafeDaManhaComTempo04", "cafeDaManhaComTempo05","cafeDaManhaComTempo06", "cafeDaManhaComTempo07", "cafeDaManhaComTempo08", "cafeDaManhaComTempo09"], tipoDeDado: .receber, logoEmpresa1: "blueGardenia", nomeEmpresa1: "Blue Gardenia", descricaoEmpresa1: "Loja especializada em roupas de cama e decoração de luxo.", siteEmpresa1:"https://www.bluegardenia.com.br", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", siteEmpresa2: "https://www.instagram.com/paninoteca_/", tag: "café da manhã"),

        GenericData(titulo: "Flores, Café e Prosa", fotoPrincipal:  "floresCafeEProsa01", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "André Pedrotti Café e Chez Marina", fotosArray: ["floresCafeEProsa02", "floresCafeEProsa03", "floresCafeEProsa04", "floresCafeEProsa05","floresCafeEProsa06", "floresCafeEProsa07", "floresCafeEProsa08"], tipoDeDado: .receber, logoEmpresa1: "patiPiva", nomeEmpresa1: "Pati Piva", descricaoEmpresa1: "Desde 1995. Chocolates, bolos, doces e comidinhas", siteEmpresa1: "https://www.patipiva.com.br", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", siteEmpresa2: "https://www.instagram.com/pedrottifloresecafe/?hl=pt-br", tag: "chá da tarde"),

        GenericData(titulo: "Moderno e Sofisticado", fotoPrincipal:  "modernoESofisticado01", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Chez Marina", fotosArray: ["modernoESofisticado02", "modernoESofisticado03", "modernoESofisticado04", "modernoESofisticado05","modernoESofisticado06"], tipoDeDado: .receber, logoEmpresa1: "olaria", nomeEmpresa1: "Olaria Paulistana", descricaoEmpresa1: "Há 19 anos fornecendo cerâmicas utilitárias.", siteEmpresa1: "http://www.olariapaulistana.com.br", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", siteEmpresa2: "https://www.instagram.com/pedrottifloresecafe/?hl=pt-br",tag: "mesa posta"),

        GenericData(titulo: "O Frescor do Limão", fotoPrincipal:  "oFrescorDoLimao01", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Jô Campos", fotosArray: ["oFrescorDoLimao02", "oFrescorDoLimao03", "oFrescorDoLimao04", "oFrescorDoLimao05","oFrescorDoLimao06", "oFrescorDoLimao07", "oFrescorDoLimao08", "oFrescorDoLimao09", "oFrescorDoLimao10", "oFrescorDoLimao11", "oFrescorDoLimao12"], tipoDeDado: .receber, logoEmpresa1: "MariaPiaCasa", nomeEmpresa1: "Maria Pia Casa", descricaoEmpresa1: "Tudo para sua casa.", siteEmpresa1: "https://www.mariapiacasa.com.br", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", siteEmpresa2: "https://www.instagram.com/pedrottifloresecafe/?hl=pt-br", tag: "mesa posta")
        
    ]
    
    
    var genericTag = [GenericTag(tag: "Todos"), GenericTag(tag: "Mesa posta"), GenericTag(tag: "Chá da tarde"), GenericTag(tag: "Café da manhã"), GenericTag(tag: "Aperitivo")]
    
    
    convenience init(tipo: TipoDado) {
        self.init()
        self.tipo = tipo
    }
    
    func numberOfRowsInSectionReceber() -> Int {
        return array.count
    }
    
    func devolveReceber(index: Int) -> GenericData{
        return array[index]
    }
    
    func filtarArray(receber: String) {
        var arrayDeTags:[GenericData] = []
        
        for generic in arrayBkp {
            if generic.tag == receber.lowercased(){
                arrayDeTags.append(generic)
            }
        }
        array = arrayDeTags
    }
}

