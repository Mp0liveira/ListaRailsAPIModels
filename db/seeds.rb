categorias = Category.create([{id: 1, name: "Esportes", description: "Encontre tudo sobre esportes"},
 {id: 2, name: "Política", description: "Acompanhe a política mundial"}, {id: 3, name: "Jogos", description: "Acompanhe sobre o mundo dos jogos"}])

posts = Post.create([{id: 1, title: "Fogo", content: "O líder do Brasileirão volta a campo no próximo sábado, contra o Cuiabá, fora de casa."},
 {id: 2, title: "Trump é preso", content: "Ex-presidente dos EUA, Trump se entregou a justiça estadunidense até o fim da investigação"},
 {id: 3, title: "O sucesso imbatível", content: "CS2, o novo jogo da franquia de Counter Strike Global Offensive vem fazendo sucesso na sua versão beta."}])

feedbacks = Feedback.create([{like: true, post_id: 1}, {like: true, post_id: 1}, {like: true, post_id: 2}, {like: false, post_id: 2}, {like: true, post_id: 3},
 {like: true, post_id: 3}])

comentarios = Commentary.create([{content: "Segue o líder", post_id: 1}, {content: "Cavalo paraguaio, jaja cai", post_id: 1},
 {content: "Tem que ser preso esse bandido mesmo", post_id: 2}, {content: "Que continue por um bom tempo!", post_id: 2},
 {content: "CS nunca morrerá", post_id: 3}, {content: "Os gráficos tão f0d4s demais"}, post_id: 3])
