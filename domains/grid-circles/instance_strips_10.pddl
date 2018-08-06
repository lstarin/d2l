
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem grid-circles-10x10)
    (:domain grid-circles-strips)

    (:objects
        c_0_0 c_0_1 c_0_2 c_0_3 c_0_4 c_0_5 c_0_6 c_0_7 c_0_8 c_0_9 c_1_0 c_1_1 c_1_2 c_1_3 c_1_4 c_1_5 c_1_6 c_1_7 c_1_8 c_1_9 c_2_0 c_2_1 c_2_2 c_2_3 c_2_4 c_2_5 c_2_6 c_2_7 c_2_8 c_2_9 c_3_0 c_3_1 c_3_2 c_3_3 c_3_4 c_3_5 c_3_6 c_3_7 c_3_8 c_3_9 c_4_0 c_4_1 c_4_2 c_4_3 c_4_4 c_4_5 c_4_6 c_4_7 c_4_8 c_4_9 c_5_0 c_5_1 c_5_2 c_5_3 c_5_4 c_5_5 c_5_6 c_5_7 c_5_8 c_5_9 c_6_0 c_6_1 c_6_2 c_6_3 c_6_4 c_6_5 c_6_6 c_6_7 c_6_8 c_6_9 c_7_0 c_7_1 c_7_2 c_7_3 c_7_4 c_7_5 c_7_6 c_7_7 c_7_8 c_7_9 c_8_0 c_8_1 c_8_2 c_8_3 c_8_4 c_8_5 c_8_6 c_8_7 c_8_8 c_8_9 c_9_0 c_9_1 c_9_2 c_9_3 c_9_4 c_9_5 c_9_6 c_9_7 c_9_8 c_9_9 - cell
    )

    (:init
        (reward c_3_1)
        (reward c_9_9)
        (reward c_9_5)
        (reward c_3_3)
        (reward c_5_2)
        (reward c_0_1)
        (reward c_7_8)
        (reward c_8_6)
        (at c_0_0)
        (adjacent c_4_5 c_4_6)
        (adjacent c_8_5 c_8_4)
        (adjacent c_2_3 c_3_3)
        (adjacent c_1_4 c_0_4)
        (adjacent c_0_3 c_0_2)
        (adjacent c_8_2 c_8_1)
        (adjacent c_1_6 c_0_6)
        (adjacent c_0_8 c_1_8)
        (adjacent c_8_7 c_7_7)
        (adjacent c_3_4 c_2_4)
        (adjacent c_1_3 c_2_3)
        (adjacent c_6_9 c_5_9)
        (adjacent c_1_5 c_0_5)
        (adjacent c_7_0 c_7_1)
        (adjacent c_8_3 c_8_2)
        (adjacent c_6_1 c_7_1)
        (adjacent c_1_2 c_1_1)
        (adjacent c_8_8 c_7_8)
        (adjacent c_1_6 c_1_5)
        (adjacent c_7_5 c_7_4)
        (adjacent c_8_4 c_9_4)
        (adjacent c_5_2 c_6_2)
        (adjacent c_0_7 c_0_6)
        (adjacent c_5_8 c_4_8)
        (adjacent c_6_4 c_6_5)
        (adjacent c_4_8 c_3_8)
        (adjacent c_5_3 c_6_3)
        (adjacent c_3_7 c_4_7)
        (adjacent c_8_9 c_7_9)
        (adjacent c_6_1 c_5_1)
        (adjacent c_0_3 c_1_3)
        (adjacent c_3_0 c_4_0)
        (adjacent c_3_5 c_4_5)
        (adjacent c_2_1 c_2_2)
        (adjacent c_5_4 c_5_3)
        (adjacent c_2_0 c_1_0)
        (adjacent c_4_3 c_5_3)
        (adjacent c_2_5 c_3_5)
        (adjacent c_6_3 c_6_2)
        (adjacent c_1_0 c_2_0)
        (adjacent c_4_0 c_3_0)
        (adjacent c_2_8 c_2_7)
        (adjacent c_4_7 c_4_6)
        (adjacent c_8_5 c_8_6)
        (adjacent c_7_4 c_7_3)
        (adjacent c_6_2 c_7_2)
        (adjacent c_4_9 c_4_8)
        (adjacent c_3_5 c_3_4)
        (adjacent c_5_4 c_5_5)
        (adjacent c_8_6 c_9_6)
        (adjacent c_0_9 c_1_9)
        (adjacent c_3_2 c_4_2)
        (adjacent c_5_8 c_5_9)
        (adjacent c_2_4 c_3_4)
        (adjacent c_3_7 c_3_6)
        (adjacent c_2_9 c_1_9)
        (adjacent c_3_8 c_3_9)
        (adjacent c_5_8 c_5_7)
        (adjacent c_1_8 c_0_8)
        (adjacent c_0_8 c_0_9)
        (adjacent c_7_9 c_6_9)
        (adjacent c_4_4 c_4_5)
        (adjacent c_5_7 c_6_7)
        (adjacent c_3_5 c_2_5)
        (adjacent c_8_1 c_8_0)
        (adjacent c_2_7 c_2_8)
        (adjacent c_0_9 c_0_8)
        (adjacent c_5_6 c_6_6)
        (adjacent c_4_6 c_5_6)
        (adjacent c_7_4 c_6_4)
        (adjacent c_3_3 c_3_2)
        (adjacent c_2_5 c_1_5)
        (adjacent c_7_9 c_8_9)
        (adjacent c_6_8 c_6_9)
        (adjacent c_1_8 c_1_7)
        (adjacent c_3_7 c_2_7)
        (adjacent c_4_4 c_4_3)
        (adjacent c_7_9 c_7_8)
        (adjacent c_2_1 c_2_0)
        (adjacent c_7_5 c_8_5)
        (adjacent c_6_6 c_7_6)
        (adjacent c_2_1 c_3_1)
        (adjacent c_4_6 c_4_5)
        (adjacent c_4_1 c_4_2)
        (adjacent c_2_5 c_2_6)
        (adjacent c_9_3 c_8_3)
        (adjacent c_3_6 c_2_6)
        (adjacent c_3_8 c_3_7)
        (adjacent c_5_2 c_5_1)
        (adjacent c_1_3 c_0_3)
        (adjacent c_1_4 c_1_5)
        (adjacent c_8_2 c_8_3)
        (adjacent c_0_0 c_0_1)
        (adjacent c_4_5 c_3_5)
        (adjacent c_0_1 c_0_2)
        (adjacent c_7_0 c_8_0)
        (adjacent c_8_5 c_9_5)
        (adjacent c_7_6 c_7_5)
        (adjacent c_2_4 c_2_3)
        (adjacent c_8_6 c_7_6)
        (adjacent c_5_6 c_5_5)
        (adjacent c_3_3 c_3_4)
        (adjacent c_5_1 c_5_0)
        (adjacent c_5_5 c_5_4)
        (adjacent c_4_2 c_5_2)
        (adjacent c_9_4 c_8_4)
        (adjacent c_7_8 c_7_9)
        (adjacent c_2_4 c_1_4)
        (adjacent c_3_9 c_4_9)
        (adjacent c_0_5 c_0_6)
        (adjacent c_7_1 c_7_0)
        (adjacent c_8_7 c_9_7)
        (adjacent c_3_6 c_3_7)
        (adjacent c_4_8 c_4_7)
        (adjacent c_8_2 c_9_2)
        (adjacent c_1_2 c_0_2)
        (adjacent c_4_1 c_4_0)
        (adjacent c_5_7 c_5_6)
        (adjacent c_7_4 c_8_4)
        (adjacent c_0_6 c_1_6)
        (adjacent c_9_2 c_9_3)
        (adjacent c_5_5 c_6_5)
        (adjacent c_6_3 c_7_3)
        (adjacent c_4_3 c_4_4)
        (adjacent c_2_2 c_1_2)
        (adjacent c_4_2 c_4_1)
        (adjacent c_9_6 c_9_7)
        (adjacent c_1_3 c_1_2)
        (adjacent c_3_8 c_2_8)
        (adjacent c_3_3 c_4_3)
        (adjacent c_0_8 c_0_7)
        (adjacent c_7_2 c_6_2)
        (adjacent c_4_2 c_4_3)
        (adjacent c_0_3 c_0_4)
        (adjacent c_9_4 c_9_3)
        (adjacent c_3_5 c_3_6)
        (adjacent c_9_7 c_8_7)
        (adjacent c_1_1 c_0_1)
        (adjacent c_3_6 c_4_6)
        (adjacent c_4_6 c_3_6)
        (adjacent c_2_8 c_2_9)
        (adjacent c_3_1 c_3_0)
        (adjacent c_6_5 c_6_4)
        (adjacent c_4_7 c_4_8)
        (adjacent c_6_3 c_5_3)
        (adjacent c_3_6 c_3_5)
        (adjacent c_4_5 c_5_5)
        (adjacent c_0_6 c_0_7)
        (adjacent c_4_9 c_3_9)
        (adjacent c_4_7 c_3_7)
        (adjacent c_1_7 c_1_8)
        (adjacent c_9_5 c_8_5)
        (adjacent c_4_3 c_4_2)
        (adjacent c_3_2 c_2_2)
        (adjacent c_6_4 c_5_4)
        (adjacent c_9_4 c_9_5)
        (adjacent c_1_8 c_1_9)
        (adjacent c_1_9 c_1_8)
        (adjacent c_9_9 c_8_9)
        (adjacent c_8_6 c_8_5)
        (adjacent c_8_3 c_9_3)
        (adjacent c_4_9 c_5_9)
        (adjacent c_8_1 c_7_1)
        (adjacent c_1_7 c_0_7)
        (adjacent c_8_3 c_8_4)
        (adjacent c_4_1 c_3_1)
        (adjacent c_8_3 c_7_3)
        (adjacent c_1_1 c_1_2)
        (adjacent c_5_2 c_5_3)
        (adjacent c_7_3 c_8_3)
        (adjacent c_7_3 c_6_3)
        (adjacent c_4_3 c_3_3)
        (adjacent c_7_8 c_6_8)
        (adjacent c_6_5 c_5_5)
        (adjacent c_7_5 c_6_5)
        (adjacent c_9_2 c_9_1)
        (adjacent c_8_8 c_9_8)
        (adjacent c_3_2 c_3_3)
        (adjacent c_5_3 c_5_2)
        (adjacent c_2_3 c_1_3)
        (adjacent c_6_4 c_7_4)
        (adjacent c_9_8 c_9_7)
        (adjacent c_6_2 c_6_3)
        (adjacent c_6_1 c_6_0)
        (adjacent c_8_0 c_8_1)
        (adjacent c_6_3 c_6_4)
        (adjacent c_3_0 c_2_0)
        (adjacent c_0_5 c_1_5)
        (adjacent c_2_8 c_3_8)
        (adjacent c_3_0 c_3_1)
        (adjacent c_4_8 c_5_8)
        (adjacent c_1_0 c_0_0)
        (adjacent c_6_7 c_7_7)
        (adjacent c_8_4 c_8_3)
        (adjacent c_2_2 c_3_2)
        (adjacent c_0_2 c_0_1)
        (adjacent c_4_4 c_3_4)
        (adjacent c_0_5 c_0_4)
        (adjacent c_4_6 c_4_7)
        (adjacent c_3_1 c_2_1)
        (adjacent c_5_1 c_4_1)
        (adjacent c_5_0 c_4_0)
        (adjacent c_8_1 c_8_2)
        (adjacent c_5_9 c_5_8)
        (adjacent c_9_7 c_9_8)
        (adjacent c_7_7 c_6_7)
        (adjacent c_6_6 c_6_5)
        (adjacent c_5_3 c_5_4)
        (adjacent c_9_6 c_9_5)
        (adjacent c_1_9 c_0_9)
        (adjacent c_7_7 c_8_7)
        (adjacent c_8_0 c_7_0)
        (adjacent c_9_3 c_9_4)
        (adjacent c_9_2 c_8_2)
        (adjacent c_1_5 c_1_6)
        (adjacent c_1_1 c_2_1)
        (adjacent c_3_2 c_3_1)
        (adjacent c_4_0 c_4_1)
        (adjacent c_5_1 c_6_1)
        (adjacent c_9_5 c_9_4)
        (adjacent c_8_0 c_9_0)
        (adjacent c_3_3 c_2_3)
        (adjacent c_8_4 c_7_4)
        (adjacent c_2_1 c_1_1)
        (adjacent c_2_9 c_3_9)
        (adjacent c_3_1 c_4_1)
        (adjacent c_8_7 c_8_8)
        (adjacent c_5_7 c_4_7)
        (adjacent c_3_9 c_3_8)
        (adjacent c_5_2 c_4_2)
        (adjacent c_0_1 c_0_0)
        (adjacent c_4_2 c_3_2)
        (adjacent c_0_7 c_0_8)
        (adjacent c_8_1 c_9_1)
        (adjacent c_2_7 c_1_7)
        (adjacent c_6_2 c_6_1)
        (adjacent c_6_8 c_7_8)
        (adjacent c_5_4 c_4_4)
        (adjacent c_7_1 c_7_2)
        (adjacent c_8_9 c_8_8)
        (adjacent c_6_1 c_6_2)
        (adjacent c_1_4 c_1_3)
        (adjacent c_6_9 c_6_8)
        (adjacent c_7_6 c_8_6)
        (adjacent c_5_0 c_5_1)
        (adjacent c_9_0 c_8_0)
        (adjacent c_1_6 c_1_7)
        (adjacent c_7_8 c_8_8)
        (adjacent c_2_2 c_2_1)
        (adjacent c_8_8 c_8_9)
        (adjacent c_5_5 c_4_5)
        (adjacent c_1_7 c_2_7)
        (adjacent c_2_4 c_2_5)
        (adjacent c_4_5 c_4_4)
        (adjacent c_3_4 c_4_4)
        (adjacent c_7_2 c_7_3)
        (adjacent c_0_4 c_0_3)
        (adjacent c_6_4 c_6_3)
        (adjacent c_8_5 c_7_5)
        (adjacent c_6_0 c_7_0)
        (adjacent c_7_3 c_7_2)
        (adjacent c_9_3 c_9_2)
        (adjacent c_2_7 c_3_7)
        (adjacent c_9_8 c_9_9)
        (adjacent c_1_2 c_2_2)
        (adjacent c_7_2 c_7_1)
        (adjacent c_2_9 c_2_8)
        (adjacent c_7_6 c_7_7)
        (adjacent c_0_6 c_0_5)
        (adjacent c_6_7 c_5_7)
        (adjacent c_6_5 c_7_5)
        (adjacent c_7_1 c_8_1)
        (adjacent c_7_8 c_7_7)
        (adjacent c_5_9 c_6_9)
        (adjacent c_6_9 c_7_9)
        (adjacent c_0_4 c_0_5)
        (adjacent c_1_2 c_1_3)
        (adjacent c_8_6 c_8_7)
        (adjacent c_9_9 c_9_8)
        (adjacent c_1_1 c_1_0)
        (adjacent c_9_1 c_9_2)
        (adjacent c_2_0 c_3_0)
        (adjacent c_9_0 c_9_1)
        (adjacent c_1_5 c_2_5)
        (adjacent c_1_3 c_1_4)
        (adjacent c_3_1 c_3_2)
        (adjacent c_0_4 c_1_4)
        (adjacent c_7_2 c_8_2)
        (adjacent c_2_6 c_1_6)
        (adjacent c_8_7 c_8_6)
        (adjacent c_6_0 c_6_1)
        (adjacent c_4_7 c_5_7)
        (adjacent c_5_8 c_6_8)
        (adjacent c_5_3 c_4_3)
        (adjacent c_8_4 c_8_5)
        (adjacent c_3_9 c_2_9)
        (adjacent c_2_6 c_2_7)
        (adjacent c_8_8 c_8_7)
        (adjacent c_3_7 c_3_8)
        (adjacent c_5_9 c_4_9)
        (adjacent c_2_3 c_2_4)
        (adjacent c_5_1 c_5_2)
        (adjacent c_7_6 c_6_6)
        (adjacent c_7_7 c_7_8)
        (adjacent c_4_0 c_5_0)
        (adjacent c_3_4 c_3_3)
        (adjacent c_6_5 c_6_6)
        (adjacent c_0_2 c_1_2)
        (adjacent c_2_5 c_2_4)
        (adjacent c_0_7 c_1_7)
        (adjacent c_7_1 c_6_1)
        (adjacent c_7_4 c_7_5)
        (adjacent c_5_4 c_6_4)
        (adjacent c_0_1 c_1_1)
        (adjacent c_6_0 c_5_0)
        (adjacent c_4_1 c_5_1)
        (adjacent c_6_7 c_6_8)
        (adjacent c_6_8 c_6_7)
        (adjacent c_3_8 c_4_8)
        (adjacent c_4_4 c_5_4)
        (adjacent c_9_5 c_9_6)
        (adjacent c_6_2 c_5_2)
        (adjacent c_7_3 c_7_4)
        (adjacent c_1_5 c_1_4)
        (adjacent c_1_9 c_2_9)
        (adjacent c_9_6 c_8_6)
        (adjacent c_0_0 c_1_0)
        (adjacent c_5_6 c_4_6)
        (adjacent c_4_8 c_4_9)
        (adjacent c_7_7 c_7_6)
        (adjacent c_3_4 c_3_5)
        (adjacent c_1_0 c_1_1)
        (adjacent c_2_3 c_2_2)
        (adjacent c_6_8 c_5_8)
        (adjacent c_5_7 c_5_8)
        (adjacent c_9_8 c_8_8)
        (adjacent c_2_0 c_2_1)
        (adjacent c_8_2 c_7_2)
        (adjacent c_1_6 c_2_6)
        (adjacent c_5_0 c_6_0)
        (adjacent c_1_7 c_1_6)
        (adjacent c_8_9 c_9_9)
        (adjacent c_0_2 c_0_3)
        (adjacent c_2_2 c_2_3)
        (adjacent c_2_6 c_3_6)
        (adjacent c_2_8 c_1_8)
        (adjacent c_6_6 c_5_6)
        (adjacent c_9_7 c_9_6)
        (adjacent c_2_7 c_2_6)
        (adjacent c_5_6 c_5_7)
        (adjacent c_9_1 c_8_1)
        (adjacent c_7_5 c_7_6)
        (adjacent c_5_5 c_5_6)
        (adjacent c_2_6 c_2_5)
        (adjacent c_6_6 c_6_7)
        (adjacent c_1_4 c_2_4)
        (adjacent c_1_8 c_2_8)
        (adjacent c_7_0 c_6_0)
        (adjacent c_9_1 c_9_0)
        (adjacent c_6_7 c_6_6)
        (blocked c_1_0)
        (blocked c_4_3)
        (blocked c_3_6)
        (blocked c_6_5)
        (blocked c_6_9)
        (blocked c_3_4)
        (blocked c_5_6)
        (blocked c_6_0)
    )

    (:goal
        (and (not (reward c_0_0)) (and (not (reward c_0_1)) (and (not (reward c_0_2)) (and (not (reward c_0_3)) (and (not (reward c_0_4)) (and (not (reward c_0_5)) (and (not (reward c_0_6)) (and (not (reward c_0_7)) (and (not (reward c_0_8)) (and (not (reward c_0_9)) (and (not (reward c_1_0)) (and (not (reward c_1_1)) (and (not (reward c_1_2)) (and (not (reward c_1_3)) (and (not (reward c_1_4)) (and (not (reward c_1_5)) (and (not (reward c_1_6)) (and (not (reward c_1_7)) (and (not (reward c_1_8)) (and (not (reward c_1_9)) (and (not (reward c_2_0)) (and (not (reward c_2_1)) (and (not (reward c_2_2)) (and (not (reward c_2_3)) (and (not (reward c_2_4)) (and (not (reward c_2_5)) (and (not (reward c_2_6)) (and (not (reward c_2_7)) (and (not (reward c_2_8)) (and (not (reward c_2_9)) (and (not (reward c_3_0)) (and (not (reward c_3_1)) (and (not (reward c_3_2)) (and (not (reward c_3_3)) (and (not (reward c_3_4)) (and (not (reward c_3_5)) (and (not (reward c_3_6)) (and (not (reward c_3_7)) (and (not (reward c_3_8)) (and (not (reward c_3_9)) (and (not (reward c_4_0)) (and (not (reward c_4_1)) (and (not (reward c_4_2)) (and (not (reward c_4_3)) (and (not (reward c_4_4)) (and (not (reward c_4_5)) (and (not (reward c_4_6)) (and (not (reward c_4_7)) (and (not (reward c_4_8)) (and (not (reward c_4_9)) (and (not (reward c_5_0)) (and (not (reward c_5_1)) (and (not (reward c_5_2)) (and (not (reward c_5_3)) (and (not (reward c_5_4)) (and (not (reward c_5_5)) (and (not (reward c_5_6)) (and (not (reward c_5_7)) (and (not (reward c_5_8)) (and (not (reward c_5_9)) (and (not (reward c_6_0)) (and (not (reward c_6_1)) (and (not (reward c_6_2)) (and (not (reward c_6_3)) (and (not (reward c_6_4)) (and (not (reward c_6_5)) (and (not (reward c_6_6)) (and (not (reward c_6_7)) (and (not (reward c_6_8)) (and (not (reward c_6_9)) (and (not (reward c_7_0)) (and (not (reward c_7_1)) (and (not (reward c_7_2)) (and (not (reward c_7_3)) (and (not (reward c_7_4)) (and (not (reward c_7_5)) (and (not (reward c_7_6)) (and (not (reward c_7_7)) (and (not (reward c_7_8)) (and (not (reward c_7_9)) (and (not (reward c_8_0)) (and (not (reward c_8_1)) (and (not (reward c_8_2)) (and (not (reward c_8_3)) (and (not (reward c_8_4)) (and (not (reward c_8_5)) (and (not (reward c_8_6)) (and (not (reward c_8_7)) (and (not (reward c_8_8)) (and (not (reward c_8_9)) (and (not (reward c_9_0)) (and (not (reward c_9_1)) (and (not (reward c_9_2)) (and (not (reward c_9_3)) (and (not (reward c_9_4)) (and (not (reward c_9_5)) (and (not (reward c_9_6)) (and (not (reward c_9_7)) (and (not (reward c_9_8)) (not (reward c_9_9)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    )

    
    
    
)

