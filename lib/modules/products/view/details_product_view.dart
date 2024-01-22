import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:you_comment/modules/home/controller/home_controller.dart';
import 'package:you_comment/utils/colors.dart';
import 'package:you_comment/widgets/buttons/custon_icon_button.dart';
import 'package:you_comment/widgets/model_viewer/custom_model_viewer.dart';
import 'package:you_comment/widgets/texts/custom_text.dart';

class DetailsProductView extends StatefulWidget {
  String? customImage;
  DetailsProductView({super.key, this.customImage});

  @override
  State<DetailsProductView> createState() => _DetailsProductViewState();
}

class _DetailsProductViewState extends State<DetailsProductView> {
  HomeController controller = Modular.get<HomeController>();
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Jorge Martins',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Eu amei esse produto, muito bom mesmo!',
      'date': '12/01/2021 12:00:00'
    },
    {
      'name': 'Ana Paula Silveira',
      'pic': 'https://www.adeleyeayodeji.com/img/IMG_20200522_121756_834_2.jpg',
      'message': 'Recomedo a todos, muito bom mesmo!',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'Sérgio Santos',
      'pic': 'assets/img/userpic.jpg',
      'message': 'Adoreii',
      'date': '2021-01-01 12:00:00'
    },
  ];
  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {},
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
              trailing: Text(data[i]['date'], style: TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: CustomText.type1(customText: "Detalhes do Produto"),
        centerTitle: true,
        leading: CustomIconButton.back(customOnPressed: () {
          Navigator.pop(context);
        }),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 400,
                    child: CustomModelViewer(
                      customSRC: widget.customImage!,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText.type1(
                                  customText: "${("Microsoft Surface Laptop").toString().substring(0, 15)}..."),
                              Row(
                                children: [
                                  CustomIconButton.favorite(
                                      customOnPressed: () {}),
                                  CustomIconButton.share(
                                      customOnPressed: () {}),
                                ],
                              ),
                            ],
                          ),
                          CustomText.type1(customText: "R\$ 15.000,00"),
                          const SizedBox(height: 10),
                          CustomText(
                              customText:
                                  "Microsoft Surface Laptop 4 tela sensível ao toque de 13,5 polegadas – Intel Core i7 – 32 GB – Unidade de estado sólido de 1 TB (modelo mais recente) – Preto fosco"),
                          const SizedBox(height: 10),
                          CustomText(
                              customText:
                                  "Sobre este item: Poder fazer o que você quiser com até 70% mais velocidade do que antes e um processador Intel Core de 11ª geração. Design fino, leve e elegante na escolha de dois tamanhos: leve, portátil de 34,3 cm ou maior de 38,1 cm, perfeito para multitarefas em tela dividida. Mostre o seu melhor lado em chamadas de vídeo com qualidade nítida de vídeo e imagem, mesmo em condições de pouca luz, graças a uma câmera frontal HD 720p. Desfrute de som semelhante ao cinema para filmes e séries com alto-falantes Omnisonic apoiados por Dolby Atmos6 imersivos. Seja ouvido alto e claro em chamadas com dois microfones de estúdio de campo distante que capturam sua voz e reduzem o ruído de fundo. Você vai precisar do Word, Excel e PowerPoint. Não se esqueça de adicionar Microsoft 365"),
                          SizedBox(
                            height: 500,
                            child: Container(
                              child: CommentBox(
                                userImage: CommentBox.commentImageParser(
                                    imageURLorPath:
                                        'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400'),
                                child: commentChild(filedata),
                                labelText: 'Sua opinião...',
                                errorText: 'Comment cannot be blank',
                                withBorder: false,
                                sendButtonMethod: () {
                                  if (formKey.currentState!.validate()) {
                                    print(commentController.text);
                                    setState(() {
                                      var value = {
                                        'name': 'New User',
                                        'pic':
                                            'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                                        'message': commentController.text,
                                        'date': '2021-01-01 12:00:00'
                                      };
                                      filedata.insert(0, value);
                                    });
                                    commentController.clear();
                                    FocusScope.of(context).unfocus();
                                  } else {
                                    print("Not validated");
                                  }
                                },
                                formKey: formKey,
                                commentController: commentController,
                                backgroundColor: graySecondary,
                                textColor: blackPrimary,
                                sendWidget: Icon(Icons.send_sharp,
                                    size: 30, color: blackPrimary),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
      //https://modelviewer.dev/shared-assets/models/Astronaut.glb
      //BabylonJSViewer(src: "assets/images/dice.glb"),
      //floatingActionButton:
      //  CustomFloatingActionButton.comment(customOnPressed: () {}),
    );
  }
}
