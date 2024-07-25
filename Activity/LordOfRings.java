

// phase1
// 1
abstract class Character
{
    String name;
    String race;
    int level;
    int health;
    int power;
    Character(String name,String race,int level,int power){
        this.name=name;
        this.race=race;
        this.level=level;
        this.health=100;
        this.power=power;
    }

    public int getAttackPower(){
        return this.power;
    }
    public String getName(){
        return this.name;
    }

    public String getRace(){
        return this.race;
    }

    public int getLevel(){
        return this.level;

    }
    public int getHealth(){
        return this.health;
    }

    
    public void attackHealth(){
        this.health-=30;
        if(this.health<0){
            this.health=0;
        }
    }

    public void drinkPortion()
    {
        this.health+=50;
        if(this.health>100){
            this.health=100;
        }
        
    }
    
    abstract void viewAbilities();

}

// 2
class HumanRace extends Character
{   
    HumanRace(String name,int level,int power){
        super(name,"Human", level,power);
    }

    @Override
    public void viewAbilities(){
        System.out.println("Human abilities are: Knowledge and Technic");
    }
}

class DwarfRace extends Character
{
    DwarfRace(String name,int level,int power){
        super(name,"Dwarf",level,power);
    }

    @Override
    public void viewAbilities(){
        System.out.println("Dwarf abilities are: Resilience etc");
    }
}

class ElfRace extends Character
{
    ElfRace(String name,int level,int power){
        super(name,"Elf",level,power);
    }

    @Override
    public void viewAbilities(){
        System.out.println("Elf abilities are: Immortal");
    }


}

class HobbitRace extends Character{
    HobbitRace(String name,int level){
        super(name,"Hobbit",level,20);
    }

    @Override
    public void viewAbilities(){
        System.out.println("Hobbit abilities are: Dimintive and Stealth");
    }
}

//3
interface CharacterClass{
    
    void viewAbilities();
    
}

//4
class Ranger implements CharacterClass
{
    @Override    
    public void viewAbilities()
    {
        System.out.println("Ranger Abilities are: tracking and Hunting");

    }
}

class Wizard implements CharacterClass
{
    @Override
    public void viewAbilities(){
        System.out.println("Wizard Abilities are SpellCasting");


    }
}

class Warrior implements CharacterClass{
    @Override
    public void viewAbilities(){
        System.out.println("Warriot ability is Combat power");
    }
}

class Commoner implements CharacterClass{
    @Override
    public void viewAbilities(){
        System.out.println("commoner abilities are none");
    }
}
    
// 5
abstract class Creature
{
    int health;
    int power;
    String race;
    Creature(String race,int health,int power ){
        this.power=power;
        this.health=health;
        this.race=race;
    }

    public String getName(){
        return this.race;
    }

    public int getHealth(){
        return this.health;

    }

    public int getAttackPower(){
        return this.power;
    }
    public void attackHealth(int power){
        this.health-=power;
        if(this.health<0){
            this.health=0;
        }
    }

    abstract void viewAbilities();
}

//6 
class Orc extends Creature{
    Orc(int health,int power){
        super("orc",health,power);
    }
    @Override
    public void viewAbilities(){
        System.out.println("Orc abilities are the electrical damage ");
    }
}

class Troll extends Creature{
    Troll(int health,int power){
        super("Troll",health,power);
    }
    @Override
    public void viewAbilities(){
        System.out.println("m");
    }
}

class Dragon extends Creature{
    Dragon(int health,int power){
        super("Dragon",health,power);
    }
    @Override
    public void viewAbilities(){

    }
}

class Nazgull extends Creature{
    Nazgull(int health,int power){
        super("Nazgull",health,power);
    }
    @Override
    public void viewAbilities(){

    }
}

// phase2
class Battle
{
    public void battleBetween(Character character,Creature creature){
        
        System.out.println("Battle Between\n"+character.getName()+" VS "+creature.getName());
        System.out.println(character.getName()+" Health and Attack power is "+character.getHealth()+" and "+character.getAttackPower()+"\n"+creature.getName()+" Helth and power is "+creature.getHealth()+" and "+creature.getAttackPower());
        while(character.getHealth()>0 && creature.getHealth()>0 ){
            character.attackHealth();
            creature.attackHealth(character.getAttackPower());
            if(character.getHealth()<10 && creature.getHealth()>character.getHealth()){
                character.drinkPortion();
            }

        }
        if(character.getHealth()>0){
            System.out.println(character.getName()+" won the battle");

        }
        else{
            System.out.println(creature.getName()+" won  the battle");
        }
        
    }
}

public class LordOfRings
{
    public static void main(String[] args) {
        Character character=new ElfRace("Grindalf",30, 20);
        Creature creature=new Dragon(20, 30);
        Battle battle=new Battle();
        battle.battleBetween(character, creature);
        

    }
}
