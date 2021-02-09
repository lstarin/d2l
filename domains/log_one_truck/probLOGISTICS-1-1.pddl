(define (problem logistics-1-1)
(:domain logistics)
(:objects
  pos2 pos1 apt1 apt2 - place
  obj1 obj2 - package)
  
(:init  (att apt1) (at obj1 pos1) (at obj2 pos2))

(:goal (and (at obj1 apt2) (at obj2 apt1))))
