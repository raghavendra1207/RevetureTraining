import com.lordOfRings.Character;



class Battle{
    public void battle(Character character,Creature creature)  { 
         System.out.println("battle for "+character.getName()+"\nbelongs to "+character.getRace()+" VS "+creature.getName());
    }
}

public class Phase2
{
    public static void main(String args[])
    {
        Character Grindalf=new HumanRace("Grindlaf",30,40);
        Creature orc1=new Orc(20,30);
        Battle b1=new Battle();
        b1.battle(Grindalf,orc1);
    }
}