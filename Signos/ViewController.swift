//
//  ViewController.swift
//  Signos
//
//  Created by Renato Godinho on 15/05/2018.
//  Copyright © 2018 Renato Godinho. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var signos: [String] = []
    var significadosSignos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configura signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        //configura significados dos signos
        significadosSignos.append("Mu de Aires - Extinção estelar")
        significadosSignos.append("Aldebaran de Touro - Grande Chifre")
        significadosSignos.append("Saga de Gêmeos - Explosão Galactica")
        significadosSignos.append("Mascara da Morte de Cancer - Ondas do Inferno")
        significadosSignos.append("Aioria de Leão - Cápsula do Poder")
        significadosSignos.append("Shaka de Virgem - Tesouro do Céu")
        significadosSignos.append("Dohko de Libra - Cólera dos Cem Dragões")
        significadosSignos.append("Milo de Escorpião - Agulha Escarlate")
        significadosSignos.append("Aioros de Sagiário - Trovão Atômico")
        significadosSignos.append("Shura de Capricórnio - Excalibur")
        significadosSignos.append("Camus de Aquário - Execução Aurora")
        significadosSignos.append("Afrodite de Peixes - Rosa Branca")
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso : String = "celulaDeReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //print(significadosSignos[indexPath.row])
        let alertaControler = UIAlertController(title: "O cavaleiro desta casa é:", message: significadosSignos[indexPath.row], preferredStyle: .alert)
        let acaoConfirmar = UIAlertAction(title: "ok", style: .default, handler: nil)
        alertaControler.addAction(acaoConfirmar)
        
        present(alertaControler, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

