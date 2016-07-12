; IPC5 Domain: TPP Propositional
; Authors: Alfonso Gerevini and Alessandro Saetti 

(define (domain TPP-Propositional)
(:requirements :strips :typing)
(:types place locatable level - object
	depot room - place
	robot box - locatable)

(:predicates (loaded ?g - box ?t - robot ?l - level)
	     (ready-to-load ?g - box ?m - room ?l - level) 
	     (stored ?g - box ?l - level) 
	     (box-present ?g - box ?m -  room ?l - level)
	     (next ?l1 ?l2 - level)
	     (at ?t - robot ?p - place)
	     (connected ?p1 ?p2 - place))

(:action move
 :parameters (?t - robot ?from ?to - place)
 :precondition (and (at ?t ?from) (connected ?from ?to))
 :effect (and (not (at ?t ?from)) (at ?t ?to)))


; ### LOAD ###
; ?l1 is the level of ?g ready to be loaded at ?m before loading
; ?l2 is the level of ?g ready to be loaded at ?m after loading
; ?l3 is the level of ?g in ?t before loading
; ?l4 is the level of ?g in ?t after loading

(:action pick-up
 :parameters (?g - box ?t - robot ?m - room ?l1 ?l2 ?l3 ?l4 - level)
 :precondition (and (at ?t ?m) (loaded ?g ?t ?l3)
		    (ready-to-load ?g ?m ?l2) (next ?l2 ?l1) (next ?l4 ?l3))
 :effect (and (loaded ?g ?t ?l4) (not (loaded ?g ?t ?l3)) 
	      (ready-to-load ?g ?m ?l1) (not (ready-to-load ?g ?m ?l2))))


; ### UNLOAD ###
; ?l1 is the level of ?g in ?t before unloading
; ?l2 is the level of ?g in ?t after unloading
; ?l3 is the level of ?g in ?d before unloading
; ?l4 is the level of ?g in ?d after unloading

(:action put-down
 :parameters (?g - box ?t - robot ?d - depot ?l1 ?l2 ?l3 ?l4 - level)
 :precondition (and (at ?t ?d) (loaded ?g ?t ?l2)
		    (stored ?g ?l3) (next ?l2 ?l1) (next ?l4 ?l3))
 :effect (and (loaded ?g ?t ?l1) (not (loaded ?g ?t ?l2)) 
	      (stored ?g ?l4) (not (stored ?g ?l3))))


; ### BUY ###
; ?l1 is the level of ?g on sale at ?m before buying
; ?l2 is the level of ?g on sale at ?m after buying 
; ?l3 is the level of ?g ready to be loaded at ?m before buying
; ?l4 is the level of ?g ready to be loaded at ?m after buying

(:action locate-box
 :parameters (?t - robot ?g - box ?m - room ?l1 ?l2 ?l3 ?l4 - level)
 :precondition (and (at ?t ?m) (box-present ?g ?m ?l2) (ready-to-load ?g ?m ?l3)
		    (next ?l2 ?l1) (next ?l4 ?l3))
 :effect (and (box-present ?g ?m ?l1) (not (box-present ?g ?m ?l2)) 
	      (ready-to-load ?g ?m ?l4) (not (ready-to-load ?g ?m ?l3))))

)
