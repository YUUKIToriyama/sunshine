#!/usr/bin/python

class MyClass():
	def __init__(self, message):
		self.value = message

my_instance = MyClass("My name is YAMADA")
print(my_instance.value)

class Example():
	def __init__(self, d1, d2, d3):
		self.val_1 = d1
		self.val_2 = d2
		self.val_3 = d3

	def total(self):
		return self.val_1 + self.val_2 + self.val_3

new_instance = Example(1,2,3)
#print(new_instance.val_1)
print(new_instance.total())
