![Mobile-Implementando Reactions com MobX](capa_mobx_reactions.png)

# Reactions no MobX com Flutter: O que são e como utilizá-las?

Artigo da escola Mobile que fala sobre gerenciador de estados MobX, focando especificamente em Reactions. Os temas abordados são: tríade de Mobx (conceitos base), conceito de Reaction, exemplos práticos de Reaction. 

### Tópicos abordados no curso:

- Conceitos de MobX: Observables, Actions e Computeds;
- Introdução a Reactions;
- Funções de Reactions (`reaction()`, `autorun()`, `when()`);
- Como usar `ReactionBuilder`.

Este artigo é indicado para pessoas desenvolvedoras que desejam aprender a utilizar Reactions em seus aplicativos Flutter em sua jornada de desenvolvedor mobile. 

## 📑 Requisitos

- Conhecimentos básicos de Flutter e Dart;
- Android Studio ou VS Code (com plugins do Flutter e Dart instalados);
- Conhecimento de gerenciamento de estados com MobX;
- É importante ter o Flutter na versão 3.10.2.

## ✨ Funcionalidades do projeto

Neste projeto, para abordar o conceito de Reactions, criamos uma tela de _login_, em que o botão de "Entrar" é habilitado ou desabilitado de acordo com uma validação dos campos de "Usuário" e "Senha". Além disso, há uma tela para verificação de conexão, exibindo a mensagem "Você está conectado" ou "Você está sem internet!" de acordo com a conectividade do aparelho.

<p align="center">
  <img src="projeto_final_mobx.gif" alt= "GIF da aplicação desenvolvida." />
</p> 

## 🛠️ Abrir e rodar o projeto

Aqui vem um passo a passo para abrir e rodar o projeto.

- **Open an Existing Project** (ou alguma opção similar)
- Procure o local onde o projeto está e o selecione (Caso o projeto seja baixado via zip, é necessário extraí-lo antes de procurá-lo)
- Por fim clique em OK
- Depois basta rodar o comando `flutter run` na pasta do projeto