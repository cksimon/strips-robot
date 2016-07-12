(define (problem TPP)
(:domain TPP-Propositional)
(:objects
	box1 box2 box3 - box
	robot1 - robot
	room1 room2 room3 - room
	depot1 - depot
	level0 level1 - level)

(:init
	(next level1 level0)
	(ready-to-load box1 room1 level0)
	(ready-to-load box2 room2 level0)
	(ready-to-load box3 room3 level0)
	(stored box1 level0)
	(stored box2 level0)
	(stored box3 level0)
	(loaded box1 robot1 level0)
	(loaded box2 robot1 level0)
	(loaded box3 robot1 level0)
	(connected depot1 room1)
	(connected room1 depot1)
	(connected depot1 room2)
	(connected room2 depot1)
	(connected depot1 room3)
	(connected room3 depot1)
	(ready-to-offload box1 room1 level1)
	(ready-to-offload box2 room2 level1)
	(ready-to-offload box3 room3 level1)
	(at robot1 depot1))

(:goal (and
	(stored box1 level1)
	(stored box2 level1)
	(stored box3 level1)))

)
