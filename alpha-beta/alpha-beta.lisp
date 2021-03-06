(SETQ CANT 0)
(SETQ LISTA NIL)
(DEFUN PUEDEMOVER (S POS COLOR COSTO)
  (COND
    ((= COSTO 5)

    )
    ((NULL COLOR)
    )
    (T
      (BLOCK OUTER
        (SETQ RES '())
        (WHEN (AND (= COLOR 1) (NULL (MEMBER POS '(28 29 30 31))) )
          (WHEN (NOT (= (MOD POS 8) 0))
            (IF (<= (MOD POS 8) 3) 
              (WHEN (NULL (NTH 0 (NTH (+ POS 3) S) ))
                (SETQ RES (APPEND RES (LIST (LIST POS 3)) ) )
              )
              (WHEN (NULL (NTH 0 (NTH (+ POS 4) S) ))
                (SETQ RES (APPEND RES (LIST (LIST POS 4)) ) )
              )
            )
          )
          (WHEN (NOT (= (MOD (+ POS 1) 8) 0))
            (IF (<= (MOD POS 8) 3) 
              (WHEN (NULL (NTH 0 (NTH (+ POS 4) S) ))
                (SETQ RES (APPEND RES (LIST (LIST POS 4)) ) )
              )
              (WHEN (NULL (NTH 0 (NTH (+ POS 5) S) ))
                (SETQ RES (APPEND RES (LIST (LIST POS 5)) ) )
              )
            )
          )
        )
        (WHEN (AND (= COLOR 2) (NULL (MEMBER POS '(0 1 2 3))) )
          (WHEN (NOT (= (MOD POS 8) 0))
            (IF (>= (MOD POS 8) 4) 
              (WHEN (NULL (NTH 0 (NTH (- POS 4) S) ))
                (SETQ RES (APPEND RES (LIST (LIST POS -4)) ) )
              )
              (WHEN (NULL (NTH 0 (NTH (- POS 5) S) ))
                (SETQ RES (APPEND RES (LIST (LIST POS -5)) ) )
              )
            )
          )
          (WHEN (NOT (= (MOD (+ POS 1) 8) 0))
            (IF (>= (MOD POS 8) 4) 
              (WHEN (NULL (NTH 0 (NTH (- POS 3) S) ))
                (SETQ RES (APPEND RES (LIST (LIST POS -3)) ) )
              )
              (WHEN (NULL (NTH 0 (NTH (- POS 4) S) ))
                (SETQ RES (APPEND RES (LIST (LIST POS -4)) ) )
              )
            )
          )
        ) 
        (RETURN-FROM OUTER RES) 
      )
    )
  )
)

(DEFUN PUEDECOMER (S POS COLOR COSTO)
  (COND
    ((= COSTO 5)

    )
    ((NULL COLOR)
    )
    (T
      (BLOCK OUTER
        (SETQ RES '())
        (WHEN (AND (= COLOR 1) (NULL (MEMBER POS '(24 25 26 27 28 29 30 31))) )
          (WHEN (AND (NOT (= (MOD POS 8) 0)) (NOT (= (MOD POS 8) 4)))
            (IF (<= (MOD POS 8) 3) 
              (WHEN (AND (NULL (NTH 0 (NTH (+ POS 7) S) )) (NOT (NULL (NTH 0 (NTH (+ POS 3) S) ))) (NOT (= (NTH 0 (NTH (+ POS 3) S) ) COLOR))  )
                (SETQ RES (APPEND RES (LIST (LIST POS 7 3)) ) )
              )
              (WHEN (AND (NULL (NTH 0 (NTH (+ POS 7) S) )) (NOT (NULL (NTH 0 (NTH (+ POS 4) S) ))) (NOT (= (NTH 0 (NTH (+ POS 4) S) ) COLOR))  )
                (SETQ RES (APPEND RES (LIST (LIST POS 7 4)) ) )
              )
            )
          )
          (WHEN (AND (NOT (= (MOD (+ POS 1) 8) 0)) (NOT (= (MOD (+ POS 1) 8) 4)))
            (IF (<= (MOD POS 8) 3) 
              (WHEN (AND (NULL (NTH 0 (NTH (+ POS 9) S) )) (NOT (NULL (NTH 0 (NTH (+ POS 4) S) ))) (NOT (= (NTH 0 (NTH (+ POS 4) S) ) COLOR))  )
                (SETQ RES (APPEND RES (LIST (LIST POS 9 4)) ) )
              )
              (WHEN (AND (NULL (NTH 0 (NTH (+ POS 9) S) )) (NOT (NULL (NTH 0 (NTH (+ POS 5) S) ))) (NOT (= (NTH 0 (NTH (+ POS 5) S) ) COLOR))  )
                (SETQ RES (APPEND RES (LIST (LIST POS 9 5)) ) )
              )
            )
          )
        )
        (WHEN (AND (= COLOR 2) (NULL (MEMBER POS '(0 1 2 3 4 5 6 7))) )
          (WHEN (AND (NOT (= (MOD POS 8) 0)) (NOT (= (MOD POS 8) 4)))
            (IF (>= (MOD POS 8) 4) 
              (WHEN (AND (NULL (NTH 0 (NTH (- POS 9) S) )) (NOT (NULL (NTH 0 (NTH (- POS 4) S) ))) (NOT (= (NTH 0 (NTH (- POS 4) S) ) COLOR))  )
                (SETQ RES (APPEND RES (LIST (LIST POS -9 -4)) ) )
              )
              (WHEN (AND (NULL (NTH 0 (NTH (- POS 9) S) )) (NOT (NULL (NTH 0 (NTH (- POS 5) S) ))) (NOT (= (NTH 0 (NTH (- POS 5) S) ) COLOR))  )
                (SETQ RES (APPEND RES (LIST (LIST POS -9 -5)) ) )
              )
            )
          )
          (WHEN (AND (NOT (= (MOD (+ POS 1) 8) 0)) (NOT (= (MOD (+ POS 1) 8) 4)))
            (IF (>= (MOD POS 8) 4) 
              (WHEN (AND (NULL (NTH 0 (NTH (- POS 7) S) )) (NOT (NULL (NTH 0 (NTH (- POS 3) S) ))) (NOT (= (NTH 0 (NTH (- POS 3) S) ) COLOR))  )
                (SETQ RES (APPEND RES (LIST (LIST POS -7 -3)) ) )
              )
              (WHEN (AND (NULL (NTH 0 (NTH (- POS 7) S) )) (NOT (NULL (NTH 0 (NTH (- POS 4) S) ))) (NOT (= (NTH 0 (NTH (- POS 4) S) ) COLOR))  )
                (SETQ RES (APPEND RES (LIST (LIST POS -7 -4)) ) )
              )
            )
          )
        ) 
        (RETURN-FROM OUTER RES) 
      )
    )
  )
)

(DEFUN GETMOVS (S COLOR)
  (SETQ RES '())
  (LOOP FOR FICHA IN S
    DO (WHEN (NOT (NULL (NTH 0 FICHA))) (WHEN (= COLOR (NTH 0 FICHA)) (SETQ RES (APPEND RES (PUEDEMOVER S (NTH 1 FICHA) COLOR (NTH 2 FICHA))))  ) )
  )
  RES
)

(DEFUN GETCOMERS (S COLOR)
  (SETQ RES '())
  (LOOP FOR FICHA IN S
    DO (WHEN (NOT (NULL (NTH 0 FICHA))) (WHEN (= COLOR (NTH 0 FICHA)) (SETQ RES (APPEND RES (PUEDECOMER S (NTH 1 FICHA) COLOR (NTH 2 FICHA))))  ) )
  )
  RES
)

(DEFUN GETUNIQUEPOS (MOVIMIENTOS)
  (SETQ RES '())
  (LOOP FOR MOVIMIENTO IN MOVIMIENTOS
    DO (WHEN (NULL (MEMBER  (NTH 0 MOVIMIENTO) RES) )  (SETQ RES (APPEND RES (LIST (NTH 0 MOVIMIENTO)))))
  )
  RES
)

(DEFUN ISMOVFROMPOS (MOV POS)
  (= POS (NTH 0 MOV))
)

(DEFUN GETUNIQUEMOVS (MOVIMIENTOS POS)
  (SETQ RES '())
  (LOOP FOR MOV IN MOVIMIENTOS
    DO (WHEN (ISMOVFROMPOS MOV POS) (SETQ RES (PUSH MOV RES) ))
  )
  RES
)

(DEFUN SETPIEZA (S COLOR POS COSTO)
  (SETF (NTH POS S) (LIST COLOR POS COSTO))
  (WHEN (AND (NOT (NULL COLOR)) (= 1 COLOR) (MEMBER POS '(28 29 30 31)) ) 
    (SETF (NTH POS S) (LIST COLOR POS 5))
  )
  (WHEN (AND (NOT (NULL COLOR)) (= 2 COLOR) (MEMBER POS '(0 1 2 3)) ) 
    (SETF (NTH POS S) (LIST COLOR POS 5))
  )
)

(DEFUN MOVE (S MOV)
  (SETQ RES (COPY-TREE S))
  (SETQ FIC (NTH (NTH 0 MOV) RES))
  (SETPIEZA RES (NTH 0 FIC) (+ (NTH 0 MOV) (NTH 1 MOV)) (NTH 2 FIC))
  (SETPIEZA RES NIL (NTH 0 MOV) 0)
  RES
)

(DEFUN COME (S MOV)
  (SETQ RES (COPY-TREE S))
  (SETPIEZA RES NIL (+ (NTH 0 MOV) (NTH 2 MOV)) 0)
  RES
)



(DEFUN VALUE (S)
  (SETQ N 0)
  (SETQ R 0)
  (LOOP FOR FICHA IN S
    DO (WHEN (AND (NOT (NULL (NTH 0 FICHA))) (= 2 (NTH 0 FICHA)) ) (INCF R (NTH 2 FICHA))) (WHEN (AND (NOT (NULL (NTH 0 FICHA))) (= 1 (NTH 0 FICHA)) ) (INCF N (NTH 2 FICHA)))
  )
  (INCF CANT)
  (LIST (- R N) S)
)

(DEFUN MAXVAL (S D A B DEPTH PADRE)
  (SETQ CMOVS (GETCOMERS S 1))
  (SETQ MOVS (GETMOVS S 1))
  (COND
    ( (OR (= D 0) (AND (NULL CMOVS) (NULL MOVS) ))
        (VALUE S)
    )
    (T 
      (SETQ V (LIST -9999 S))
      (IF (NOT (NULL CMOVS))
        (BLOCK OUTER
          (LOOP FOR MOV IN CMOVS
            DO 
            (SETQ ALPHA (MINVAL (COME (MOVE S MOV) MOV) (- D 1) A B DEPTH (LIST PADRE MOV) ))
            (WHEN (> (NTH 0 ALPHA) (NTH 0 V)) 
              (SETQ LISTA (LIST PADRE MOV))
              (SETF (NTH 0 V)  (NTH 0 ALPHA) )
              (WHEN (= D DEPTH) (SETF (NTH 1 V) (COME (MOVE S MOV) MOV) ) (PRINT 'OK))
            )
            (SETQ A (MAX A (NTH 0 V)))
            (IF (<= B A) (RETURN-FROM OUTER NIL))
          )
        )
        (BLOCK OUTER
          (LOOP FOR MOV IN MOVS
            DO 
            (SETQ ALPHA (MINVAL (MOVE S MOV) (- D 1) A B DEPTH (LIST PADRE MOV)))
            (WHEN (> (NTH 0 ALPHA) (NTH 0 V)) 
              (SETQ LISTA (LIST PADRE MOV))
              (SETF (NTH 0 V)  (NTH 0 ALPHA) )
              (WHEN (= D DEPTH) (SETF (NTH 1 V) (MOVE S MOV) ) (PRINT 'OK))
            )
            (SETQ A (MAX A (NTH 0 V)))
            (IF (<= B A) (RETURN-FROM OUTER NIL))
          )
        )
      )
      V      
    )
  )
)

(DEFUN MINVAL (S D A B DEPTH PADRE)
  (SETQ CMOVS (GETCOMERS S 2))
  (SETQ MOVS (GETMOVS S 2))
  (COND
    ( (OR (= D 0) (AND (NULL CMOVS) (NULL MOVS) ))
        (VALUE S)
    )
    (T
      (SETQ V (LIST 9999 S))
      (IF (NOT (NULL CMOVS))
        (BLOCK OUTER
          (LOOP FOR MOV IN CMOVS
            DO 
            (SETQ ALPHA (MAXVAL (COME (MOVE S MOV) MOV) (- D 1) A B DEPTH (LIST PADRE MOV)))
            (WHEN (< (NTH 0 ALPHA) (NTH 0 V)) 
              (SETQ LISTA (LIST PADRE MOV))
              (SETF (NTH 0 V)  (NTH 0 ALPHA) )
              (WHEN (= D DEPTH) (SETF (NTH 1 V) (COME (MOVE S MOV) MOV) )(PRINT 'OK) )
            )
            (SETQ B (MIN B (NTH 0 V)))
            (IF (<= B A) (RETURN-FROM OUTER NIL))
          )
        )
        (BLOCK OUTER
          (LOOP FOR MOV IN MOVS
            DO 
            (SETQ ALPHA (MAXVAL (MOVE S MOV) (- D 1) A B DEPTH (LIST PADRE MOV)))
            (WHEN (< (NTH 0 ALPHA) (NTH 0 V)) 
              (SETQ LISTA (LIST PADRE MOV))
              (SETF (NTH 0 V)  (NTH 0 ALPHA) )
              (WHEN (= D DEPTH) (SETF (NTH 1 V) (MOVE S MOV) ) (PRINT 'OK))
            )
            (SETQ B (MIN B (NTH 0 V)))
            (IF (<= B A) (RETURN-FROM OUTER NIL))
          )
        )
      )
      V
    )
  )
)

(DEFUN JUEGA (S COLOR D)
  ( NTH 1 (MAXVAL S D -9999 9999 D NIL))
  (SETQ RES (LIST LISTA '$ CANT))
  (SETQ LISTA NIL CANT 0)
  RES
)
