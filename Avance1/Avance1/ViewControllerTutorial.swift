
import UIKit

class ViewControllerTutorial: UIViewController {

    // MARK: - Subvies
        
        private var carouselView: CarouselView?
        
        // MARK: - Properties
        
        private var carouselData = [CarouselView.CarouselData]()
        private let backgroundColors: [UIColor] = [#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), #colorLiteral(red: 0.4826081395, green: 0.04436998069, blue: 0.2024421096, alpha: 1), #colorLiteral(red: 0.1728022993, green: 0.42700845, blue: 0.3964217603, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), #colorLiteral(red: 0.4826081395, green: 0.04436998069, blue: 0.2024421096, alpha: 1), #colorLiteral(red: 0.1728022993, green: 0.42700845, blue: 0.3964217603, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), #colorLiteral(red: 0.4826081395, green: 0.04436998069, blue: 0.2024421096, alpha: 1), #colorLiteral(red: 0.1728022993, green: 0.42700845, blue: 0.3964217603, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), #colorLiteral(red: 0.4826081395, green: 0.04436998069, blue: 0.2024421096, alpha: 1), #colorLiteral(red: 0.1728022993, green: 0.42700845, blue: 0.3964217603, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), #colorLiteral(red: 0.4826081395, green: 0.04436998069, blue: 0.2024421096, alpha: 1), #colorLiteral(red: 0.1728022993, green: 0.42700845, blue: 0.3964217603, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)]
        
        // MARK: - Life Cycle
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            carouselView = CarouselView(pages: 16, delegate: self)
            carouselData.append(.init(image: UIImage(named: "img1"), text: "Familiarízate con el tablero. El tablero tiene la forma de una estrella de seis puntas y cada una de las cuales contiene diez agujeros para las fichas (o canicas). Asimismo, el tablero tiene un hexágono interior que también contiene agujeros y, a lo largo de cada lado de este hexágono, hay cinco agujeros para las fichas."))
            carouselData.append(.init(image: UIImage(named: "img2"), text: "Elige los triángulos en los que empezarás. La cantidad de jugadores determinará los triángulos que utilizarás. Puedes jugar con 2, usar pares de triángulos que estén en lados opuestos."))
            carouselData.append(.init(image: UIImage(named: "img3"), text: "Coloca las fichas en los agujeros. Debes emplear las diez fichas correspondientes al color de tu triángulo. Sin embargo, los tableros de damas chinas no siempre contienen triángulos codificados por colores, en cuyo caso puedes elegir el conjunto de fichas del color que desees."))
            carouselData.append(.init(image: UIImage(named: "img4"), text: "Túrnense. Cuando el primer jugador haya terminado su turno, le tocará al jugador a su izquierda. Continúen de esta forma por todo el tablero desplazándose hacia la izquierda hasta que le vuelva a tocar al primer jugador, luego de lo cual se repetirá el ciclo."))
            carouselData.append(.init(image: UIImage(named: "img5"), text: "Apunta al triángulo opuesto. Las fichas pueden moverse por el tablero en cualquier dirección e incluso hacia otros triángulos que no se estén usando. Debes colocar tus diez fichas en el triángulo que se encuentre en el lado directamente opuesto al triángulo en el que hayas empezado para poder ganar el juego."))
            carouselData.append(.init(image: UIImage(named: "img6"), text: "Desplázate hacia un agujero adyacente a la vez. Para mover una ficha, la forma más básica es colocarla en un agujero adyacente. Es posible mover las fichas en cualquier dirección, ya sea de lado a lado, hacia adelante o hacia atrás. De esta forma, puedes mover una ficha por turno a un agujero vacío a menos que optes en cambio por hacer que tu ficha 'salte' por encima de otra."))
            carouselData.append(.init(image: UIImage(named: "img7"), text: "Salta sobre otras fichas. Otra forma de mover las fichas es hacer que la tuya 'salte' sobre las fichas adyacentes para llegar a un agujero vacío al otro lado de ellas. Para ello, solo debe haber una ficha entre la tuya y el agujero vacío, y este último debe estar directamente junto a la ficha que te bloquee y en la misma dirección que esta en relación con la ficha que vayas a mover."))
            carouselData.append(.init(image: UIImage(named: "img8"), text: "No retires las fichas. A diferencia de lo que ocurre con el juego de damas tradicional, no debes retirar las fichas del tablero de damas chinas después de que saltes sobre ellas, ya que estas deben quedarse allí hasta que el jugador que las use opte por moverlas."))
            carouselData.append(.init(image: UIImage(named: "img9"), text: "No muevas las fichas para sacarlas del triángulo de destino. Después de colocar las fichas en el triángulo opuesto, no es posible sacarlas de allí durante el resto de la partida, aunque sí podrás moverla dentro de ese mismo triángulo."))
            carouselData.append(.init(image: UIImage(named: "img10"), text: "Determina las reglas en cuanto a los agujeros 'bloqueados'. En las damas chinas, está permitido ocupar uno de los agujeros en el triángulo de destino de un jugador para así 'bloquearlo' e impedir que gane. De esta forma, evitas que el jugador pueda llenar primero ese triángulo."))
            carouselData.append(.init(image: UIImage(named: "img11"), text: "Establece reglas en cuanto a posibles retiradas. Esta no es una regla oficial, pero, de todas formas, en muchos casos los jugadores optan por establecer una regla según la cual un jugador debe retirarse de la partida si no puede mover ninguna de sus fichas durante su turno. De ser el caso, el jugador que haya perdido debe retirar del tablero todas sus fichas y no podrá jugar el resto de la partida."))
            carouselData.append(.init(image: UIImage(named: "img12"), text: "Decide cuándo termina el juego. Después de que haya un ganador, tú decides si el juego se detiene o continúa. Lo tradicional es que el juego termine cuando haya un ganador y los demás jugadores pierdan. Sin embargo, puedes seguir jugando hasta que todos los jugadores llenen sus triángulos de destino si así lo deseas."))
            carouselData.append(.init(image: UIImage(named: "Damas imagen"), text: "Tutorial sacado de: https://es.wikihow.com/jugar-damas-chinas"))
            carouselData.append(.init(image: UIImage(named: "damas_1"), text: "Puedes avanzar una posición si no tienes ninguna canica delante"))
            carouselData.append(.init(image: UIImage(named: "damas_2"), text: "Puedes saltar una canica que esté delante"))
            carouselData.append(.init(image: UIImage(named: "damas_3"), text: "Puedes saltar hasta que ya no tengas más canicas delante"))
            
            setupUI()
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            carouselView?.configureView(with: carouselData)
        }
    }

    // MARK: - Setups
    private extension ViewControllerTutorial {
        func setupUI() {
            view.backgroundColor = backgroundColors.first
            
            guard let carouselView = carouselView else { return }
            view.addSubview(carouselView)
            carouselView.translatesAutoresizingMaskIntoConstraints = false
            carouselView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
            carouselView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            carouselView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            carouselView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        }
    }

    // MARK: - CarouselViewDelegate
    extension ViewControllerTutorial: CarouselViewDelegate {
        func currentPageDidChange(to page: Int) {
            UIView.animate(withDuration: 0.7) {
                self.view.backgroundColor = self.backgroundColors[page]
            }
        }
    }


// Apoyo para realizar carousel: https://medium.com/swlh/swift-carousel-759800aa2952
