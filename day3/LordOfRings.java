abstract class Character
{
    String name;
    String race;
    int level;
    int Health;
    Character(String name,String race,int level){
        this.name=name;
        this.race=race;
        this.level=level;
        this.Health=100;
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
        return this.Health;
    }
    public void attackHealth(){
        this.Health-=30;
        if(this.Health<0){
            this.Health=0;
        }
    }

    public void drinkPortion()
    {
        this.Health+=50;
        if(this.Health>100){
            this.Health=100;
        }
        
    }
    
    abstract void ability();

}

class HumanRace extends Character
{   
    HumanRace(String name,int level){
        super(name,"Human", level);
    }

    @Override
    public void ability(){
        System.out.println("Human abilities are: Knowledge and Technic");
    }
}

class DwarfRace extends Character
{
    DwarfRace(String name,int level){
        super(name,"Dwarf",level);
    }

    @Override
    public void ability(){
        System.out.println("Dwarf abilities are: Resilience etc");
    }
}

class ElfRace extends Character
{
    ElfRace(String name,int level){
        super(name,"Elf",level);
    }

    @Override
    public void ability(){
        System.out.println("Elf abilities are: Immortal");
    }


}

class HobbitRace extends Character{
    HobbitRace(String name,int level){
        super(name,"Hobbit",level);
    }

    @Override
    public void ability(){
        System.out.println("Hobbit abilities are: Dimintive and Stealth");
    }
}
public class LordOfRings
{
    public static void main(String[] args) {
        HumanRace pavan=new HumanRace("Pavan", 35);
        System.out.println(pavan.getName());
        pavan.ability();
        System.out.println(pavan.getHealth());
        pavan.attackHealth();
        System.out.println(pavan.getHealth());
        pavan.drinkPortion();
        System.out.println(pavan.getHealth());
    }
}
