//
//  ReceitaDatabase.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 07/12/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.

//
//import UIKit
//
//import FirebaseDatabase
//
//import FirebaseAuth
//
//class UpDownLoadDadosDatabase: NSObject {
//
//    var arrayReceitas: [ReceitaModel] = []
//
//    var receitaViewController: ReceitaViewController?
//
//    var databaseHandle: DatabaseHandle?
//
//    func upLoad() {
//
//    var arrayReceita = [ReceitaModel(titulo: "Consomê de Abóbora e Cumaru em Crosta Brulee", ingredientes: "500 gr de abóbora cozida, 50 gr de cumaru, 50 gr de manteiga, 1 cebola, 3 dentes de alho, 1 alho poró médio, 200 ml de creme de leite fresco. Cheiro verde à gosto. Açúcar demerara ou de coco para fazer o brulé", modoDePreparo: "Em uma panela refogue a cebola, o alho e o alho poró. Acrescente a abóbora já cozida na panela e refogue por mais alguns minutos. Depois bata tudo no liquidificador com o cheiro verde, o creme de leite, sal e pimenta do reino à gosto. Finalize com cumaru. Montagem: Coloque o consome de abóbora no ramequim e por ultimo polvilhe o açúcar refinado por cima e faça a casquinha com um maçarico. Sirva em seguida", fotoReceita: "Consomê de Abóbora e Cumaru em Crosta Brulee", chefReceita: "chef Izabela Dolabela", tag: "saudável"),
//
//       ReceitaModel(titulo: "Cuscuz com Lascas de Salmão, Molho Cítrico de Limão Siciliano e brotos", ingredientes: "500 gr de cuscuz, 1 kg de salmão, 2 cebolas roxas em meia lua, manjericão à gosto. Brotos à gosto. Salsinha à gosto finamente picada", modoDePreparo: "Salmão: Leve o salmão no forno pré aquecido à 200 graus com sal, pimenta do reino e alecrim.Em uma panela, leve a água para ferver em fogo alto. Enquanto isso, transfira o cuscuz e a cebola taxa já picada para uma tigela. Quando a água ferver, regue o cuscuz com ela, misture com um garfo e abafe com um prato. Deixe hidratar por cinco minutos. Destampe a tigela e solte o cuscuz com um garfo.Junte com as lascas de salmão.Regue com o molho de limão siciliano e finalize com os brotos.", fotoReceita: "Cuscuz", chefReceita: "chef Izabela Dolabela", tag: "saudável"),
//
//
//       ReceitaModel(titulo: "Frango com Creme de Espinafre e  Batata doce", ingredientes: "1 Peito de frango cortado em filé ou desfiado, 1 maço de espinafre, 4 batatas cozidas, 500 ml de leite, 2 colheres de sopa de manteiga, 2 colheres de sopa de farinha de trigo, 1 cebola cortada em cubos, sal e pimenta-do-reino a gosto.", modoDePreparo: "1. A primeira coisa a fazer é cozinhar as batatas na água quente até ficarem macias. 2. Espere esfriarem, descasque as batatas, amasse bem e reserve. 3. Em uma panela, leve o espinafre para cozinhar em água quente por 5 minutos. 4. Retire da água e com uma faca, pique grosseiramente as folhas. 5. Reserve. 6. Agora senta que lá vai história: 7. Eu ia fazer frango desfiado, mas tive problemas técnicos. 8. Deixei cozinhando um peito de frango congelado por bastante tempo na água fervendo com sal. 9. No final, a carne perto do osso ainda estava cru. 10. Eu sou aquela pessoa que perde a paciência facilmente, acreditem! 11. Deveria ter levado a carne do frango novamente a panela para terminar o cozimento, só que mudei o trajeto e acabei grelhando os filés de frango em uma frigideira. 12. Quem quiser fazer com filé frango grelhado, fique a vontade. 13. Agora, se você acha que ficará mais gostoso com com o frango cozido e desfiado, mãos a obra. 14. Vamos preparar o creme de espinafre com batata? 15. Em uma panela coloque a manteiga e aguarde derreter, adicione a cebola para refogar. 16. Quando a cebola estiver mais molinha, coloque as duas colheres de farinha e faça um roux. Que nada mais é uma massa feita com a farinha e a manteiga. 17. Adicione o leite e misture, até essa massa dissolver bem. 18. Coloque a batata amassada e o espinafre. 19. Mexa bem até engrossar o creme. 20. Desligue o fogo, coloque em uma tigela bem bonita e espalhe o frango desfiado ou o seu filé. 21. Uma dica, para deixar seu prato mais sofisticado: 22. Finalize o seu prato com uma camada do creme e bastante queijo por cima. 23. Leve ao forno para o queijo derreter ou até ficar dourado", fotoReceita: "Frango com Creme de Espinafre e  Batata doce", chefReceita: "chef Izabela Dolabela", tag: "saudável"),
//
//       ReceitaModel(titulo: "Frango Thai", ingredientes: " 200 g de cubos de peito de frango, 20 g de cebola cortada em cubos bem pequenos, 5 g de alho picado, 10 g de pupunha cortada em fatias finas, Coentro picado a gosto, 20 g de amendoim e castanha de caju picados, Gergelim torrado a gosto, Sal e pimenta do reino a gosto, Óleo de canola a gosto, 50 ml de caldo de frango, Infusao de leite de coco. 200 ml de leite de coco, 20 g de capim santo, 20 g de gengibre, 40 g de curry vermelho ou verde, 40 g de pasta de amendoim, 1 pimenta dedo-de-moça sem semente. Finalização de raiz de coentro. 30 g de raiz de coentro, 10 ml de nam pla (molho de peixe), 1 g de pimenta preta em grãos, 2 g de alho picado, 50 ml de caldo de frango, 5 ml de óleo", modoDePreparo: "Em uma panela coloque leite de coco, capim santo, gengibre, curry e pasta de amendoim. Reduza a 1/3 e reserve. Em outra panela aqueça o óleo, adicione as pimenta em grãos. Em seguida, puxe o alho e adicione a raiz de coentro. Adicione o caldo de frango, o molho nam pla e deixe reduzir. Bata em um liquidificador e coe. Reserve. Aqueça uma frigideira com óleo, sele os cubos de frango. Refogue o alho, a cebola e por último a pupunha. Deglaceie com caldo de frango, em seguida, adicione a infusão de leite de coco. Por último adicione a finalização de broto de coentro. Sirva em um prato fundo, finalize com as castanhas, broto de coentro e o gergelim torrado. Arroz de jasmin para acompanhar", fotoReceita: "Frango Thai", chefReceita: "chef Izabela Dolabela", tag: "saudável"),
//
//       ReceitaModel(titulo: "Fudge de Chocolate", ingredientes: "250 gramas de chocolate amargo, 100 gr de óleo de coco líquido (usar o sem sabor), 50 gr de avelãs, 50 gr de damasco", modoDePreparo: "Unte uma forma com óleo de coco e papel manteiga; reserve. Numa panela em banho maria, derreta o chocolate.Em um bowl, misture o chocolate com o óleo de coco, a avelã e o damasco  e misture bem. Despeje a mistura na forma untada. Leve para gelar por 1 hora antes de desenformar e cortar o fudge em quadradinhos.", fotoReceita: "FUDGE DE CHOCOLATE", chefReceita: "chef Izabela Dolabela", tag: "saudável"),
//
//
//      ReceitaModel(titulo: "Moqueca Vegana", ingredientes: "4 bananas da terra maduras, 1 cebola em rodelas, 2 tomates em rodelas, 1⁄2 xícara de passata de tomates, 2 limões, 2 dentes de alho esmagados, 1 xícara de leite de coco caseiro, 1⁄2 pimentão amarelo em rodelas, 1 pimenta dedo de moça. Sal, cheiro verde, coentro e azeite à gosto", modoDePreparo: "Corte as bananas em fatias médias e tempere com o suco do limão; reserve. Em uma panela, de preferência de barro, doure o alho no azeite e junte a passata de tomates e a pimenta dedo de moça, acerte o sal; depois comece a intercalar as camadas de banana com as rodelas de cebola, tomate e pimentão e coloque o leite de coco. Tampe a panela e deixe cozinhar por uns 15 minutos ou até que as bananas estejam cozidas. Finalize com o cheiro verde e o coentro. Sirva com uma farofinha de mandioca torrada na manteiga ghee.", fotoReceita: "MOQUECA VEGANA", chefReceita: "chef Izabela Dolabela", tag: "vegana"),
//
//      ReceitaModel(titulo: "Paella", ingredientes: "600g de camarão médio descascado e limpo, 600g de lula em anéis, 600g de mexilhão já aberto, 6 camarões grandes inteiros para decorar, 2 xícaras de arroz bomba, 1 xícara de ervilhas frescas, 2 tomates picados sem pele, 6 Aspargos para decorar, 2 cebola picadas, 6 dentes de alho picados, 1 pimentão vermelho em tiras, 1 pimentão amarelo em tiras, 4 xícaras de água, açafrão à gosto, azeite de oliva a gosto,sal e pimenta do reino à gosto", modoDePreparo: " Refogue com azeite o camarão grande com um pouco de sal e pimenta do reino. Reserve. Também reserve para a decoração algumas tiras dos pimentões coloridos.Em uma paelleira grande refogue com azeite a cebola e o alho. Acrescente os pimentões, o tomate e a lula. Refogue. Junte as ervilhas frescas, o arroz e o açafrão. Refogue um pouco mais e adicione a água, sal e pimenta do reino à gosto. Após 10 minutos de cozimento, acrescente os camarões médios e os aspargos. Deixe cozinhar até quase secar a água (o arroz deve estar levemente úmido). Decore com os camarões grandes, as tiras de pimentões coloridos e os aspargos. Sirva a seguir.", fotoReceita: "Paella", chefReceita: "chef Izabela Dolabela", tag: "frutos do mar"),
//
//      ReceitaModel(titulo: "Pão de Macadâmia Low Carb", ingredientes: "1 e 1⁄2 xícaras de farinha de amêndoas, 1 e 1⁄2 xícaras de farinha de macadâmia, 4 ovos, 1 xícara de purê de abóbora, 1⁄2 xícara de leite de coco, 1⁄2 xícara de leite de amêndoas morno, 1⁄2 xícara de psylium, 1 envelope de fermento biológico seco, 1 colher de sopa de mel, 1 pitada de canela, 1 pitada de sal", modoDePreparo: "Comece fazendo a pré-fermentação, dissolvendo o leite de amêndoas como fermento biológico e o mel; deixe descansar até formar uma espuma (aproximadamente 10 minutos). Em um bowl ou na batedeira, comece batendo os ovos; depois acrescente todos os ingredientes secos, o leite de coco e a pré-fermentação.Despeje a massa em uma forma para pão untada e forrada com papel manteiga, deixe descansar por uns 30 minutos e leve para assar em forno médio pré- aquecido, por aproximadamente 50 minutos. Espere esfriar para fatiar e servir! Dica: congele as fatias em porções já individualizadas e na hora de consumir aqueça na torradeira!", fotoReceita: "Pão", chefReceita: "chef Izabela Dolabela", tag: "saudável"),
//
//       ReceitaModel(titulo: "Pato no Tucupi", ingredientes: "1 pato, 1 litro de tucupi, 1 maço de jambu, 3 dentes de alho, 1 cebola, 2 tomates, 2 limões, 2 colheres de azeite, Pimenta de cheiro e sal a gosto.", modoDePreparo: "Corte o pato em pedaços e refoge com cebola, alho, tomate bem picados, com o azeite. Deixe cozinhar na pressão pro aproximadamente 30 min (até ficar macio). O TUCUPI: Ferver o tucupi com sal, dentes de alhos inteiros apenas amaçados. O JAMBU: Lave bem , retire as flores, quando houver, afervente em aguá e sal até amolecer, escorra e coloque no tucupi.Passe o pato em uma frigideira para ele ficar bem dourado, em seguida junte ao tucupi com o jambu, quando ferver estará pronto.Sirva com farinha d’água e/ou arroz branco.", fotoReceita: "patoNoTucupi", chefReceita: "chef Izabela Dolabela", tag: "regional"),
//
//       ReceitaModel(titulo: "Suflê de Chocolate 70%", ingredientes: "250 g de chocolate meio amargo em barra ( 70% cacau), 3 gemas, 6 claras, 50 g de manteiga ghee, 1 colher de café de amido de milho, 2 colheres de sopa de xilitol", modoDePreparo: "Coloque o chocolate quebrado em pedaços em uma panela com a manteiga e derreta em banho-maria. Deixe esfriar um pouco o chocolate derretido e adicione as 3 gemas, depois peneire o amido de milho sobre o preparo e misture bem. Bata as claras em neve, em picos firmes e junte a mistura de chocolate, misturando e levantando sempre a colher para incorporar ar à mistura. Unte os ramequins com manteiga, coloque o preparo e leve ao forno médio e preaquecido por aproximadamente 15 minutos.", fotoReceita: "Suflê de Chocolate 70%", chefReceita: "chef Izabela Dolabela", tag: "saudável"),
//
//       ReceitaModel(titulo: "Tacacá", ingredientes: "1 litro de tucupi, 1 dente de alho amassado, 10 camarões secos médios ou 20 camarões secos menores (sem a cabeça), 250 g de goma de mandioca, 1 l de água, ½ maço de jambu, 4 folhas de chicória-do-Pará, 1 pimenta-de-cheiro amazônica", modoDePreparo: "Leve ao fogo brando o tucupi, o alho, a chicória e a pimenta;  deixe ferver por 20 minutos. Em outra panela cozinhe as folhas de jambu por 5 minutos – escorra e reserve. Afervente o camarão seco - escorra e reserve. Em outra panela, dilua a goma em 1 l de água fria e leve ao fogo brando, mexendo sem parar até engrossar e adquirir transparência. Sirva em cuias: coloque um pouquinho de tucupi, a goma e mais tucupi. A proporção é de 70% de tucupi e 30% de goma. Finalize com folhas de jambu e 1 camarão seco", fotoReceita: "tacaca", chefReceita: "chef Izabela Dolabela", tag: "regional"),
//
//       ReceitaModel(titulo: "Tartar de Salmão com Maracujá e Quinoa de Beterraba", ingredientes: "Tartar:300 gramas de salmão, 1 colher (sopa) de gengibre picado, 2 colheres de sopa de polpa de maracujá, 1 pimenta dedo de moça sem as sementes, 3 colheres (sopa) de cebolinha picada bem fininha, 1/2 cebola roxa em meia lua, 40 ml de azeite. Sal à gosto. Quinoa: 1 xícara (chá) de quinoa, 1 xícara (chá) de suco de beterraba, sal e pimenta do reino a gosto", modoDePreparo: "Tartar: Corte o salmão em cubos pequenos. Misture o salmão, o gengibre, a cebolinha, o maracujá, a pimenta, o azeite e o sal. Deixe descansar na geladeira por uns 30 minutos antes de servir. Quinoa: Ferva o suco de beterraba com sal e pimenta do reino, desligue o fogo e vire a quinoa sobre o suco. Tampe a panelinha e espere cozinhar por cerca de 15 minutos. Para fazer o suco de beterraba: Bata 1 beterraba no liquidificador com um pouco de água até conseguir um suco concentrado e passe na peneira.", fotoReceita: "tartar", chefReceita: "chef Izabela Dolabela", tag: "saudável"),
//
//       ReceitaModel(titulo: "Tomate Confit", ingredientes: "1kg de tomate cereja, 4 dentes de alho, 1 xícara (chá) de azeite de oliva extra virgem, 5 ramos de alecrim, 1/2 xícara m de aceto balsâmico (substitui o açúcar quebrando a acidez do tomate). Sal e pimenta do reino à gosto ", modoDePreparo: "1. Em um refratário coloque os tomates higienizados, os dentes de alho picados grosseiramente e os ramos de alecrim. 2. Regue com azeite, tempere com sal, pimenta e o aceto balsâmico. 3. Asse em fogo baixo (180°C) por 2 horas, mexendo de vez em quando. Rendimento: 2 porções. Congelamento: congelar assim que esfriar. Duração na geladeira: 7 dias", fotoReceita: "Tomate Confit", chefReceita: "chef Izabela Dolabela", tag: "saudável"),
//
//       ReceitaModel(titulo: "Tortinha de Caramelo com Chocolate", ingredientes: "Ingredientes para a base: 1 xícara de farinha de amêndoas, 1⁄4 de xícara de eritritol, 1 colher de sopa de amido de milho, 1 ovo, 1 colher de chá de água, 1 colher de sopa de óleo de coco, 1/4 de colher de chá de fermento em pó, 1 pitada de sal. Ingredientes para a ganache de chocolate: 250 gr de chocolate amargo 75%, 150 gr de creme de leite fresco. Ingredientes para o caramelo: 1 litro de leite de amêndoas, 100 ml de leite de coco, 6 colheres de sopa cheia de eritritol, 1⁄2 colher de café de bicabornato de sódio, 1⁄2 xícara de creme de leite freco", modoDePreparo: "Massa: Em um bowl, misture todos os ingredientes até formar uma massa. Forre o fundo e as laterais de 10 forminhas de tartelette, fure com um garfo e leve para assar em forno médio pré-aquecido por aproximadamente 10-15 minutos ou até estar ligeiramente dourado. Reserve e deixe esfriar. Depois recheie metade da tartelette com o caramelo (receita acima). Caramelo: Leve todos os ingredientes ao fogo, exceto o creme de leite fresco e cozinhe, mexendo sempre, até reduzir pela metade. Desligue o fogo e acrescente o creme de leite mexendo vigorosamente. Ddeixe esfriar por 15 minutos no freezer antes de usar. Ganache: Em uma panela aqueça o creme de leite até quase ferver, depois retire do fogo e acrescente o chocolate amargo picado e mexa vigorosamente até obter uma ganache lisa, homogênea e brilhante. Despeje a ganache sobre o caramelo e finalize com flor de sal (opcional", fotoReceita: "Tortinha de Caramelo com Chocolate", chefReceita: "chef Izabela Dolabela", tag: "doce")
//
//
//          ]
//
//        var dicionarioReceita: [String:Any]?
//
//        for receita in arrayReceita {
//
//            let titulo = receita.titulo
//            let ingredientes = receita.ingredientes
//            let modoDePreparo = receita.modoDePreparo
//            let fotoReceita = receita.fotoReceita
//            let chefReceita = receita.chefReceita
//            let tagReceita = receita.tag
//
//            dicionarioReceita = ["titulo": titulo, "ingredientes": ingredientes, "modoDePreparo": modoDePreparo, "fotoReceita":fotoReceita, "chefReceita": chefReceita, "tag": tagReceita]
//
//               let context = Database.database().reference()
//
//                         context.child("receita").child(titulo).setValue(dicionarioReceita) { (error, context) in
//
//                             if error == nil {
//                                 print("foi com sucesso")
//                             } else {
//                                 print("deu erro: \(error)")
//                             }
//                         }
//
//                     }
//
//                 }
//
//
//    func downLoad(receita: String) {
//
//        var ref: DatabaseReference!
//        ref = Database.database().reference()
//        let receitasRef = Database.database().reference().child("receita")
//
//        receitasRef.observe(.value) { (snapshot) in
//
//
////        databaseHandle = receitasRef.child("receita").observe(.value) { (snapshot) in
//
////            let receita = snapshot.value as? String
////
////            if let receitaAtual = receita {
////                self.receitaDados.append(receitaAtual)
//
//
//             var receitaDados = [ReceitaModel]()
//
//            for child in snapshot.children {
//
//                if let childSnapshop = child as? DataSnapshot
//
//                    let dict = childSnapshop.value as? [String:Any]
//
//                    let titulo = dict["titulo"] as? String
//                     let ingredientes = dict["ingredientes"] as? String
//                     let modoDePreparo = dict["modoDePreparo"] as? String
//                     let fotoReceita = dict["fotoReceita"] as? String
//                     let chefReceita = dict["chefReceita"] as? String
//                    let tag = dict["tag"] as? String {
//
//                    let receita = ReceitaModel(titulo: titulo, ingredientes: ingredientes, modoDePreparo: modoDePreparo, fotoReceita: fotoReceita, chefReceita: chefReceita, tag: tag)
//
//                receitaDados.append(receita)
//
//
//
//            }
//            }
//
//            self.arrayReceitas = receitaDados.filt
//
//
////
//////        ref.child("receita").observe(.childAdded, with:  { (snapshot) in
//////
//////
//////            let value = snapshot.value as? Array<Any>
//////
//////            var model: ReceitaModel
//////            for newValue in value! {
////
//////                model.titulo =  value?["titulo"]
//////
//////            }
//////
//////
//////
//////          }) { (error) in
//////            print(error.localizedDescription)
//////        }
//////
////
//    }
//
//
//}
//
//}
//
