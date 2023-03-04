# Desafio Flutter TiTa Therapy
O desafio consiste em criar uma lista de botões e a partir dela, ser direcionado uma página com o título e cor de fundo correspondente à cor selecionada. 

![image](https://user-images.githubusercontent.com/86268949/222878333-4fd8f47b-af85-4db0-a57f-1e48ad8be391.png) ![image](https://user-images.githubusercontent.com/86268949/222878343-4612220a-9653-4d3f-a002-46c116a7c7f3.png)



## Como testar?
### Passo 1 -
Basta clonar o repo para uma pasta local.

- Abrir no VSCode e rodar o projeto em chrome ou emulador.

    ou

- Abrir o console e digitar 

      $ flutter run -d  <nome_emulador>
      
### Passo 2 - 
Agora é só apertar os botões e checar se cada página corresponde à cor e ao titulo indicado.

## Considerações:
Para fazer o aplicativo, meu primeiro passo foi criar um novo projeto flutter, rodando o comando:
     
     $ flutter create teste_tita
     
Desse modo, foi gerado um projeto flutter já com algumas coisas predefinidas. 
A partir daí eu modifiquei o arquivo main do projeto. Modifiquei o Scaffold deixando apenas a AppBar com a cor e texto modificados, depois adicionei uma Column ao body. Depois disso criei três novas dependências dentro da pasta lib: src, view e components. 

* ### Pasta components:
Dentro da pasta components criei um novo arquivo (color_button.dart) e nele criei um novo Widget Stateless chamado ColorButton.
#### ColorButton: 
Widget customizado, que recebe 4 parâmentros:

~~~~dart
  final void Function() onPressed;
  final Color color;
  final String colorName;
  final Color? textColor;
~~~~~

+ OnPressed: Parâmetro do tipo void Function responsável por alimentar a função requerida no FilledButton do widget.
+ Color: Tipo Color responsável por definir a cor de fundo do Botão.
+ ColorName: Tipo String que define o Label da cor no botão.
+ textColor: Tipo String? Define a cor do texto do botão, caso seja nulo assume a cor Colors.white.

* ### Pasta views:
Dentro da pasta view criei um novo arquivo (color_page.dart) e nele criei um novo widget Stateless chamado ColorPage.
#### ColorPage:
Widget que serve como uma nova página, contendo um Scaffold e uma AppBar, dentro do body do Scaffold terá uma foto carregada da internet ou assets da aplicação. Recebe quatro parâmetros:

~~~~dart
  final String colorName;
  final Color color;
  final String path;
  final bool useAssets;
~~~~~

+ colorName: Tipo String que define o title da appBar.
+ color: Tipo color que define a cor de fundo do Scaffold.
+ path: Tipo String que define o caminho para a imagem do Scaffold.
+ useAssets: Tipo booleano que serve para decidir se o provedor da imagem será Image.assets ou Image.network.

* ### Pasta src:
Adição de imagens dentro da pasta img. Para usar as imagens baixadas, é necessário configurar o arquivo `pubspec.yaml` com o seguinte código:

~~~~yaml
assets:

  lib/src/img/<nome-da-imagem>
~~~~~
