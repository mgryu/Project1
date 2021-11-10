public class KantoPokedex {
	public static void  PokemonInsert(){
        List<Account> Pokemon = new List<Account>();
        	
        for(integer i = 1; i<=151; i++){
            Account a = new Account(Name='Pokemon #'+ i);
            Pokemon.add(a);
        }
        insert Pokemon;
    }
}