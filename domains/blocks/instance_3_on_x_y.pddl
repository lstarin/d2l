(define (problem BLOCKS-3-ON-X-Y)
(:domain BLOCKS)
(:objects A B C)
(:init (CLEAR A) (CLEAR B) (CLEAR C) (ONTABLE A) (ONTABLE B) (ONTABLE C) (HANDEMPTY))
(:goal (AND (ON A B)))
)
