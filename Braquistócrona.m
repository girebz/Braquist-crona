(* ::Package:: *)

(* ::Title:: *)
(*Ajuste de la Soluci\[OAcute]n Braquist\[OAcute]crona*)


(* ::Section:: *)
(*Introducci\[OAcute]n*)


(* ::Text:: *)
(*Para resolver el problema de la braquist\[OAcute]crona, es \[UAcute]til considerar la situaci\[OAcute]n de forma simple. Por lo tanto, se puede fijar el punto de partida (x1, y1) en el origen de coordenadas, mientras que el punto de llegada (x2, y2) se encuentra a la derecha del origen y por debajo del eje x. Esto conduce  al siguiente desarrollo que podemos adaptar.*)


(* ::Section:: *)
(*Paso 1: Definir las Ecuaciones*)


(* ::Text:: *)
(*Las ecuaciones que describen el movimiento de la part\[IAcute]cula se definen de la siguiente manera:*)


(* ::Input:: *)
(*eq1=x2==b*(theta-Sin[theta]);*)
(*eq2=y2==-b*(1-Cos[theta]);*)


(* ::Section:: *)
(*Paso 2: Definir el Punto de Llegada*)


(* ::Text:: *)
(*Aqu\[IAcute], establecemos el punto de llegada de la part\[IAcute]cula. En este caso, lo ubicamos en (x2, y2) = (1, -2). Puedes modificar estos valores para probar otras configuraciones similares.*)


(* ::Input:: *)
(*x2val=1;y2val=-2;*)


(* ::Section:: *)
(*Paso 3: Calcular Num\[EAcute]ricamente los Valores Buscados*)


(* ::Text:: *)
(*Usamos la funci\[OAcute]n FindRoot para calcular num\[EAcute]ricamente la soluci\[OAcute]n del problema.*)


(* ::Input:: *)
(*sol=FindRoot[{eq1,eq2}/. {x2->x2val,y2->y2val},{{b,1},{theta,1}}];*)


(* ::Section:: *)
(*Paso 4: Verificaci\[OAcute]n de los Resultados*)


(* ::Text:: *)
(* Para que estas respuestas tengan sentido f\[IAcute]sico, necesitamos verificar que x2 \[Element] (0, 2b\[Pi]) y y2 \[Element] (-2b, 0).  Si todo es correcto, se mostrar\[AAcute] "Los valores son V\[AAcute]lidos".*)


(* ::Input:: *)
(*bval=sol[[1,2]];thetaval=sol[[2,2]];*)
(*If[0<x2val<2*Pi*bval&&-2*bval<y2val<0,"Los valores son V\[AAcute]lidos","Los valores NO son v\[AAcute]lidos"]*)


(* ::Section:: *)
(*Paso 5: Visualizaci\[OAcute]n de la Curva*)


(* ::Text:: *)
(*Finalmente, representamos gr\[AAcute]ficamente la curva braquist\[OAcute]crona ajustada. *)


(* ::Input:: *)
(*Manipulate[Graphics[{Blue,Line@Table[{bval*(t-Sin[t]),-bval*(1-Cos[t])},{t,0,thetaval,thetaval/100}],Red,PointSize[Large],Point[{bval*(theta-Sin[theta]),-bval*(1-Cos[theta])}]},PlotRange->{{0,x2val},{-2 bval,1}},AspectRatio->Automatic,Axes->True,AxesStyle->Directive[Black,Thick],AxesLabel->{"x","y"},Ticks->{Range[0,x2val,1],Range[0,y2val,-1]}],{theta,0,thetaval,thetaval/100}]*)
(**)


(* ::Text:: *)
(*Este c\[OAcute]digo visualiza la curva braquist\[OAcute]crona resultante, mostrando el trayecto que minimiza el tiempo de viaje bajo las condiciones dadas.*)
