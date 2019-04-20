package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author Jefferson V.
 */
public class BD {

    private static ArrayList<Usuario> usuariosList;
    
    public static ArrayList<Usuario> getUsuarios(){
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
        }
        return usuariosList;
    }
    
    
}
