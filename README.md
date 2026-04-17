# Contador (Flutter)

Aplicativo Flutter simples para controle de entrada/saída de pessoas com limite mínimo e máximo.

## Sobre o projeto

Este app implementa um contador visual com duas ações:

- `Entrou`: incrementa o contador.
- `Diminuir`: decrementa o contador.

Regras de negócio atuais:

- Valor inicial: `0`
- Limite mínimo: `0` (não permite valores negativos)
- Limite máximo: `10`
- Ao chegar aos limites, o botão correspondente é desabilitado.

## Tecnologias

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)
- Material Design

## Requisitos

- Flutter SDK instalado
- Dart SDK (incluído com Flutter)
- Android Studio, VS Code ou outro editor compatível
- Emulador ou dispositivo físico

## Como executar

1. Clone este repositório:

```bash
git clone <url-do-repositorio>
cd contador
```

2. Instale dependências:

```bash
flutter pub get
```

3. Execute o app:

```bash
flutter run
```

## Estrutura principal

```text
lib/
├── main.dart              # Inicializa o app e define o MaterialApp
└── widgets/
    └── contador.dart      # Tela principal com estado e lógica do contador
```

## Comportamento da interface

- Fundo azul (`Colors.blueAccent`)
- Exibição central do texto `Contador: X`
- Dois botões lado a lado:
  - `Entrou` (incrementa)
  - `Diminuir` (decrementa)

## Próximas melhorias sugeridas

- Adicionar testes de widget para validar os limites do contador.
- Exibir mensagens de status (ex.: "Lotado" ao atingir 10).
- Permitir configuração dinâmica do limite máximo.

---

Projeto criado com Flutter.