# Resolução da Lista: Evolução das Principais Linguagens de Programação
**Autor:** Matheus Previato Hermenegildo

---
## Parte 1: Fundamentos e Primeiras Gerações (Q1 a Q10)

### Questão 2 (Plankalkül)
A Plankalkül não foi implementada em sua época, sendo publicada apenas em 1972, mas é historicamente relevante porque antecipou recursos avançados de estruturação de dados. 
**Três recursos antecipados:**
1. Vetores (*arrays*).
2. Registros aninhados (*structs*).
3. Expressões matemáticas informando relacionamentos entre variáveis (semelhante ao uso de *asserções* modernas).
**Valor:** O uso de vetores e registros aninhados foi revolucionário. Em termos de RPG, é como inventar o sistema de inventário estruturado (com *slots* e categorias) em 1945, muito antes do hardware suportar a interface. Isso permitia modelar dados complexos de forma hierárquica.

### Questão 4 (Fortran e Performance)
No início dos anos 50, a programação em linguagem de máquina (ou *assembly*) era preferida pelos programadores para garantir alta eficiência, já que o hardware não possuía instruções de ponto flutuante e a interpretação de pseudocódigos era custosa. Quando o IBM 704 trouxe o hardware de ponto flutuante, o custo oculto da interpretação ficou evidente. O projeto Fortran precisava convencer os usuários de que um compilador poderia gerar código tão rápido quanto o *assembly* manual. A equipe de John Backus focou pesadamente na otimização, e o Fortran quase alcançou a eficiência do código manual. Se o compilador gerasse código lento, a linguagem seria rejeitada, pois o custo de tempo de máquina era absurdamente maior que o tempo do programador. O sucesso da otimização garantiu sua adoção em massa na área científica.

### Questão 5 (Lisp vs. Fortran)
Fortran e Lisp são como classes opostas no *meta* de linguagens da época.
* **Domínios:** Fortran dominava o cálculo científico e numérico. Lisp foi criada para Inteligência Artificial e computação simbólica.
* **Representação de Dados:** Fortran usava vetores e matrizes de tamanho fixo na memória. Lisp processava listas encadeadas (formadas por átomos e sublistas), com alocação dinâmica e coleta de lixo implícita.
* **Estilo (Paradigma):** Fortran é puramente imperativa, baseada na arquitetura de von Neumann (variáveis, atribuições e iteração com laços). Lisp inaugurou a programação funcional pura, onde computações são realizadas aplicando funções a argumentos e laços são substituídos por recursão.

### Questão 7 (COBOL)
COBOL foi projetada estritamente para o domínio de processamento comercial e de negócios. 
* **Legibilidade e FLOW-MATIC:** Influenciada por Grace Hopper e pela linguagem FLOW-MATIC, a COBOL adotou uma sintaxe baseada na língua inglesa. O objetivo era que a linguagem fosse amigável para leigos, permitindo que gerentes pudessem ler e entender os programas.
* **Registros:** Foi a primeira a implementar estruturas de dados hierárquicas (registros), permitindo descrever com extrema precisão números decimais e a formatação de relatórios contábeis. O foco não era o cálculo matemático pesado, mas a formatação e movimentação precisa de blocos de dados comerciais.

### Questão 10 (ALGOL 68 e Ortogonalidade)
A ortogonalidade no projeto de linguagens significa que um conjunto relativamente pequeno de construções primitivas pode ser combinado de um número reduzido de formas para construir as estruturas de dados e controle. 
O ALGOL 68 levou isso ao extremo, permitindo que os usuários combinassem tipos primitivos para gerar uma imensidão de estruturas de dados. 
**Regularidade vs. Simplicidade:** Uma linguagem extremamente ortogonal (regular e sem exceções) não é automaticamente fácil de usar. No ALGOL 68, a liberdade irrestrita de combinações gerava construções desnecessariamente complexas. Simplicidade de verdade vem de um equilíbrio entre ortogonalidade e um número limitado de estruturas.

---

## Parte 2: Especialização, Objetos e Scripts (Q11 a Q20)

### Questão 11 (A Linhagem Imperativa vs. Prolog)
* **A Cadeia:** ALGOL 60 definiu o *core* imperativo estruturado com blocos locais e tipos explícitos. Pascal herdou essa estrutura, focando na simplicidade rígida para o ensino acadêmico e adicionando tipos definidos pelo usuário. C pegou essa base e a misturou com necessidades de baixo nível (linguagem de sistemas de BCPL/B), trocando a rigidez de tipagem do Pascal por flexibilidade brutal e manipulação de ponteiros. Todas essas são imperativas e presas à arquitetura de von Neumann.
* **Contraste com Prolog:** O Prolog rasga esse manual. Baseado em lógica e cálculo de predicados, o Prolog é não procedural (declarativo). Em vez de ditar o "como" (passo a passo), o programador dita o "o quê", fornecendo fatos e regras para que a própria *engine* (o motor de resolução) infira o resultado.

### Questão 13 (Ada)
O Departamento de Defesa dos EUA (DoD) tinha uma bagunça de mais de 450 linguagens operando em sistemas embarcados de aviônica e armas. Eles precisavam de uma "super armadura" com alto *status* de confiabilidade.
* **Pacotes:** O Ada introduziu pacotes para encapsular dados e subprogramas, o que trouxe a abstração de dados (essencial para escalar código crítico em times grandes).
* **Tratamento de Exceções:** Diferente de C, Ada permitiu interceptar erros em tempo de execução e tomar ações corretivas sem derrubar o sistema.
* **Concorrência:** Para sistemas de tempo real, forneceu execução de tarefas simultâneas com sincronização robusta (o mecanismo de *rendezvous*).

### Questão 14 (Smalltalk, C++ e Java)
A evolução da Orientação a Objetos (OOP) se deu por diferentes estratégias:
* **Smalltalk:** OOP pura. Tudo é um objeto e todo processamento é feito por envio de mensagens. Foi a pioneira do paradigma.
* **C++:** Híbrido. O objetivo de Stroustrup era adicionar abstração de dados e herança (vistos no Simula 67) sem perder a performance de C. Por isso, C++ suporta OOP e programação procedural, mantendo recursos perigosos do C (como ponteiros brutos) para retrocompatibilidade.
* **Java:** A limpeza. A Sun pegou o C++, removeu a herança múltipla, ponteiros e coerções inseguras, criando uma linguagem mais simples e segura. Sua portabilidade foi garantida compilando o código para *bytecodes* independentes da arquitetura, interpretados pela Máquina Virtual Java (JVM). 

### Questão 16 (Linguagens de Scripting)
Chamar tudo de "scripting" é apagar a *lore* de cada uma.
* **Perl:** Começou combinando `sh` e `awk` para utilitários de sistema e relatórios UNIX. Destaca-se por vetores dinâmicos e vetores associativos (*hashes*) integrados diretamente na sintaxe.
* **JavaScript:** Criada (Netscape) para interagir client-side com o DOM HTML. É dinamicamente tipada e baseada em protótipos em vez de classes, usando vetores e objetos como sua estrutura.
* **PHP:** Scripting puramente server-side, executado no servidor Web embutido dentro de arquivos HTML. Seus vetores são híbridos de vetores tradicionais (JavaScript) e dispersões (Perl).
* **Python:** Orientada a objetos e multiuso (do script de sistema à Web). Destaca-se pelas listas, tuplas imutáveis e dicionários.
* **Ruby:** Inspirada pela insatisfação com Perl e Python, focou em ser uma linguagem puramente orientada a objetos (como Smalltalk).
* **Lua:** Criada no Brasil, focou na extensibilidade. Suporta os paradigmas imperativo e funcional, e usa uma única e poderosa estrutura de dados primária: a Tabela (*table*).

### Questão 20 (Estudo de Caso)
* **Cálculo Científico:** **Fortran** (para processamento bruto baseado em *arrays*) ou **Python** (com bibliotecas de extensão em C).
* **Regras Declarativas:** **Prolog** (base de conhecimento lógica com sistema de resolução).
* **Aplicação Web Interativa:** **JavaScript** no cliente (para manipular o DOM dinamicamente) aliado a **PHP** ou **Ruby** no *back-end* (para *server-side* rápido).
* **Firmware Restrito:** **C** (pelo controle total da memória e hardware) ou **Ada** (se for um sistema crítico de missão que exija confiabilidade extrema).
* **Dois Trade-offs Históricos:** 
  1. Confiabilidade vs. Custo de Execução: O Ada e o Java adicionaram verificações estritas (como limites de vetores), perdendo um pouco de velocidade bruta para ganhar segurança contra falhas em sistemas complexos.
  2. Ortogonalidade vs. Simplicidade: O ALGOL 68 tentou fornecer poder total através de poucas regras combináveis (ortogonalidade excessiva), o que tornou a linguagem alienígena e ineficiente. PL/I seguiu o caminho oposto (milhares de comandos específicos), criando uma complexidade monstruosa.