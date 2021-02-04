(define (problem logistics-4-1)
(:domain logistics)
(:objects
  pos2 pos1 apt1 apt2 - location
  obj23 obj22 obj21 obj13 obj12 obj11 - package)

(:init  (att pos1) (at obj11 pos1) (nfull) (load)
 (at obj12 pos1) (at obj13 pos1) (at obj21 pos2) (at obj22 pos2)
 (at obj23 pos2))


(:goal (and (at obj12 apt2) ));;(at obj13 apt1) (at obj21 apt2) (at obj11 pos2)))
)
