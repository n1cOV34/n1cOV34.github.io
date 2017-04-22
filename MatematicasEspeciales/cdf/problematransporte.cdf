(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.3' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     33307,        724]
NotebookOptionsPosition[     33556,        710]
NotebookOutlinePosition[     34114,        733]
CellTagsIndexPosition[     34071,        730]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Monge-Kantorovich Transportation Problem (Modificado)", "Title", "PluginEmbeddedContent"],

Cell["\<\
Jhonny L\[OAcute]pez Cortes
Nicol\[AAcute]s Vel\[AAcute]squez Mart\[IAcute]nez\
\>", "Subtitle", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a1$$ = 40, $CellContext`a2$$ = 
    40, $CellContext`a3$$ = 40, $CellContext`a4$$ = 40, $CellContext`a5$$ = 
    40, $CellContext`b1$$ = 40, $CellContext`b2$$ = 40, $CellContext`b3$$ = 
    40, $CellContext`b4$$ = 40, $CellContext`b5$$ = 50, $CellContext`c11$$ = 
    6, $CellContext`c12$$ = 4, $CellContext`c13$$ = 2, $CellContext`c14$$ = 
    1, $CellContext`c15$$ = 5, $CellContext`c21$$ = 5, $CellContext`c22$$ = 
    2, $CellContext`c23$$ = 1, $CellContext`c24$$ = 1, $CellContext`c25$$ = 
    3, $CellContext`c31$$ = 9, $CellContext`c32$$ = 6, $CellContext`c33$$ = 
    6, $CellContext`c34$$ = 4, $CellContext`c35$$ = 2, $CellContext`c41$$ = 
    9, $CellContext`c42$$ = 6, $CellContext`c43$$ = 6, $CellContext`c44$$ = 
    4, $CellContext`c45$$ = 2, $CellContext`c51$$ = 9, $CellContext`c52$$ = 
    6, $CellContext`c53$$ = 6, $CellContext`c54$$ = 4, $CellContext`c55$$ = 2,
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`a1$$], 40, "Origen 1"}, 1, 1000, 1}, {{
       Hold[$CellContext`a2$$], 40, "Origen 2"}, 1, 1000, 1}, {{
       Hold[$CellContext`a3$$], 40, "Origen 3"}, 1, 1000, 1}, {{
       Hold[$CellContext`a4$$], 40, "Origen 4"}, 1, 1000, 1}, {{
       Hold[$CellContext`a5$$], 40, "Origen 5"}, 1, 1000, 1}, {{
       Hold[$CellContext`b1$$], 40, "Destino 1"}, 1, 1000, 1}, {{
       Hold[$CellContext`b2$$], 40, "Destino 2"}, 1, 1000, 1}, {{
       Hold[$CellContext`b3$$], 40, "Destino 3"}, 1, 1000, 1}, {{
       Hold[$CellContext`b4$$], 40, "Destino 4"}, 1, 1000, 1}, {{
       Hold[$CellContext`b5$$], 50, "Destino 5"}, 1, 1000, 1}, {
      Hold[
       Item[
        Column[{
          Style["Recursos", Bold], 
          Manipulate`Place[1], 
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4], 
          Manipulate`Place[5], "", 
          Style["Demandas", Bold], 
          Manipulate`Place[6], 
          Manipulate`Place[7], 
          Manipulate`Place[8], 
          Manipulate`Place[9], 
          Manipulate`Place[10]}]]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`c11$$], 6, "Env\[IAcute]o de Origen 1 a Destino 1"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c12$$], 4, "Env\[IAcute]o de Origen 1 a Destino 2"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c13$$], 2, "Env\[IAcute]o de Origen 1 a Destino 3"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c14$$], 1, "Env\[IAcute]o de Origen 1 a Destino 4"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c15$$], 5, "Env\[IAcute]o de Origen 1 a Destino 5"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c21$$], 5, "Env\[IAcute]o de Origen 2 a Destino 1"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c22$$], 2, "Env\[IAcute]o de Origen 2 a Destino 2"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c23$$], 1, "Env\[IAcute]o de Origen 2 a Destino 3"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c24$$], 1, "Env\[IAcute]o de Origen 2 a Destino 4"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c25$$], 3, "Env\[IAcute]o de Origen 2 a Destino 5"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c31$$], 9, "Env\[IAcute]o de Origen 3 a Destino 1"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c32$$], 6, "Env\[IAcute]o de Origen 3 a Destino 2"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c33$$], 6, "Env\[IAcute]o de Origen 3 a Destino 3"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c34$$], 4, "Env\[IAcute]o de Origen 3 a Destino 4"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c35$$], 2, "Env\[IAcute]o de Origen 3 a Destino 5"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c41$$], 9, "Env\[IAcute]o de Origen 4 a Destino 1"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c42$$], 6, "Env\[IAcute]o de Origen 4 a Destino 2"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c43$$], 6, "Env\[IAcute]o de Origen 4 a Destino 3"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c44$$], 4, "Env\[IAcute]o de Origen 4 a Destino 4"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c45$$], 2, "Env\[IAcute]o de Origen 4 a Destino 5"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c51$$], 9, "Env\[IAcute]o de Origen 5 a Destino 1"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c52$$], 6, "Env\[IAcute]o de Origen 5 a Destino 2"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c53$$], 6, "Env\[IAcute]o de Origen 5 a Destino 3"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c54$$], 4, "Env\[IAcute]o de Origen 5 a Destino 4"}, 
      1, 1000, 1}, {{
       Hold[$CellContext`c55$$], 2, "Env\[IAcute]o de Origen 5 a Destino 5"}, 
      1, 1000, 1}, {
      Hold[
       Item[
        Column[{
          Style["Costo de Env\[IAcute]o", Bold], 
          Manipulate`Place[11], 
          Manipulate`Place[12], 
          Manipulate`Place[13], 
          Manipulate`Place[14], 
          Manipulate`Place[15], "", 
          Manipulate`Place[16], 
          Manipulate`Place[17], 
          Manipulate`Place[18], 
          Manipulate`Place[19], 
          Manipulate`Place[20], "", 
          Manipulate`Place[21], 
          Manipulate`Place[22], 
          Manipulate`Place[23], 
          Manipulate`Place[24], 
          Manipulate`Place[25], "", 
          Manipulate`Place[26], 
          Manipulate`Place[27], 
          Manipulate`Place[28], 
          Manipulate`Place[29], 
          Manipulate`Place[30], "", 
          Manipulate`Place[31], 
          Manipulate`Place[32], 
          Manipulate`Place[33], 
          Manipulate`Place[34], 
          Manipulate`Place[35], Null}]]], Manipulate`Dump`ThisIsNotAControl}},
     Typeset`size$$ = {518., {154.5, 161.5}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`a1$80391$$ = 0, $CellContext`a2$80392$$ = 
    0, $CellContext`a3$80393$$ = 0, $CellContext`a4$80394$$ = 
    0, $CellContext`a5$80395$$ = 0, $CellContext`b1$80396$$ = 
    0, $CellContext`b2$80397$$ = 0, $CellContext`b3$80398$$ = 
    0, $CellContext`b4$80399$$ = 0, $CellContext`b5$80400$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`a1$$ = 40, $CellContext`a2$$ = 
        40, $CellContext`a3$$ = 40, $CellContext`a4$$ = 40, $CellContext`a5$$ = 
        40, $CellContext`b1$$ = 40, $CellContext`b2$$ = 40, $CellContext`b3$$ = 
        40, $CellContext`b4$$ = 40, $CellContext`b5$$ = 
        50, $CellContext`c11$$ = 6, $CellContext`c12$$ = 
        4, $CellContext`c13$$ = 2, $CellContext`c14$$ = 1, $CellContext`c15$$ = 
        5, $CellContext`c21$$ = 5, $CellContext`c22$$ = 2, $CellContext`c23$$ = 
        1, $CellContext`c24$$ = 1, $CellContext`c25$$ = 3, $CellContext`c31$$ = 
        9, $CellContext`c32$$ = 6, $CellContext`c33$$ = 6, $CellContext`c34$$ = 
        4, $CellContext`c35$$ = 2, $CellContext`c41$$ = 9, $CellContext`c42$$ = 
        6, $CellContext`c43$$ = 6, $CellContext`c44$$ = 4, $CellContext`c45$$ = 
        2, $CellContext`c51$$ = 9, $CellContext`c52$$ = 6, $CellContext`c53$$ = 
        6, $CellContext`c54$$ = 4, $CellContext`c55$$ = 2}, 
      "ControllerVariables" :> {
        Hold[$CellContext`a1$$, $CellContext`a1$80391$$, 0], 
        Hold[$CellContext`a2$$, $CellContext`a2$80392$$, 0], 
        Hold[$CellContext`a3$$, $CellContext`a3$80393$$, 0], 
        Hold[$CellContext`a4$$, $CellContext`a4$80394$$, 0], 
        Hold[$CellContext`a5$$, $CellContext`a5$80395$$, 0], 
        Hold[$CellContext`b1$$, $CellContext`b1$80396$$, 0], 
        Hold[$CellContext`b2$$, $CellContext`b2$80397$$, 0], 
        Hold[$CellContext`b3$$, $CellContext`b3$80398$$, 0], 
        Hold[$CellContext`b4$$, $CellContext`b4$80399$$, 0], 
        Hold[$CellContext`b5$$, $CellContext`b5$80400$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Quiet[
        $CellContext`Kantorovich[$CellContext`a1$$, $CellContext`a2$$, \
$CellContext`a3$$, $CellContext`a4$$, $CellContext`a5$$, $CellContext`b1$$, \
$CellContext`b2$$, $CellContext`b3$$, $CellContext`b4$$, $CellContext`b5$$, \
$CellContext`c11$$, $CellContext`c12$$, $CellContext`c13$$, \
$CellContext`c14$$, $CellContext`c15$$, $CellContext`c21$$, \
$CellContext`c22$$, $CellContext`c23$$, $CellContext`c24$$, \
$CellContext`c25$$, $CellContext`c31$$, $CellContext`c32$$, \
$CellContext`c33$$, $CellContext`c34$$, $CellContext`c35$$, \
$CellContext`c41$$, $CellContext`c42$$, $CellContext`c43$$, \
$CellContext`c44$$, $CellContext`c45$$, $CellContext`c51$$, \
$CellContext`c52$$, $CellContext`c53$$, $CellContext`c54$$, \
$CellContext`c55$$]], 
      "Specifications" :> {{{$CellContext`a1$$, 40, "Origen 1"}, 1, 1000, 1, 
         ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
         1}, {{$CellContext`a2$$, 40, "Origen 2"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         2}, {{$CellContext`a3$$, 40, "Origen 3"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         3}, {{$CellContext`a4$$, 40, "Origen 4"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         4}, {{$CellContext`a5$$, 40, "Origen 5"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         5}, {{$CellContext`b1$$, 40, "Destino 1"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         6}, {{$CellContext`b2$$, 40, "Destino 2"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         7}, {{$CellContext`b3$$, 40, "Destino 3"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         8}, {{$CellContext`b4$$, 40, "Destino 4"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         9}, {{$CellContext`b5$$, 50, "Destino 5"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 10}, 
        Item[
         Column[{
           Style["Recursos", Bold], 
           Manipulate`Place[1], 
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4], 
           Manipulate`Place[5], "", 
           Style["Demandas", Bold], 
           Manipulate`Place[6], 
           Manipulate`Place[7], 
           Manipulate`Place[8], 
           Manipulate`Place[9], 
           Manipulate`Place[10]}], ControlPlacement -> 
         Left], {{$CellContext`c11$$, 6, 
          "Env\[IAcute]o de Origen 1 a Destino 1"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         11}, {{$CellContext`c12$$, 4, 
          "Env\[IAcute]o de Origen 1 a Destino 2"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         12}, {{$CellContext`c13$$, 2, 
          "Env\[IAcute]o de Origen 1 a Destino 3"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         13}, {{$CellContext`c14$$, 1, 
          "Env\[IAcute]o de Origen 1 a Destino 4"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         14}, {{$CellContext`c15$$, 5, 
          "Env\[IAcute]o de Origen 1 a Destino 5"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         15}, {{$CellContext`c21$$, 5, 
          "Env\[IAcute]o de Origen 2 a Destino 1"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         16}, {{$CellContext`c22$$, 2, 
          "Env\[IAcute]o de Origen 2 a Destino 2"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         17}, {{$CellContext`c23$$, 1, 
          "Env\[IAcute]o de Origen 2 a Destino 3"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         18}, {{$CellContext`c24$$, 1, 
          "Env\[IAcute]o de Origen 2 a Destino 4"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         19}, {{$CellContext`c25$$, 3, 
          "Env\[IAcute]o de Origen 2 a Destino 5"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         20}, {{$CellContext`c31$$, 9, 
          "Env\[IAcute]o de Origen 3 a Destino 1"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         21}, {{$CellContext`c32$$, 6, 
          "Env\[IAcute]o de Origen 3 a Destino 2"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         22}, {{$CellContext`c33$$, 6, 
          "Env\[IAcute]o de Origen 3 a Destino 3"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         23}, {{$CellContext`c34$$, 4, 
          "Env\[IAcute]o de Origen 3 a Destino 4"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         24}, {{$CellContext`c35$$, 2, 
          "Env\[IAcute]o de Origen 3 a Destino 5"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         25}, {{$CellContext`c41$$, 9, 
          "Env\[IAcute]o de Origen 4 a Destino 1"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         26}, {{$CellContext`c42$$, 6, 
          "Env\[IAcute]o de Origen 4 a Destino 2"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         27}, {{$CellContext`c43$$, 6, 
          "Env\[IAcute]o de Origen 4 a Destino 3"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         28}, {{$CellContext`c44$$, 4, 
          "Env\[IAcute]o de Origen 4 a Destino 4"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         29}, {{$CellContext`c45$$, 2, 
          "Env\[IAcute]o de Origen 4 a Destino 5"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         30}, {{$CellContext`c51$$, 9, 
          "Env\[IAcute]o de Origen 5 a Destino 1"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         31}, {{$CellContext`c52$$, 6, 
          "Env\[IAcute]o de Origen 5 a Destino 2"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         32}, {{$CellContext`c53$$, 6, 
          "Env\[IAcute]o de Origen 5 a Destino 3"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         33}, {{$CellContext`c54$$, 4, 
          "Env\[IAcute]o de Origen 5 a Destino 4"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 
         34}, {{$CellContext`c55$$, 2, 
          "Env\[IAcute]o de Origen 5 a Destino 5"}, 1, 1000, 1, ImageSize -> 
         Tiny, Appearance -> "Labeled", ControlPlacement -> 35}, 
        Item[
         Column[{
           Style["Costo de Env\[IAcute]o", Bold], 
           Manipulate`Place[11], 
           Manipulate`Place[12], 
           Manipulate`Place[13], 
           Manipulate`Place[14], 
           Manipulate`Place[15], "", 
           Manipulate`Place[16], 
           Manipulate`Place[17], 
           Manipulate`Place[18], 
           Manipulate`Place[19], 
           Manipulate`Place[20], "", 
           Manipulate`Place[21], 
           Manipulate`Place[22], 
           Manipulate`Place[23], 
           Manipulate`Place[24], 
           Manipulate`Place[25], "", 
           Manipulate`Place[26], 
           Manipulate`Place[27], 
           Manipulate`Place[28], 
           Manipulate`Place[29], 
           Manipulate`Place[30], "", 
           Manipulate`Place[31], 
           Manipulate`Place[32], 
           Manipulate`Place[33], 
           Manipulate`Place[34], 
           Manipulate`Place[35], Null}], ControlPlacement -> Right]}, 
      "Options" :> {ContentSize -> {600, 700}}, "DefaultOptions" :> {}],
     ImageSizeCache->{1110., {365., 372.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`Kantorovich[
         Pattern[$CellContext`a1, 
          Blank[]], 
         Pattern[$CellContext`a2, 
          Blank[]], 
         Pattern[$CellContext`a3, 
          Blank[]], 
         Pattern[$CellContext`a4, 
          Blank[]], 
         Pattern[$CellContext`a5, 
          Blank[]], 
         Pattern[$CellContext`b1, 
          Blank[]], 
         Pattern[$CellContext`b2, 
          Blank[]], 
         Pattern[$CellContext`b3, 
          Blank[]], 
         Pattern[$CellContext`b4, 
          Blank[]], 
         Pattern[$CellContext`b5, 
          Blank[]], 
         Pattern[$CellContext`c11, 
          Blank[]], 
         Pattern[$CellContext`c12, 
          Blank[]], 
         Pattern[$CellContext`c13, 
          Blank[]], 
         Pattern[$CellContext`c14, 
          Blank[]], 
         Pattern[$CellContext`c15, 
          Blank[]], 
         Pattern[$CellContext`c21, 
          Blank[]], 
         Pattern[$CellContext`c22, 
          Blank[]], 
         Pattern[$CellContext`c23, 
          Blank[]], 
         Pattern[$CellContext`c24, 
          Blank[]], 
         Pattern[$CellContext`c25, 
          Blank[]], 
         Pattern[$CellContext`c31, 
          Blank[]], 
         Pattern[$CellContext`c32, 
          Blank[]], 
         Pattern[$CellContext`c33, 
          Blank[]], 
         Pattern[$CellContext`c34, 
          Blank[]], 
         Pattern[$CellContext`c35, 
          Blank[]], 
         Pattern[$CellContext`c41, 
          Blank[]], 
         Pattern[$CellContext`c42, 
          Blank[]], 
         Pattern[$CellContext`c43, 
          Blank[]], 
         Pattern[$CellContext`c44, 
          Blank[]], 
         Pattern[$CellContext`c45, 
          Blank[]]] := 
       Module[{$CellContext`n, $CellContext`m, $CellContext`cc, \
$CellContext`ccc, $CellContext`c, $CellContext`z, $CellContext`u, \
$CellContext`zz, $CellContext`w, $CellContext`ns, $CellContext`y, \
$CellContext`ll}, $CellContext`n = 5; $CellContext`m = 
          5; $CellContext`cc = {$CellContext`a1, $CellContext`a2, \
$CellContext`a3, $CellContext`a4, $CellContext`a5}; $CellContext`ccc = \
{$CellContext`b1, $CellContext`b2, $CellContext`b3, $CellContext`b4, \
$CellContext`b5}; $CellContext`c = 
          Join[$CellContext`cc, $CellContext`ccc]; $CellContext`z = \
{$CellContext`c11, $CellContext`c12, $CellContext`c13, $CellContext`c14, \
$CellContext`c15, $CellContext`c21, $CellContext`c22, $CellContext`c23, \
$CellContext`c24, $CellContext`c25, $CellContext`c31, $CellContext`c32, \
$CellContext`c33, $CellContext`c34, $CellContext`c35, $CellContext`c41, \
$CellContext`c42, $CellContext`c43, $CellContext`c44, $CellContext`c45}; \
$CellContext`u = Sum[
             
             Part[$CellContext`c, $CellContext`k], {$CellContext`k, 
              1, $CellContext`m}] - Sum[
            
            Part[$CellContext`c, $CellContext`l], {$CellContext`l, \
$CellContext`m + 1, $CellContext`m + $CellContext`n}]; 
         If[$CellContext`u > 
           0, {$CellContext`c = Append[$CellContext`c, $CellContext`u]; 
            Increment[$CellContext`n]; $CellContext`z = 
             Riffle[$CellContext`z, 
               0, {$CellContext`n, $CellContext`m $CellContext`n, \
$CellContext`n}]}, 
           
           If[$CellContext`u < 
            0, {$CellContext`c = 
              Insert[$CellContext`c, -$CellContext`u, $CellContext`m + 1]; 
             Increment[$CellContext`m]; $CellContext`z = 
              PadRight[$CellContext`z, $CellContext`m $CellContext`n]}]]; \
$CellContext`zz = MatrixForm[
            Partition[$CellContext`z, $CellContext`n]]; $CellContext`w = 
          SparseArray[Condition[{
               Pattern[$CellContext`j, 
                Blank[]], 1}, 
              1 <= $CellContext`j <= $CellContext`m + $CellContext`n] -> 
            Part[$CellContext`c, $CellContext`j], {$CellContext`m + \
$CellContext`n, 2}, 0]; $CellContext`ns = SparseArray[{Condition[{
                Pattern[$CellContext`i, 
                 Blank[]], 
                Pattern[$CellContext`j, 
                 Blank[]]}, 
               And[
                
                Divisible[$CellContext`j - $CellContext`i + $CellContext`m, \
$CellContext`n], $CellContext`m < $CellContext`i]] -> 1, Condition[{
                Pattern[$CellContext`i, 
                 Blank[]], 
                Pattern[$CellContext`j, 
                 Blank[]]}, 
               And[
                Inequality[
                0, Less, $CellContext`i, 
                 LessEqual, $CellContext`m], ($CellContext`i - 
                   1) $CellContext`n + 
                 1 <= $CellContext`j <= ($CellContext`i - 
                   1) $CellContext`n + $CellContext`n]] -> 
             1}, {$CellContext`m + $CellContext`n, $CellContext`n \
$CellContext`m}, 0]; $CellContext`y = LinearProgramming[$CellContext`z, 
            Normal[$CellContext`ns], 
            Normal[$CellContext`w]]; $CellContext`ll = 
          Partition[$CellContext`y, $CellContext`n]; Column[{
            Text[
             Style[
              ToString[
               StringForm["El costo m\[IAcute]nimo es : ``", 
                Sum[
                Part[$CellContext`z, $CellContext`k] 
                 Part[$CellContext`y, $CellContext`k], {$CellContext`k, 
                  1, $CellContext`m $CellContext`n}]]], Red, 20]], Null, Null, 
            Labeled[
             
             Grid[$CellContext`ll, Frame -> All, Spacings -> {3, 2}, 
              ItemStyle -> Directive[14, 
                RGBColor[0.49, 0, 0], "Label"]], 
             Text[
              Style["an optimal plan", Bold, 
               RGBColor[0.25, 0.43, 0.82], 20]]]}]], $CellContext`Kantorovich[
         Pattern[$CellContext`a1, 
          Blank[]], 
         Pattern[$CellContext`a2, 
          Blank[]], 
         Pattern[$CellContext`a3, 
          Blank[]], 
         Pattern[$CellContext`a4, 
          Blank[]], 
         Pattern[$CellContext`a5, 
          Blank[]], 
         Pattern[$CellContext`b1, 
          Blank[]], 
         Pattern[$CellContext`b2, 
          Blank[]], 
         Pattern[$CellContext`b3, 
          Blank[]], 
         Pattern[$CellContext`b4, 
          Blank[]], 
         Pattern[$CellContext`b5, 
          Blank[]], 
         Pattern[$CellContext`c11, 
          Blank[]], 
         Pattern[$CellContext`c12, 
          Blank[]], 
         Pattern[$CellContext`c13, 
          Blank[]], 
         Pattern[$CellContext`c14, 
          Blank[]], 
         Pattern[$CellContext`c15, 
          Blank[]], 
         Pattern[$CellContext`c21, 
          Blank[]], 
         Pattern[$CellContext`c22, 
          Blank[]], 
         Pattern[$CellContext`c23, 
          Blank[]], 
         Pattern[$CellContext`c24, 
          Blank[]], 
         Pattern[$CellContext`c25, 
          Blank[]], 
         Pattern[$CellContext`c31, 
          Blank[]], 
         Pattern[$CellContext`c32, 
          Blank[]], 
         Pattern[$CellContext`c33, 
          Blank[]], 
         Pattern[$CellContext`c34, 
          Blank[]], 
         Pattern[$CellContext`c35, 
          Blank[]], 
         Pattern[$CellContext`c41, 
          Blank[]], 
         Pattern[$CellContext`c42, 
          Blank[]], 
         Pattern[$CellContext`c43, 
          Blank[]], 
         Pattern[$CellContext`c44, 
          Blank[]], 
         Pattern[$CellContext`c45, 
          Blank[]], 
         Pattern[$CellContext`c51, 
          Blank[]], 
         Pattern[$CellContext`c52, 
          Blank[]], 
         Pattern[$CellContext`c53, 
          Blank[]], 
         Pattern[$CellContext`c54, 
          Blank[]], 
         Pattern[$CellContext`c55, 
          Blank[]]] := 
       Module[{$CellContext`n, $CellContext`m, $CellContext`cc, \
$CellContext`ccc, $CellContext`c, $CellContext`z, $CellContext`u, \
$CellContext`zz, $CellContext`w, $CellContext`ns, $CellContext`y, \
$CellContext`ll}, $CellContext`n = 5; $CellContext`m = 
          5; $CellContext`cc = {$CellContext`a1, $CellContext`a2, \
$CellContext`a3, $CellContext`a4, $CellContext`a5}; $CellContext`ccc = \
{$CellContext`b1, $CellContext`b2, $CellContext`b3, $CellContext`b4, \
$CellContext`b5}; $CellContext`c = 
          Join[$CellContext`cc, $CellContext`ccc]; $CellContext`z = \
{$CellContext`c11, $CellContext`c12, $CellContext`c13, $CellContext`c14, \
$CellContext`c15, $CellContext`c21, $CellContext`c22, $CellContext`c23, \
$CellContext`c24, $CellContext`c25, $CellContext`c31, $CellContext`c32, \
$CellContext`c33, $CellContext`c34, $CellContext`c35, $CellContext`c41, \
$CellContext`c42, $CellContext`c43, $CellContext`c44, $CellContext`c45, \
$CellContext`c51, $CellContext`c52, $CellContext`c53, $CellContext`c54, \
$CellContext`c55}; $CellContext`u = Sum[
             
             Part[$CellContext`c, $CellContext`k], {$CellContext`k, 
              1, $CellContext`m}] - Sum[
            
            Part[$CellContext`c, $CellContext`l], {$CellContext`l, \
$CellContext`m + 1, $CellContext`m + $CellContext`n}]; 
         If[$CellContext`u > 
           0, {$CellContext`c = Append[$CellContext`c, $CellContext`u]; 
            Increment[$CellContext`n]; $CellContext`z = 
             Riffle[$CellContext`z, 
               0, {$CellContext`n, $CellContext`m $CellContext`n, \
$CellContext`n}]}, 
           
           If[$CellContext`u < 
            0, {$CellContext`c = 
              Insert[$CellContext`c, -$CellContext`u, $CellContext`m + 1]; 
             Increment[$CellContext`m]; $CellContext`z = 
              PadRight[$CellContext`z, $CellContext`m $CellContext`n]}]]; \
$CellContext`zz = MatrixForm[
            Partition[$CellContext`z, $CellContext`n]]; $CellContext`w = 
          SparseArray[Condition[{
               Pattern[$CellContext`j, 
                Blank[]], 1}, 
              1 <= $CellContext`j <= $CellContext`m + $CellContext`n] -> 
            Part[$CellContext`c, $CellContext`j], {$CellContext`m + \
$CellContext`n, 2}, 0]; $CellContext`ns = SparseArray[{Condition[{
                Pattern[$CellContext`i, 
                 Blank[]], 
                Pattern[$CellContext`j, 
                 Blank[]]}, 
               And[
                
                Divisible[$CellContext`j - $CellContext`i + $CellContext`m, \
$CellContext`n], $CellContext`m < $CellContext`i]] -> 1, Condition[{
                Pattern[$CellContext`i, 
                 Blank[]], 
                Pattern[$CellContext`j, 
                 Blank[]]}, 
               And[
                Inequality[
                0, Less, $CellContext`i, 
                 LessEqual, $CellContext`m], ($CellContext`i - 
                   1) $CellContext`n + 
                 1 <= $CellContext`j <= ($CellContext`i - 
                   1) $CellContext`n + $CellContext`n]] -> 
             1}, {$CellContext`m + $CellContext`n, $CellContext`n \
$CellContext`m}, 0]; $CellContext`y = LinearProgramming[$CellContext`z, 
            Normal[$CellContext`ns], 
            Normal[$CellContext`w]]; $CellContext`ll = 
          Partition[$CellContext`y, $CellContext`n]; 
         GraphPlot[$CellContext`ll, VertexLabeling -> True, DirectedEdges -> 
            True, EdgeLabeling -> True] Column[{
             Text[
              Style[
               ToString[
                StringForm["El costo m\[IAcute]nimo es ``", 
                 Sum[
                 Part[$CellContext`z, $CellContext`k] 
                  Part[$CellContext`y, $CellContext`k], {$CellContext`k, 
                   1, $CellContext`m $CellContext`n}]]], Blue, 20]], Null, 
             Null, 
             Labeled[
              
              Grid[$CellContext`ll, Frame -> All, Spacings -> {3, 2}, 
               ItemStyle -> Directive[14, 
                 RGBColor[0.49, 0, 0], "Label"], ItemSize -> 3], 
              Text[
               Style["El plan \[OAcute]ptimo es", Bold, 
                RGBColor[0.25, 0.43, 0.82], 20]]]}, Center]], $CellContext`n = 
       5, $CellContext`m = 
       10, $CellContext`cc = {40, 40, 40, 40, 40}, $CellContext`ccc = {40, 40,
         40, 40, 50}, $CellContext`c = {40, 40, 40, 40, 40, 10, 10, 10, 10, 
        10, 40, 40, 40, 40, 50}, $CellContext`z = {6, 4, 2, 1, 5, 5, 2, 1, 1, 
        3, 9, 6, 6, 4, 2, 9, 6, 6, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
        0}, $CellContext`u = -10, $CellContext`zz = 
       MatrixForm[{{6, 4, 2, 1, 5}, {5, 2, 1, 1, 3}, {9, 6, 6, 4, 2}, {9, 6, 
         6, 4, 2}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 
         0, 0, 0}, {0, 0, 0, 0, 0}}], $CellContext`w = 
       SparseArray[
        Automatic, {10, 2}, 0, {
         1, {{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, {{1}, {1}, {1}, {1}, {1}, {
           1}, {1}, {1}, {1}, {1}}}, {40, 40, 40, 40, 40, 40, 40, 40, 40, 
          40}}], $CellContext`ns = 
       SparseArray[
        Automatic, {10, 25}, 0, {
         1, {{0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50}, {{1}, {2}, {3}, {
           4}, {5}, {6}, {9}, {7}, {10}, {8}, {14}, {13}, {12}, {15}, {11}, {
           18}, {19}, {16}, {20}, {17}, {21}, {24}, {23}, {25}, {22}, {1}, {
           6}, {16}, {11}, {21}, {12}, {22}, {2}, {17}, {7}, {8}, {23}, {
           18}, {3}, {13}, {4}, {19}, {14}, {9}, {24}, {15}, {20}, {10}, {
           25}, {5}}}, {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
          1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
           1, 1, 1, 1, 1, 1, 1, 1, 1}}], $CellContext`y = 
       LinearProgramming[{6, 4, 2, 1, 5, 5, 2, 1, 1, 3, 9, 6, 6, 4, 2, 9, 6, 
         6, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{1, 1, 1, 1, 1, 0, 0, 0, 0, 
         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 1, 
         1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 
         0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {
         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 
         0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
         1, 1, 1, 1, 1}, {1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
         0, 0, 0, 1, 0, 0, 0, 0}, {0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 
         0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0}, {0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 
         0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0}, {0, 0, 0, 1, 0, 0, 0, 0, 
         1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0}, {0, 0, 0, 0, 1, 
         0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1}}, {{40, 
         0}, {40, 0}, {40, 0}, {40, 0}, {40, 0}, {40, 0}, {40, 0}, {40, 0}, {
         40, 0}, {40, 0}}], $CellContext`ll = LinearProgramming[]}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"],

Cell["C\[OAcute]digo original", "Subsection", "PluginEmbeddedContent"],

Cell["\<\
http://demonstrations.wolfram.com/MongeKantorovichTransportationProblem/
Contributed by: Mandric Igor (Moldova State University)\
\>", "Subsubtitle", "PluginEmbeddedContent"]
}, Open  ]]
},
WindowSize->{1180, 967},
WindowMargins->{{84, Automatic}, {Automatic, 0}},
Visible->True,
AuthoredSize->{1181, 967},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.3 for Microsoft Windows (64-bit) (December 10, 2015)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 95, 0, 61, "Title"],
Cell[1584, 37, 131, 3, 69, "Subtitle"],
Cell[1718, 42, 31562, 658, 739, "Output"],
Cell[33283, 702, 70, 0, 29, "Subsection"],
Cell[33356, 704, 184, 3, 47, "Subsubtitle"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature wu05UlDnjUzC2DwunE2M6uh2 *)
