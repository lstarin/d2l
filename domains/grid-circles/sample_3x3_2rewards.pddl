
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem grid-circles-3x3)
    (:domain grid-circles-strips)

    (:objects
        c_0_0 c_0_1 c_0_2 c_1_0 c_1_1 c_1_2 c_2_0 c_2_1 c_2_2 - cell
    )

    (:init
        (reward c_2_2)
        (reward c_1_0)
        (at c_0_0)
        (adjacent c_1_2 c_1_1)
        (adjacent c_1_1 c_0_1)
        (adjacent c_1_1 c_1_0)
        (adjacent c_2_2 c_2_1)
        (adjacent c_0_0 c_0_1)
        (adjacent c_0_1 c_0_0)
        (adjacent c_0_2 c_1_2)
        (adjacent c_1_2 c_0_2)
        (adjacent c_1_0 c_0_0)
        (adjacent c_0_0 c_1_0)
        (adjacent c_2_1 c_2_2)
        (adjacent c_1_1 c_2_1)
        (adjacent c_2_0 c_1_0)
        (adjacent c_1_1 c_1_2)
        (adjacent c_1_0 c_1_1)
        (adjacent c_0_2 c_0_1)
        (adjacent c_0_1 c_0_2)
        (adjacent c_1_0 c_2_0)
        (adjacent c_0_1 c_1_1)
        (adjacent c_2_2 c_1_2)
        (adjacent c_2_0 c_2_1)
        (adjacent c_2_1 c_1_1)
        (adjacent c_2_1 c_2_0)
        (adjacent c_1_2 c_2_2)
    )

    (:goal
        (and (not (reward c_2_2)) (not (reward c_1_0)) )
    )

    
    
    
)

