"""
What is abstraction?

Abstraction is the process of hiding the internal details of an object and only showing the essential features or behaviors to the outside world. Abstraction allows you to focus on the essential aspects of a problem and reduces complexity, making it easier to understand and work with.

"""
from abc import ABC, abstractmethod

class RBI(ABC):
    @abstractmethod
    def lone_interest(self):
        pass

class SBI(RBI):
    def lone_interest(self):
        return 8.5
    
class IDBI(RBI):
    def lone_interest(self):
        return 9.0
    

obj_sbi = SBI()
# print(dir(obj_sbi))
# print(obj_sbi.lone_interest())

obj_idbi = IDBI()

# print(dir(obj_idbi))

# print(obj_idbi.lone_interest())
