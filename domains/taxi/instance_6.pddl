
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem taxi-fs-6x6)
    (:domain taxi-fs)

    (:objects
        c_0_0 c_0_1 c_0_2 c_0_3 c_0_4 c_0_5 c_1_0 c_1_1 c_1_2 c_1_3 c_1_4 c_1_5 c_2_0 c_2_1 c_2_2 c_2_3 c_2_4 c_2_5 c_3_0 c_3_1 c_3_2 c_3_3 c_3_4 c_3_5 c_4_0 c_4_1 c_4_2 c_4_3 c_4_4 c_4_5 c_5_0 c_5_1 c_5_2 c_5_3 c_5_4 c_5_5 - cell
    )

    (:init
        (= (loct ) c_0_1)
        (= (locp ) c_4_3)
        (= (loc_fuel ) c_1_0)
        (= (destination ) c_2_4)
        (= (current_fuel ) 10)
        (= (max_fuel_level ) 10)
        (adjacent c_2_1 c_3_1)
        (adjacent c_2_3 c_3_3)
        (adjacent c_4_1 c_4_2)
        (adjacent c_3_0 c_2_0)
        (adjacent c_1_4 c_0_4)
        (adjacent c_0_5 c_1_5)
        (adjacent c_0_3 c_0_2)
        (adjacent c_0_4 c_0_5)
        (adjacent c_1_2 c_1_3)
        (adjacent c_3_0 c_3_1)
        (adjacent c_5_2 c_5_1)
        (adjacent c_1_3 c_0_3)
        (adjacent c_1_1 c_1_0)
        (adjacent c_1_4 c_1_5)
        (adjacent c_0_0 c_0_1)
        (adjacent c_2_0 c_3_0)
        (adjacent c_1_0 c_0_0)
        (adjacent c_3_4 c_2_4)
        (adjacent c_1_5 c_2_5)
        (adjacent c_2_2 c_3_2)
        (adjacent c_4_5 c_3_5)
        (adjacent c_1_3 c_1_4)
        (adjacent c_1_3 c_2_3)
        (adjacent c_3_1 c_3_2)
        (adjacent c_0_4 c_1_4)
        (adjacent c_1_5 c_0_5)
        (adjacent c_0_2 c_0_1)
        (adjacent c_4_4 c_3_4)
        (adjacent c_0_1 c_0_2)
        (adjacent c_0_5 c_0_4)
        (adjacent c_3_1 c_2_1)
        (adjacent c_5_1 c_4_1)
        (adjacent c_5_0 c_4_0)
        (adjacent c_5_3 c_4_3)
        (adjacent c_2_4 c_2_3)
        (adjacent c_3_3 c_3_4)
        (adjacent c_5_1 c_5_0)
        (adjacent c_1_2 c_1_1)
        (adjacent c_5_5 c_5_4)
        (adjacent c_5_3 c_5_4)
        (adjacent c_4_2 c_5_2)
        (adjacent c_2_3 c_2_4)
        (adjacent c_5_1 c_5_2)
        (adjacent c_2_4 c_1_4)
        (adjacent c_4_0 c_5_0)
        (adjacent c_3_4 c_3_3)
        (adjacent c_0_3 c_1_3)
        (adjacent c_0_2 c_1_2)
        (adjacent c_1_2 c_0_2)
        (adjacent c_3_0 c_4_0)
        (adjacent c_2_5 c_2_4)
        (adjacent c_3_5 c_4_5)
        (adjacent c_2_1 c_2_2)
        (adjacent c_1_1 c_2_1)
        (adjacent c_2_0 c_1_0)
        (adjacent c_3_2 c_3_1)
        (adjacent c_4_0 c_4_1)
        (adjacent c_5_4 c_5_3)
        (adjacent c_4_1 c_4_0)
        (adjacent c_4_3 c_5_3)
        (adjacent c_2_5 c_3_5)
        (adjacent c_1_0 c_2_0)
        (adjacent c_4_0 c_3_0)
        (adjacent c_3_3 c_2_3)
        (adjacent c_4_3 c_4_4)
        (adjacent c_0_1 c_1_1)
        (adjacent c_2_2 c_1_2)
        (adjacent c_4_2 c_4_1)
        (adjacent c_1_3 c_1_2)
        (adjacent c_2_1 c_1_1)
        (adjacent c_3_3 c_4_3)
        (adjacent c_4_1 c_5_1)
        (adjacent c_3_1 c_4_1)
        (adjacent c_4_2 c_4_3)
        (adjacent c_0_3 c_0_4)
        (adjacent c_3_5 c_3_4)
        (adjacent c_4_4 c_5_4)
        (adjacent c_5_4 c_5_5)
        (adjacent c_1_1 c_0_1)
        (adjacent c_3_1 c_3_0)
        (adjacent c_1_5 c_1_4)
        (adjacent c_3_2 c_4_2)
        (adjacent c_2_4 c_3_4)
        (adjacent c_0_1 c_0_0)
        (adjacent c_5_2 c_4_2)
        (adjacent c_4_2 c_3_2)
        (adjacent c_0_0 c_1_0)
        (adjacent c_4_5 c_5_5)
        (adjacent c_3_4 c_3_5)
        (adjacent c_1_0 c_1_1)
        (adjacent c_2_3 c_2_2)
        (adjacent c_4_3 c_4_2)
        (adjacent c_5_4 c_4_4)
        (adjacent c_2_0 c_2_1)
        (adjacent c_3_2 c_2_2)
        (adjacent c_4_4 c_4_5)
        (adjacent c_1_4 c_1_3)
        (adjacent c_0_2 c_0_3)
        (adjacent c_2_2 c_2_3)
        (adjacent c_3_5 c_2_5)
        (adjacent c_5_0 c_5_1)
        (adjacent c_2_2 c_2_1)
        (adjacent c_4_1 c_3_1)
        (adjacent c_3_3 c_3_2)
        (adjacent c_5_5 c_4_5)
        (adjacent c_2_5 c_1_5)
        (adjacent c_2_4 c_2_5)
        (adjacent c_4_5 c_4_4)
        (adjacent c_3_4 c_4_4)
        (adjacent c_0_4 c_0_3)
        (adjacent c_1_1 c_1_2)
        (adjacent c_5_2 c_5_3)
        (adjacent c_4_3 c_3_3)
        (adjacent c_1_4 c_2_4)
        (adjacent c_4_4 c_4_3)
        (adjacent c_3_2 c_3_3)
        (adjacent c_5_3 c_5_2)
        (adjacent c_2_1 c_2_0)
        (adjacent c_1_2 c_2_2)
        (adjacent c_2_3 c_1_3)
    )

    (:goal
        (= (locp ) (destination ))
    )

    
    (:bounds
        (fuel_level - int[0..10]))
    
)

