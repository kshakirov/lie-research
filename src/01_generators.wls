(*! /usr/bin/env wolframscript *)
SetOptions[$Output, CharacterEncoding -> "UTF-8"];


(* Обычное матричное умножение в Wolfram — это точка (.) *)
(* Определяем операцию коммутатора [A, B] = A.B - B.A *)
Commutator[A_, B_] := A . B - B . A;

(* Задаем наш базис матриц 2х2 *)
Egen = {{0, 1}, {0, 0}};
Fgen = {{0, 0}, {1, 0}};
Hgen = {{1, 0}, {0, -1}};

Print["=== ПРОВЕРКА СТРУКТУРНЫХ ПРАВИЛ SL_2 ==="];

(* Нам нужно получить [E, F] == H, [H, E] == 2E, [H, F] == -2F *)
Print["[E, F] = ", Commutator[Egen, Fgen] === Hgen];
Print["[H, E] = ", Commutator[Hgen, Egen] === 2 * Egen];
Print["[H, F] = ", Commutator[Hgen, Fgen] === -2 * Fgen];

Print["\n=== ПРОВЕРКА ТОЖДЕСТВА ЯКОБИ ==="];
(* [E, [F, H]] + [F, [H, E]] + [H, [E, F]] должно дать нулевую матрицу *)
Jacobi = Commutator[Egen, Commutator[Fgen, Hgen]] + 
         Commutator[Fgen, Commutator[Hgen, Egen]] + 
         Commutator[Hgen, Commutator[Egen, Fgen]];

Print["Тождество Якоби выполняется: ", Jacobi === {{0, 0}, {0, 0}}];

