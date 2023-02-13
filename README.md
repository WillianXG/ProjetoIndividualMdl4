# Trabalho-individual-Modulo-4

Perguntas a serem respondidas:

1º Existem outras entidades além dessas três?

R: Acredito que haja mais relacionamentos entre cursos do que alunos, classes e cursos neste diagrama.
Também considerei professores, pessoas que dirigem cursos e admissões.

2º Quais são os principais campos e tipos?

ID - com o tipo INT (Um inteiro de tamanho normal)

Nome - com o tipo VARCHAR (Uma sequência de caracteres de texto de tamanho a ser definido)

Email -  com o tipo VARCHAR (Uma sequência de caracteres de texto de tamanho a ser definido)

Valor_Hora - com o tipo INTEGER (Um grupo de tipos de dados)

Data - com o tipo DATE (Responsável por armazenar uma hora ou data)

Carga_Horária - com o timpo SMALLINT (Responsável por armazenar pequenos números inteiros)

cpf - com o tipo CHAR (Uma sequência de caracteres de texto de tamanho fixo)

preço = com o tipo DOUBLE (É um tipo númerico de base 2)

3º Como essas entidades estão relacionadas?

1-Meu diagrama começa com o objeto do curso que serve como base.
Um nome comercial, horário, preço e educação necessária necessária.
 Um aluno deve ter tudo o que precisa no curso.  Isso inclui a duração do curso e quanto custa.

2- Criei uma tabela associada a Turma, Alunos, Professores, Cursos e Matrículas depois disso.
 A inscrição está diretamente relacionada à aula.  Como existe apenas um certo número de vagas, isso significa que qualquer mudança na classe
afeta a inscrição.
 Uma nova inscrição é garantida se uma classe aberta estiver sendo realizada;  além disso, qualquer classe referenciando o aluno é incluída no registro.
Os alunos são obrigados a participar do concurso.

3- Tanto a lista de aulas quanto a lista de cursos compartilham um campo comum — o tempo de carregamento.
A carga horária de qualquer curso de estudo pode ser alterada a qualquer momento e isso pode causar problemas.
independentemente das novas funções de reporte, a carga de trabalho permanece a mesma
Todos os alunos dessa classe mantêm seu status de alunos.

