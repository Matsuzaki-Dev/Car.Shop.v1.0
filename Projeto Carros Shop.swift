// Definição da estrutura Carro
struct Carro {
    var modelo: String
    var marca: String
    var ano: Int
    var preco: Double
}

// Função para exibir informações sobre um carro
func exibirCarro(_ carro: Carro) {
    print("Modelo: \(carro.modelo)")
    print("Marca: \(carro.marca)")
    print("Ano: \(carro.ano)")
    print("Preço: R$ \(carro.preco)")
}

// Função principal
func main() {
    // Lista de carros disponíveis na loja
    let carrosDisponiveis = [
        Carro(modelo: "Civic", marca: "Honda", ano: 2022, preco: 90000),
        Carro(modelo: "Corolla", marca: "Toyota", ano: 2022, preco: 95000),
        Carro(modelo: "Onix", marca: "Chevrolet", ano: 2022, preco: 80000)
    ]
    
    // Exibição dos carros disponíveis na loja
    print("Bem-vindo à loja de carros!")
    print("Carros disponíveis:")
    for (index, carro) in carrosDisponiveis.enumerated() {
        print("\(index + 1). \(carro.marca) \(carro.modelo)")
    }
    
    // Solicitação para o usuário selecionar um carro
    print("Digite o número correspondente ao carro que você deseja ver:")
    if let input = readLine(), let escolha = Int(input), escolha > 0 && escolha <= carrosDisponiveis.count {
        let carroSelecionado = carrosDisponiveis[escolha - 1]
        // Exibe informações sobre o carro selecionado
        print("Detalhes do carro selecionado:")
        exibirCarro(carroSelecionado)
    } else {
        print("Opção inválida.")
    }
}

// Chamada da função principal
main()
