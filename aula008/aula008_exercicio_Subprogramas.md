# Exercício — Subprogramas: qual é a saída?

Para cada trecho, são apresentadas a saída do programa e a relação com os conceitos estudados em subprogramas.

## 1. Python — argumento padrão mutável

### Saída

```text
[1]
[1, 2]
```

### Explicação

A lista usada como valor padrão é criada uma única vez, no momento em que a função é definida. Por isso, as duas chamadas de `adicionar` utilizam a mesma lista. A primeira chamada adiciona `1`, e a segunda acrescenta `2` à lista que já continha o primeiro valor.

O trecho demonstra que um parâmetro padrão mutável pode preservar alterações entre chamadas de um subprograma. Para evitar esse comportamento, seria mais seguro usar `None` como valor padrão e criar uma nova lista dentro da função.

## 2. Java — passagem de parâmetros

### Saída

```text
0 5
```

### Explicação

Em Java, os argumentos são passados por valor. No caso do vetor `v`, o valor passado é uma cópia da referência ao mesmo objeto. Assim, `v[0] = 0` altera o conteúdo do vetor original.

Já o parâmetro primitivo `n` recebe apenas uma cópia do valor `5`. A atribuição `n = 0` modifica somente a variável local do método `zera`, sem alterar a variável `n` declarada fora dele.

O trecho demonstra a diferença entre alterar um objeto por meio de uma referência recebida e reatribuir um parâmetro local de tipo primitivo.

## 3. Python — funções lambda e fechamento léxico

### Saída

```text
[2, 2, 2]
```

### Explicação

As funções `lambda` não armazenam uma cópia do valor de `i` em cada repetição. Elas capturam a variável `i` por meio de um fechamento (*closure*) e consultam seu valor somente quando são executadas.

Quando as funções são chamadas, o laço já terminou e o valor final de `i` é `2`. Por isso, as três funções retornam `2`.

O trecho demonstra fechamento léxico e vinculação tardia (*late binding*) de variáveis capturadas por funções internas.

## 4. C — variável local estática

### Saída

```text
3
```

### Explicação

A variável `n` foi declarada com `static`. Isso significa que ela é inicializada apenas uma vez e conserva seu valor entre as chamadas da função `contador`.

- Primeira chamada: `n` passa de `0` para `1`.
- Segunda chamada: `n` passa de `1` para `2`.
- Terceira chamada, executada dentro do `printf`: `n` passa de `2` para `3`, e esse valor é impresso.

O trecho demonstra uma variável local com tempo de vida estático e a manutenção de estado entre diferentes chamadas de um subprograma.

## 5. Rust — empréstimo e retorno de um novo valor

### Saída

```text
[1, 2, 3] [2, 4, 6]
```

### Explicação

A função `dobra` recebe `v` por referência, usando `&Vec<i32>`. Portanto, ela apenas empresta o vetor e não assume sua propriedade. O método `iter()` percorre os elementos sem consumir nem modificar o vetor original, enquanto `map` multiplica cada elemento por `2` e `collect` cria um novo vetor.

Assim, `v` continua sendo `[1, 2, 3]`, e `d` recebe o novo vetor `[2, 4, 6]`.

O trecho demonstra passagem por referência, empréstimo (*borrowing*), preservação da propriedade (*ownership*) e retorno de um novo valor por um subprograma.

## 6. Python — escopo de variável local e global

### Resultado

O programa não imprime um número. Ele é interrompido com um erro semelhante a:

```text
UnboundLocalError: cannot access local variable 'total' where it is not associated with a value
```

### Explicação

Como existe uma atribuição a `total` dentro da função, o Python considera `total` uma variável local em todo o corpo de `adiciona`. Na expressão `total + x`, porém, essa variável local é lida antes de ter recebido algum valor, causando o erro.

A variável global `total = 0` não é utilizada automaticamente nesse caso. Para modificá-la dentro da função, seria necessário declarar `global total` antes da atribuição.

O trecho demonstra as regras de escopo de variáveis em subprogramas, especialmente a diferença entre variáveis locais e globais.

## Resumo dos conceitos

1. **Python:** persistência de um argumento padrão mutável entre chamadas.
2. **Java:** passagem por valor de tipos primitivos e de referências a objetos.
3. **Python:** fechamento léxico e vinculação tardia.
4. **C:** variável local estática e preservação de estado.
5. **Rust:** empréstimo, propriedade e criação de um novo valor de retorno.
6. **Python:** escopo local, escopo global e erro por leitura antes da atribuição.
