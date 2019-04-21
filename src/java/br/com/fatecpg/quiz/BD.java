package br.com.fatecpg.quiz;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/**
 *
 * @author Jefferson V.
 */
public class BD {

    private static ArrayList<Usuario> usuariosList;
    private static ArrayList<Usuario> usuarioList;

    public static ArrayList<Usuario> ordenaUsuariosList() {
        List<Usuario> obj = new ArrayList<Usuario>(usuariosList);

        Collections.sort(obj, new Comparator<Usuario>() {
            @Override
            public int compare(Usuario object1, Usuario object2) {
                return object1.getNota() > object2.getNota() ? 1 : -1;
            }
        });
        Collections.reverse(obj);
        return (ArrayList<Usuario>) obj;
    }

    public static ArrayList<Usuario> removeUsuarioList() {
        BD.getUsuarioList().removeAll(usuarioList);
        return usuarioList;
    }

    public static ArrayList<Usuario> getUsuarioList() {
        if (usuarioList == null) {
            usuarioList = new ArrayList<>();
        }

        return usuarioList;
    }

    public static ArrayList<Usuario> getUsuariosList() {
        if (usuariosList == null) {
            usuariosList = new ArrayList<>();

            Usuario user1 = new Usuario();
            user1.setNome("Rafael");
            user1.setNota(8);
            usuariosList.add(user1);

            Usuario user2 = new Usuario();
            user2.setNome("Jefferson");
            user2.setNota(1);
            usuariosList.add(user2);

            Usuario user3 = new Usuario();
            user3.setNome("Fulano");
            user3.setNota(4);
            usuariosList.add(user3);

            Usuario user4 = new Usuario();
            user4.setNome("Alberto");
            user4.setNota(5);
            usuariosList.add(user4);

            Usuario user5 = new Usuario();
            user5.setNome("Roberto");
            user5.setNota(8);
            usuariosList.add(user5);

            Usuario user6 = new Usuario();
            user6.setNome("Mathias");
            user6.setNota(10);
            usuariosList.add(user6);

            Usuario user7 = new Usuario();
            user7.setNome("Cleber");
            user7.setNota(9);
            usuariosList.add(user7);

            Usuario user8 = new Usuario();
            user8.setNome("Carlos");
            user8.setNota(9);
            usuariosList.add(user8);

            Usuario user9 = new Usuario();
            user9.setNome("Julio");
            user9.setNota(7);
            usuariosList.add(user9);

            Usuario user10 = new Usuario();
            user10.setNome("Vinicius");
            user10.setNota(6);
            usuariosList.add(user10);
        }
        return usuariosList;
    }

}
