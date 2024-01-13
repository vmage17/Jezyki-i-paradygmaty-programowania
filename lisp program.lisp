(defun determinant-3x3 (matrix)
  (if (and (= (length matrix) 3) (= (length (first matrix)) 3))
    (-  (+ (* (nth 0 (nth 0 matrix))
           (nth 1 (nth 1 matrix))
           (nth 2 (nth 2 matrix)))
        (* (nth 0 (nth 1 matrix))
           (nth 1 (nth 2 matrix))
           (nth 2 (nth 0 matrix)))
        (* (nth 0 (nth 2 matrix))
           (nth 1 (nth 0 matrix))
           (nth 2 (nth 1 matrix)))
        )
        (+ (* (nth 2 (nth 0 matrix))
             (nth 1 (nth 1 matrix))
             (nth 0 (nth 2 matrix)))
          (* (nth 0 (nth 1 matrix))
             (nth 1 (nth 0 matrix))
             (nth 2 (nth 2 matrix)))
          (* (nth 0 (nth 0 matrix))
             (nth 1 (nth 2 matrix))
             (nth 2 (nth 1 matrix)))
        )
    )
    (error "Macierz nie jest 3x3")
  )
)

(defun minor (matrix row col)
  (remove row (mapcar #'(lambda (x) (remove col x)) matrix))
)

(defun determinant-4x4 (matrix)
  (if (and (= (length matrix) 4) (= (length (first matrix)) 4))
    (let ((result 0)
         (sign 1))
         (dotimes (col 4)
            (setq result (+ result (* 
                                   (nth col (first matrix))
                                   (determinant-3x3 (minor matrix 0 col))
                                   sign
                                   )
                         )
            )
            (setq sign (* sign -1))
         )
    )
    (error "Macierz nie jest 4x4")
  )
)

;; Przykładowa macierz 4x4
(defvar example-matrix4x4
  '((1 2 3 4)
    (5 6 7 8)
    (9 10 11 12)
    (13 14 15 16)))

;; Obliczenie wyznacznika macierzy 4x4
(determinant-4x4 example-matrix4x4) ; Wynik będzie wyświetlony

(defun solve-system (coefficients constants)
  (let* ((detA (determinant-4x4 coefficients))
         (detX (determinant-4x4 (replace-column coefficients constants 0)))
         (detY (determinant-4x4 (replace-column coefficients constants 1)))
         (detZ (determinant-4x4 (replace-column coefficients constants 2)))
         (detW (determinant-4x4 (replace-column coefficients constants 3))))
    (list (/ detX detA) (/ detY detA) (/ detZ detA) (/ detW detA))
  )
)

(defun replace-column (matrix column idx)
  (map 'list
       #'(lambda (row newval)
           (replace row (list idx idx) (list newval)))
       matrix
       column
  )
)

;; Przykładowa macierz współczynników (4x4)
(defvar coefficients-matrix
  '((2 1 1 1)
    (1 3 -1 1)
    (3 1 -2 2)
    (1 -1 3 4)))

;; Przykładowe wyrazy wolne (wektor stałych)
(defvar constants-vector '(4 6 2 8))

;; Rozwiązanie układu równań
(solve-system coefficients-matrix constants-vector) ; Wynik zostanie wyświetlony