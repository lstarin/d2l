
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem grid-circles-5x5)
    (:domain grid-circles-strips)

    (:objects
        c_0_0 c_0_1 c_0_2 c_0_3 c_0_4 c_1_0 c_1_1 c_1_2 c_1_3 c_1_4 c_2_0 c_2_1 c_2_2 c_2_3 c_2_4 c_3_0 c_3_1 c_3_2 c_3_3 c_3_4 c_4_0 c_4_1 c_4_2 c_4_3 c_4_4 - cell
    )

    (:init
        (reward c_1_1)
        (reward c_3_2)
        (reward c_3_1)
        (at c_0_0)
        (adjacent c_2_1 c_3_1)
        (adjacent c_1_4 c_1_3)
        (adjacent c_1_2 c_1_1)
        (adjacent c_4_2 c_4_3)
        (adjacent c_0_2 c_0_3)
        (adjacent c_0_3 c_0_4)
        (adjacent c_2_2 c_2_3)
        (adjacent c_2_3 c_3_3)
        (adjacent c_4_1 c_4_2)
        (adjacent c_3_0 c_2_0)
        (adjacent c_1_4 c_0_4)
        (adjacent c_0_3 c_0_2)
        (adjacent c_1_1 c_0_1)
        (adjacent c_1_2 c_1_3)
        (adjacent c_2_3 c_2_4)
        (adjacent c_3_0 c_3_1)
        (adjacent c_2_4 c_1_4)
        (adjacent c_1_3 c_0_3)
        (adjacent c_1_1 c_1_0)
        (adjacent c_2_2 c_2_1)
        (adjacent c_3_1 c_3_0)
        (adjacent c_4_1 c_3_1)
        (adjacent c_3_3 c_3_2)
        (adjacent c_3_2 c_4_2)
        (adjacent c_0_0 c_0_1)
        (adjacent c_2_4 c_3_4)
        (adjacent c_0_1 c_0_0)
        (adjacent c_2_0 c_3_0)
        (adjacent c_3_4 c_3_3)
        (adjacent c_4_2 c_3_2)
        (adjacent c_0_3 c_1_3)
        (adjacent c_0_2 c_1_2)
        (adjacent c_1_2 c_0_2)
        (adjacent c_1_0 c_0_0)
        (adjacent c_3_4 c_2_4)
        (adjacent c_0_0 c_1_0)
        (adjacent c_3_0 c_4_0)
        (adjacent c_3_4 c_4_4)
        (adjacent c_2_1 c_2_2)
        (adjacent c_1_1 c_2_1)
        (adjacent c_0_4 c_0_3)
        (adjacent c_2_0 c_1_0)
        (adjacent c_1_1 c_1_2)
        (adjacent c_1_3 c_1_4)
        (adjacent c_2_2 c_3_2)
        (adjacent c_3_2 c_3_1)
        (adjacent c_1_3 c_2_3)
        (adjacent c_3_1 c_3_2)
        (adjacent c_0_4 c_1_4)
        (adjacent c_4_0 c_4_1)
        (adjacent c_4_1 c_4_0)
        (adjacent c_1_0 c_1_1)
        (adjacent c_0_2 c_0_1)
        (adjacent c_2_3 c_2_2)
        (adjacent c_0_1 c_0_2)
        (adjacent c_1_0 c_2_0)
        (adjacent c_4_0 c_3_0)
        (adjacent c_4_3 c_3_3)
        (adjacent c_4_4 c_3_4)
        (adjacent c_1_4 c_2_4)
        (adjacent c_3_1 c_2_1)
        (adjacent c_3_3 c_2_3)
        (adjacent c_4_3 c_4_4)
        (adjacent c_4_4 c_4_3)
        (adjacent c_0_1 c_1_1)
        (adjacent c_4_3 c_4_2)
        (adjacent c_2_2 c_1_2)
        (adjacent c_2_4 c_2_3)
        (adjacent c_2_0 c_2_1)
        (adjacent c_3_2 c_3_3)
        (adjacent c_1_3 c_1_2)
        (adjacent c_2_1 c_1_1)
        (adjacent c_3_2 c_2_2)
        (adjacent c_3_3 c_4_3)
        (adjacent c_2_1 c_2_0)
        (adjacent c_1_2 c_2_2)
        (adjacent c_2_3 c_1_3)
        (adjacent c_4_2 c_4_1)
        (adjacent c_3_3 c_3_4)
        (adjacent c_3_1 c_4_1)
        (blocked c_3_3)
        (blocked c_2_1)
        (blocked c_2_2)
        (blocked c_2_3)
    )

    (:goal
        (and (not (reward c_0_0)) (and (not (reward c_0_1)) (and (not (reward c_0_2)) (and (not (reward c_0_3)) (and (not (reward c_0_4)) (and (not (reward c_1_0)) (and (not (reward c_1_1)) (and (not (reward c_1_2)) (and (not (reward c_1_3)) (and (not (reward c_1_4)) (and (not (reward c_2_0)) (and (not (reward c_2_1)) (and (not (reward c_2_2)) (and (not (reward c_2_3)) (and (not (reward c_2_4)) (and (not (reward c_3_0)) (and (not (reward c_3_1)) (and (not (reward c_3_2)) (and (not (reward c_3_3)) (and (not (reward c_3_4)) (and (not (reward c_4_0)) (and (not (reward c_4_1)) (and (not (reward c_4_2)) (and (not (reward c_4_3)) (not (reward c_4_4))))))))))))))))))))))))))
    )

    
    
    
)

