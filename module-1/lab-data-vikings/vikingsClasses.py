
# Soldier


class Soldier:
    def __init__(self, health=100, strength=20):
        self.health = health
        self.strength = strength
    def attack(self):
        return self.strength
    def receiveDamage(self,damage):
        self.health -= damage

    pass

# Viking


class Viking(Soldier):
    def __init__(self, name, health=100, strength=20):
        super().__init__(health, strength)
        self.name = name
    def attack(self):
        return self.strength
    def receiveDamage(self, damage):
        self.health -= damage
        extra_health = self.health
        if extra_health > 0:
            return (f"{self.name} has received {damage} points of damage")
        else:
            return (f"{self.name} has died in act of combat")
    def battleCry(self):
        return 'Odin Owns You All!'


    pass

# Saxon


class Saxon:
    def __init__(self, health=100, strength=15):
        self.health = health
        self.strength = strength
    def attack(self):
        return self.strength
    def receiveDamage(self, damage):
        self.health -= damage
        extra_health = self.health
        if extra_health > 0:
            return (f"A Saxon has received {damage} points of damage")
        else:
            return (f"A Saxon has died in combat")
    

    pass

# War


class War:
    import random
    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []
        '''
        self.saxonhealth = 100
        self.vikinghealth = 100
        self.vikingdamage = random.randrange(0,40)
        self.saxondamage = random.randrange(0,25)
        '''
    def addViking(self, viking):
        self.vikingArmy.append(viking)
    def addSaxon(self, saxon):
        self.saxonArmy.append(saxon)
    def vikingAttack(self):
        import random
        vik = random.choice(self.vikingArmy)
        sax = random.choice(self.saxonArmy)
        damage_by_vik = sax.receiveDamage(vik.attack())
        if sax.health <= 0:
            self.saxonArmy.remove(sax)

        return damage_by_vik 
    def saxonAttack(self):
        import random
        vik2 = random.choice(self.vikingArmy)
        sax2 = random.choice(self.saxonArmy)
        damage_by_sax = vik2.receiveDamage(sax2.attack()) 
        if vik2.health <= 0 :
            self.vikingArmy.remove(vik2)

        return damage_by_sax
    def showStatus(self):
        if len(self.saxonArmy) == 0:
            return "Vikings have won the war of the century!"
        elif len(self.vikingArmy) == 0:
            return "Saxons have fought for their lives and survive another day..."
        return "Vikings and Saxons are still in the thick of battle."









        

    
        





    
    
