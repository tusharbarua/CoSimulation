within DelMod;

package Control
  model TripControl
  Modelica.Blocks.Logical.Less less1 annotation(
      Placement(visible = true, transformation(origin = {-25, -83}, extent = {{-21, -23}, {21, 23}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = lLim) annotation(
      Placement(visible = true, transformation(origin = {-176, -92}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Real lLim = -0.8 "Upper limit of cutoff";
    Modelica.Blocks.Interfaces.BooleanOutput y annotation(
      Placement(visible = true, transformation(origin = {212, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u annotation(
      Placement(visible = true, transformation(origin = {-186, -8}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-96, -2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  initial equation
    pre(y) = true;
  equation
    if less1.y and y then
      y = false;
    else
      y = pre(y);
    end if;
    connect(const1.y, less1.u2) annotation(
      Line(points = {{-164, -92}, {-114, -92}, {-114, -104}, {-50, -104}, {-50, -102}}, color = {0, 0, 127}));
    connect(u, less1.u1) annotation(
      Line(points = {{-186, -8}, {-90, -8}, {-90, -82}, {-50, -82}, {-50, -82}}, color = {0, 0, 127}));
    annotation(
      Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
      uses(Modelica(version = "3.2.2")),
      Icon(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, endAngle = 360), Text(origin = {3, -6}, extent = {{-51, 24}, {51, -24}}, textString = "TripControl"), Text(origin = {-46, 37}, extent = {{-40, 11}, {40, -11}}, textString = "%uLim"), Text(origin = {42, 37}, extent = {{-40, 11}, {40, -11}}, textString = "%lLim"), Text(origin = {27, -48}, extent = {{-51, 24}, {-5, 4}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)));
  end TripControl;



  model TripControl2
    Modelica.Blocks.Logical.Greater greater1 annotation(
      Placement(visible = true, transformation(origin = {-19, -7}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
    Modelica.Blocks.Logical.Less less1 annotation(
      Placement(visible = true, transformation(origin = {-25, -83}, extent = {{-21, -23}, {21, 23}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = uLim) annotation(
      Placement(visible = true, transformation(origin = {-178, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = lLim) annotation(
      Placement(visible = true, transformation(origin = {-176, -92}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Real uLim = 0.8 "Upper limit of cutoff";
    parameter Real lLim = -0.8 "Lower limit of cutoff";
    Modelica.Blocks.Interfaces.BooleanOutput y annotation(
      Placement(visible = true, transformation(origin = {212, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u annotation(
      Placement(visible = true, transformation(origin = {-186, -8}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-96, -2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  initial equation
    pre(y) = true;
  equation
    if (less1.y or greater1.y) and y then
      y = false;
    else
      y = pre(y);
    end if;
    connect(u, greater1.u1) annotation(
      Line(points = {{-186, -8}, {-48, -8}, {-48, -6}, {-44, -6}}, color = {0, 0, 127}));
    connect(const.y, greater1.u2) annotation(
      Line(points = {{-166, -48}, {-72, -48}, {-72, -24}, {-44, -24}, {-44, -24}}, color = {0, 0, 127}));
    connect(const1.y, less1.u2) annotation(
      Line(points = {{-164, -92}, {-114, -92}, {-114, -104}, {-50, -104}, {-50, -102}}, color = {0, 0, 127}));
    connect(u, less1.u1) annotation(
      Line(points = {{-186, -8}, {-90, -8}, {-90, -82}, {-50, -82}, {-50, -82}}, color = {0, 0, 127}));
    annotation(
      Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
      Icon(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, endAngle = 360), Text(origin = {0, 36}, extent = {{-52, 18}, {52, -18}}, textString = "%name")}));
  end TripControl2;
  



  model TGOV1
    //  parameter Boolean use_w_ref_input = false "External w_ref signal" annotation(Evaluate=true, HideResult=true);
    Modelica.Blocks.Interfaces.RealInput SPEED "Machine speed deviation from nominal (pu)" annotation(
      Placement(visible = true, transformation(extent = {{-105, -39}, {-95, -27}}, rotation = 0), iconTransformation(extent = {{-80, 20}, {-60, 40}}, rotation = 0)));
    OpenIPSL.NonElectrical.Continuous.LeadLag imLeadLag(K = K_2, T1 = 0, T2 = T_2, y_start = P0) annotation(
      Placement(visible = true, transformation(extent = {{31, 8}, {41, 18}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput PMECH "Turbine mechanical power (pu)" annotation(
      Placement(transformation(extent = {{80, -6}, {90, 6}}), iconTransformation(extent = {{80, -10}, {100, 10}})));
    //  parameter Real w_REF = 1;
    //  parameter Real w_REF_conditional = 1 "W_ref value. To be used only when input is not used" annotation (Dialog(enable = not use_w_ref_input));
    parameter Real K_2 = 1 "Lead/Lag Gov TC";
    parameter Real R "Governor gain (pu)";
    parameter Real T_1 "Simple lag/lim time constant (s)";
    parameter Real T_2 "Lag time constant (s)";
  //  parameter Real T_3 "Control time constant (s)";
    parameter Real V_MAX "Max. valve position (p.u. on M_b)";
    parameter Real V_MIN "min. valve position (p.u. on M_b)";
    Modelica.Blocks.Interfaces.RealInput PMECH0 annotation(
      Placement(visible = true, transformation(extent = {{-105, 10}, {-95, 20}}, rotation = 0), iconTransformation(extent = {{-80, -40}, {-60, -20}}, rotation = 0)));
    OpenIPSL.NonElectrical.Continuous.SimpleLagLim simpleLagLim(K = 1, T = T_1, outMax = V_MAX, outMin = V_MIN, y_start = P0) annotation(
      Placement(visible = true, transformation(extent = {{-2, 7}, {8, 17}}, rotation = 0)));
    Modelica.Blocks.Math.Add add2(k2 = -1) annotation(
      Placement(visible = true, transformation(extent = {{-53, -35}, {-43, -25}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant wref(k = 1.000001) annotation(
      Placement(visible = true, transformation(extent = {{-100, -23}, {-90, -13}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput AGCinput annotation(
      Placement(visible = true, transformation(extent = {{-105, 26}, {-95, 36}}, rotation = 0), iconTransformation(extent = {{-80, -11}, {-60, 9}}, rotation = 0)));
    Modelica.Blocks.Math.Add3 add31 annotation(
      Placement(visible = true, transformation(origin = {-46, 12}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
    Modelica.Blocks.Math.Gain gain2(k = 1 / R) annotation(
      Placement(visible = true, transformation(origin = {-45, -6}, extent = {{-5, -5}, {5, 5}}, rotation = 90)));
  protected
    parameter Real P0(fixed = false) "Power reference of the governor";
    //  parameter Real P_REF(fixed = false);
  initial equation
    P0 = PMECH0;
//  P_REF = P0 * R;
  equation
    connect(simpleLagLim.y, imLeadLag.u) annotation(
      Line(points = {{8.5, 12}, {19.25, 12}, {19.25, 13}, {30, 13}}, color = {0, 0, 127}));
    connect(imLeadLag.y, PMECH) annotation(
      Line(points = {{41.5, 13}, {54, 13}, {54, 0}, {85, 0}}, color = {0, 0, 127}));
    connect(PMECH0, add31.u2) annotation(
      Line(points = {{-100, 15}, {-64, 15}, {-64, 12}, {-52, 12}, {-52, 12}}, color = {0, 0, 127}));
    connect(add31.y, simpleLagLim.u) annotation(
      Line(points = {{-40, 12}, {-3, 12}, {-3, 12}, {-3, 12}}, color = {0, 0, 127}));
    connect(gain2.y, add31.u3) annotation(
      Line(points = {{-45, 0}, {-54, 0}, {-54, 8}, {-52, 8}, {-52, 8}}, color = {0, 0, 127}));
    connect(add2.y, gain2.u) annotation(
      Line(points = {{-42, -30}, {-45, -30}, {-45, -12}, {-45, -12}}, color = {0, 0, 127}));
    connect(AGCinput, add31.u1) annotation(
      Line(points = {{-100, 31}, {-63, 31}, {-63, 16}, {-52, 16}}, color = {0, 0, 127}));
    connect(wref.y, add2.u1) annotation(
      Line(points = {{-89.5, -18}, {-74, -18}, {-74, -27}, {-54, -27}}, color = {0, 0, 127}));
    connect(SPEED, add2.u2) annotation(
      Line(points = {{-100, -33}, {-54, -33}}, color = {0, 0, 127}));
    annotation(
      Diagram(coordinateSystem(extent = {{-100, -60}, {80, 60}}, preserveAspectRatio = false, grid = {1, 1})),
      Icon(coordinateSystem(extent = {{-80, -60}, {80, 60}}, preserveAspectRatio = false, grid = {1, 1}, initialScale = 0.1), graphics = {Rectangle(lineColor = {0, 0, 255}, extent = {{-80, 60}, {80, -60}}), Text(lineColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-64, 36}, {-19, 25}}, textString = "SPEED"), Text(lineColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{44, 7}, {79, -8}}, textString = "PMECH"), Text(origin = {36, 42}, lineColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-48, 14}, {42, -14}}, textString = "TGOV1"), Text(lineColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-61, -25}, {-16, -36}}, textString = "PMECH0"), Text(origin = {5, 30}, lineColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-61, -25}, {-16, -36}}, textString = "AGC Input")}),
      Documentation(info = "<html>
<table cellspacing=\"1\" cellpadding=\"1\" border=\"1\"><tr>
<td align=center  width=50%><p>Development level</p></td>
<td align=center width=25% bgcolor=cyan><p> 3 </p></td>
</tr> 
</table> 
<p></p></html>", revisions = "<html>
<!--DISCLAIMER-->
<p>Copyright 2015-2016 RTE (France), SmarTS Lab (Sweden), AIA (Spain) and DTU (Denmark)</p>
<ul>
<li>RTE: <a href=\"http://www.rte-france.com\">http://www.rte-france.com</a></li>
<li>SmarTS Lab, research group at KTH: <a href=\"https://www.kth.se/en\">https://www.kth.se/en</a></li>
<li>AIA: <a href=\"http://www.aia.es/en/energy\"> http://www.aia.es/en/energy</a></li>
<li>DTU: <a href=\"http://www.dtu.dk/english\"> http://www.dtu.dk/english</a></li>
</ul>
<p>The authors can be contacted by email: <a href=\"mailto:info@itesla-ipsl.org\">info@itesla-ipsl.org</a></p>

<p>This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. </p>
<p>If a copy of the MPL was not distributed with this file, You can obtain one at <a href=\"http://mozilla.org/MPL/2.0/\"> http://mozilla.org/MPL/2.0</a>.</p>
</html>"),
      uses(Modelica(version = "3.2.2")),
      __OpenModelica_commandLineOptions = "");
  end TGOV1;
  
  model AutomaticGenerationControl
    parameter Real constKbias = 1 "Bias for the frequency deviation" annotation(
      Dialog(group = "AGC parameters"));
    parameter Real constPnetref = 1 "Scheduled power export from area" annotation(
      Dialog(group = "AGC parameters"));
    parameter Real pbase = 1 "Base Power (MW)" annotation(
      Dialog(group = "AGC parameters"));
    parameter Real T_agc = 1 "Time constant of PI" annotation(
      Dialog(group = "AGC parameters"));
    parameter Real k_agc = 1 "Gain constant of PI" annotation(
      Dialog(group = "AGC parameters"));
    Modelica.Blocks.Interfaces.RealInput frequency annotation(
      Placement(visible = true, transformation(origin = {-200, 94}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-190, 144}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput P1 annotation(
      Placement(visible = true, transformation(origin = {-200, -12}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-192, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput y annotation(
      Placement(visible = true, transformation(origin = {194, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {204, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput P2 annotation(
      Placement(visible = true, transformation(origin = {-200, -114}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-190, -112}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant fref1(k = 1) annotation(
      Placement(visible = true, transformation(origin = {-172, 154}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant consKbias1(k = constKbias) annotation(
      Placement(visible = true, transformation(origin = {-106, 166}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant constPnetref1(k = constPnetref) annotation(
      Placement(visible = true, transformation(origin = {-146, -166}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add1(k1 = -1) annotation(
      Placement(visible = true, transformation(origin = {-126, 102}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Product product1 annotation(
      Placement(visible = true, transformation(origin = {-60, 104}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add2(k2 = -1) annotation(
      Placement(visible = true, transformation(origin = {10, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add3 annotation(
      Placement(visible = true, transformation(origin = {-94, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add4(k2 = -1) annotation(
      Placement(visible = true, transformation(origin = {-32, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Gain gain1(k = 1 / pbase) annotation(
      Placement(visible = true, transformation(origin = {-16, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
    Modelica.Blocks.Continuous.PI PI(T = T_agc, k = k_agc, y_start = 0) annotation(
      Placement(visible = true, transformation(origin = {79, 55}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
    Modelica.Blocks.Math.Gain gain2(k = 1) annotation(
      Placement(visible = true, transformation(origin = {-156, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain3(k = 100) annotation(
      Placement(visible = true, transformation(origin = {-144, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain4(k = 100) annotation(
      Placement(visible = true, transformation(origin = {-142, -106}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(gain4.y, add3.u2) annotation(
      Line(points = {{-130, -106}, {-108, -106}, {-108, -54}, {-106, -54}}, color = {0, 0, 127}));
    connect(P2, gain4.u) annotation(
      Line(points = {{-200, -114}, {-156, -114}, {-156, -106}, {-154, -106}}, color = {0, 0, 127}));
    connect(gain3.y, add3.u1) annotation(
      Line(points = {{-132, -18}, {-122, -18}, {-122, -42}, {-106, -42}, {-106, -42}}, color = {0, 0, 127}));
    connect(P1, gain3.u) annotation(
      Line(points = {{-200, -12}, {-158, -12}, {-158, -18}, {-156, -18}}, color = {0, 0, 127}));
    connect(constPnetref1.y, add4.u2) annotation(
      Line(points = {{-135, -166}, {-78, -166}, {-78, -70}, {-44, -70}}, color = {0, 0, 127}));
    connect(add3.y, add4.u1) annotation(
      Line(points = {{-82, -48}, {-68, -48}, {-68, -58}, {-44, -58}}, color = {0, 0, 127}));
    connect(add4.y, gain1.u) annotation(
      Line(points = {{-21, -64}, {-16, -64}, {-16, -12}}, color = {0, 0, 127}));
    connect(gain2.y, add1.u2) annotation(
      Line(points = {{-144, 60}, {-144, 60}, {-144, 96}, {-138, 96}, {-138, 96}}, color = {0, 0, 127}));
    connect(frequency, gain2.u) annotation(
      Line(points = {{-200, 94}, {-176, 94}, {-176, 60}, {-168, 60}, {-168, 60}}, color = {0, 0, 127}));
    connect(PI.y, y) annotation(
      Line(points = {{94, 56}, {186, 56}, {186, 50}, {194, 50}}, color = {0, 0, 127}));
    connect(add2.y, PI.u) annotation(
      Line(points = {{22, 90}, {38, 90}, {38, 54}, {64, 54}, {64, 56}}, color = {0, 0, 127}));
    connect(product1.y, add2.u1) annotation(
      Line(points = {{-48, 104}, {-24, 104}, {-24, 96}, {-2, 96}, {-2, 96}}, color = {0, 0, 127}));
    connect(gain1.y, add2.u2) annotation(
      Line(points = {{-16, 12}, {-16, 12}, {-16, 84}, {-2, 84}, {-2, 84}}, color = {0, 0, 127}));
    connect(add1.y, product1.u2) annotation(
      Line(points = {{-114, 102}, {-94, 102}, {-94, 98}, {-72, 98}, {-72, 98}}, color = {0, 0, 127}));
    connect(consKbias1.y, product1.u1) annotation(
      Line(points = {{-94, 166}, {-82, 166}, {-82, 110}, {-72, 110}, {-72, 110}}, color = {0, 0, 127}));
    connect(fref1.y, add1.u1) annotation(
      Line(points = {{-160, 154}, {-150, 154}, {-150, 108}, {-138, 108}, {-138, 108}, {-138, 108}}, color = {0, 0, 127}));
    annotation(
      Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
      uses(Modelica(version = "3.2.2"), OpenIPSL(version = "1.0.0")),
      Icon(graphics = {Rectangle(extent = {{-198, 198}, {200, -200}}), Text(origin = {6, 21}, extent = {{-76, 47}, {76, -47}}, textString = "%name")}, coordinateSystem(extent = {{-200, -200}, {200, 200}}, initialScale = 0.1)),
      version = "",
      __OpenModelica_commandLineOptions = "");
  end AutomaticGenerationControl;
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})));
end Control;
