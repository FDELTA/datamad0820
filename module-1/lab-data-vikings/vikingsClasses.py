
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
    pass

# War


class War:
    pass
