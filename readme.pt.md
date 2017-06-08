
# site do openframeworks

Este repositório armazena o conteúdo e código que gera a página de internet [openFrameworks](http://openFrameworks.cc/).

Para outras línguas, por favor ver os documentos abaixo enunciados.

- korean(한국어) : [readme.ko.md](readme.ko.md)
- japanese(日本語) : [readme.ja.md](readme.ja.md)
- traditional chinese(繁體中文) : [readme.zh_cn.md](readme.zh_cn.md)

## Contribuição

Para contribuir para a página de internet ou para a documentação, pode por exemplo fazer fork e enviar as contribuições directamente a partir da página do github.

A maior parte do conteúdo encontra-se na pasta `content` no directoria markdown.

A pasta  `tutorials` é estruturada com um primeiro nível de pastas que respresentam a categoria e, por conseguinte os ficheiros armazenados em markdown com a extensão `.markdown` e uma pasta para cada um deles com o mesmo nome que o ficheiro de texto que contém as imagens ou qualquer outro recurso. O ficheiro final html para cada tutorial é gerado com o mesmo nível que os seus recursos portanto os links têm que ser relativos a qualquer outra pasta como:

```md
![img](image.png)
```

A pasta `documentation` contém a referência da API do OF e encontra-se também em formato markdown. Estes documentos são gerados a partir do código mas o campo de descrição em todas as classes, funções ou variáveis, é editad directamente nos ficheiros markdown.

## Configurar o site para compilar localmente

O site é construido usando [nikola](https://getnikola.com). Há alguns scripts na mesma pasta que tornam mais fácil instalar e usá-los.

1. Primeiro, se instalar no Mac OS-X, garanta-se que as seguintes linhas de código foram instalads:

  ```bash
  xcode-select --install
  ```
instale de seguida os seguintes pacote (se não tiver o homebrew instalado pode extrai-lo a partir de  [brew.sh](http://brew.sh/)):

  ```bash
  brew install python3
  sudo easy_install pip
  brew linkapps python3
  ```
2. A partir do código fonte do ofSite, corra o ./install.sh que instala o nikola e todas as dependências necessárias. (Isto foi testado apenas em linux e OS-X). 

3. FInalmente adicione o seguinte ao seu ficheiro .basrc, .bash_profile out .zshrc:
  `export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"`

Há dois scripts incluidos no root do ofSite para ajudar com os documentos:

**./auto_build.sh** : Corre o nikola e compile o site todas as vezes que qualquer ficheiro for modificado.

Se, no osx, receber o seguinte errro: `FileNotFoundError: [Errno 2] No such file or directory: 'asciidoctor'`, irá precisar de instalar o asciidoctor tal como explicado [here](http://asciidoctor.org/docs/install-asciidoctor-macosx/), e depois correr o script novamente.

**./serve.sh** : Começa um novo web serve que serve como site e abre-o no seu browser.

Se planear fazer uma grande modificação como contribuir com uma tradução a forma mais fácil é deixar estes 2 últimos scripts a correr e fazer apenas uma edição ao conteúdo dos ficheiros e o site irá automaticamente ser actualizado.

## Markodw do estilo da documentação

Esta porção de documentação do site é escrita em Markdown, uma syntax estilo wiki. Ver os detalhes em [Daringfireball](http://daringfireball.net/projects/markdown/).

A forma mais fácil de verificar a sintaxe é dar uma olhada nas várias páginas já existentes no site, mas aqui estão algumas dicas úteis:

Para inserir exemplos de código use 4 tiles seguidos de curly braces com ".cpp" dentro, e acabe com quatro tildes:

	```cpp
	for(int i = 0; i < 16; i++) {
		ofLog() << i;
	}
	```
As images são adicionadas no formato normal de markdown:

    ![Image Title](filename.png "alt text")

Para uma descrição mais completa de como contribuir para a documentação, por favor ver o tutorial [Contribuir para a documentação ](http://openframeworks.cc/learning/08_other/contributing/) .
