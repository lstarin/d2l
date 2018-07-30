
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem gridworld-3x3)
    (:domain gridworld-strips)

    (:objects
        c1 c2 c3 - coordinate
    )

    (:init
        (= (maxpos ) c3)
        (= (ypos ) c1)
        (= (xpos ) c1)
        (succ c1 c2)
        (succ c2 c3)
    )

    (:goal
        (and (= (xpos ) c3) (= (ypos ) c3))
    )

    
    
    
)

