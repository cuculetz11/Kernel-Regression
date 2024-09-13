# Kernel-Regression
 Cucu Viorel-Cosmin 314CA

 TEMA #1#

## linear_kernel(x, y, other), polynomial_kernel(x, y, d), gaussian_kernel(x, y, sigma)
Aceste funcții sunt utilizate pentru implementarea diferitelor tipuri de kerneluri:
- **linear_kernel(x, y, other):** Kernel liniar.
- **polynomial_kernel(x, y, d):** Kernel polinomial cu gradul `d`.
- **gaussian_kernel(x, y, sigma):** Kernel gaussian cu parametru `sigma`.

## build_kernel(X, f, f_param)
Construiește matricea de kerneluri, cunoscută și sub numele de **matricea Gram**. Această matrice este simetrică, așadar calculez doar jumătate din elementele sale folosind funcția kernel `f` dată ca parametru. Parametrul suplimentar `f_param` este transmis funcției kernel pentru configurarea acesteia.

## cholesky(A)
Aplic **descompunerea Cholesky** asupra matricei `A`. Este similară cu implementarea de la laborator, cu adăugarea unui pas de vectorizare pentru eficiență.

## get_lower_inverse(A)
Obțin inversa unei matrici folosindu-mă de rezultatul obținut din descompunerea Cholesky (`G`). Aceasta calculează inversa pentru matricea inferioară triunghiulară rezultată din descompunerea Cholesky.

## get_prediction_params(K, y, lambda)
Calculez parametrii de predicție folosind formula specificată în enunț. Aici:
- `K` este matricea kernel,
- `y` sunt etichetele,
- `lambda` este un parametru de regularizare.

## eaval_value(x, X, f, f_param)
Calculez valoarea de predicție pentru un element `x` din datasetul `X`, folosindu-mă de formula dată și de parametrii de predicție calculați anterior. Funcția `f` și parametrul `f_param` sunt utilizate pentru a aplica kernelul corespunzător în calculul predicției.
