package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author Jefferson V.
 */
public class BD {

    private static ArrayList<Usuario> usuariosList;
    
    public static ArrayList<Usuario> getUsuariosList(){
        if(usuariosList == null){
            usuariosList = new ArrayList<>();
            
            Usuario user1 = new Usuario();
            user1.setNome("Rafael");
            user1.setMedia(0);
            usuariosList.add(user1);
            
            Usuario user2 = new Usuario();
            user2.setNome("Jefferson");
            user2.setMedia(0);
            usuariosList.add(user2);
            
            Usuario user3 = new Usuario();
            user3.setNome("Fulano");
            user3.setMedia(0);
            usuariosList.add(user3);
            
            Usuario user4 = new Usuario();
            user4.setNome("Alberto");
            user4.setMedia(0);
            usuariosList.add(user4);
            
            Usuario user5 = new Usuario();
            user5.setNome("Roberto");
            user5.setMedia(0);
            usuariosList.add(user5);
            
            Usuario user6 = new Usuario();
            user6.setNome("Mathias");
            user6.setMedia(0);
            usuariosList.add(user6);
            
            Usuario user7 = new Usuario();
            user7.setNome("Cleber");
            user7.setMedia(0);
            usuariosList.add(user7);
            
            Usuario user8 = new Usuario();
            user8.setNome("Carlos");
            user8.setMedia(0);
            usuariosList.add(user8);
           
            Usuario user9 = new Usuario();
            user9.setNome("Julio");
            user9.setMedia(0);
            usuariosList.add(user9);
            
            Usuario user10 = new Usuario();
            user10.setNome("Vinicius");
            user10.setMedia(0);
            usuariosList.add(user10);
        }
        return usuariosList;
    }
    
    
}
