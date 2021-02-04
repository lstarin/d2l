(define (problem logistics-5-0)
(:domain logistics)
(:objects
  pos2 pos1 apt2 apt1 - location
  obj23 obj22 obj21 obj13 obj12 obj11 - package)

(:init (nfull) (load) (att pos1) (at obj11 pos1)
 (at obj12 pos1) (at obj13 pos1) (at obj21 pos2) (at obj22 pos2)
 (at obj23 pos2))
(:goal (and (at obj23 apt2) (at obj22 apt1) (at obj13 apt2) (at obj12 pos2)
            (at obj11 pos2)))
)
