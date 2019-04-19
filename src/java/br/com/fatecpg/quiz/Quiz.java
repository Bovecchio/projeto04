/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author finha
 */
public class Quiz {
    public static ArrayList<Question> getQuiz(){
    ArrayList<Question> test = new ArrayList<>();
    test.add(new Question("Não possui tag de fechamento.", "elemento autonômo", new String[]{"elemento contêiner","Vetor Associativo","Desing repulsivo", "elemento autonômo"}));
    test.add(new Question("O nome do atributo necessário de um elemento HTML 'a' e que é usado para inserir o caminho para um recurso que se deseja ligar a página.", "href", new String[]{"body","href","head","charset"}));
    test.add(new Question("Atributo de um campo de entrada de um formulário que define uma breve dica do valor esperado e que desaparece assim que o usuário digita algo no campo.", "placeholder", new String[]{"action","placeholder","$_Server","php arquivo.php"}));
    test.add(new Question("Vetor que contém os valores de parâmetros passados para o script via linha de comando.", "$argv", new String[]{"input","charset","$_Server","$argv"}));
    test.add(new Question("Neste elemento há informações como o título da janela, o conjunto de caracteres, os scripts e folhas de estilos usados na página.", "head", new String[]{"body","href","head","@media"}));
    test.add(new Question("Esta marcação contém a indicação da versão do HTML utilizada no código.", "doctype", new String[]{"doctype","charset","action","body"}));
    test.add(new Question("Permite definir uma regra CSS que deve ser aplicada a um tipo de mídia específico, tal como uma tela ou uma impressora.", "@media", new String[]{"body","head","@media","charset"}));
    test.add(new Question("Possui uma tag de abertura e outra tag de fechamento.", "elemento contêiner", new String[]{"elemento contêiner","Vetor Associativo","Desing repulsivo", "elemento autonômo"}));
    test.add(new Question("Elemento HTML utilizado para associar uma folha de estilos CSS ao documento HTML.", "link", new String[]{"body","href","input","link"}));
    test.add(new Question("Elemento HTML utilizado para definir um campo de entrada de um formulário.", "2", new String[]{"entry","gateway","input","appetizer"}));
    return test;
    }
}
