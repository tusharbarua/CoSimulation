within DelMod;

package SensorLib
  model CurrentSensor
  OpenIPSL.Interfaces.PwPin p annotation(
      Placement(visible = true, transformation(origin = {-110, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OpenIPSL.Interfaces.PwPin n annotation(
      Placement(visible = true, transformation(origin = {134, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput i "Current in the branch from p to n as output signal" annotation(
      Placement(visible = true, transformation(origin = {0, -100}, extent = {{10, -10}, {-10, 10}}, rotation = 90), iconTransformation(extent = {{-22, -10}, {-42, 10}}, rotation = 90)));
    Modelica.ComplexBlocks.Interfaces.ComplexOutput complexI annotation(
      Placement(visible = true, transformation(origin = {78, -104}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {28, -100}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  equation
    [p.vr, p.vi] = [n.vr, n.vi];
    i = sqrt(p.ir ^ 2 + p.ii ^ 2);
//  -i = sqrt(n.ir ^ 2 + n.ii ^ 2);
    [p.ir, p.ii] = -[n.ir, n.ii];
    complexI = Complex(re = p.ir, im = p.ii);
    annotation(
      Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
      Icon(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}), Text(origin = {2, 67}, extent = {{-58, 17}, {58, -17}}, textString = "Current Sensor"), Text(origin = {-32, -75}, extent = {{-10, 11}, {10, -11}}, textString = "i"), Text(origin = {28, -77}, extent = {{-10, 11}, {10, -11}}, textString = "complex I")}));
  end CurrentSensor;



  model VoltageSensor
    Modelica.Blocks.Interfaces.RealOutput v "Voltage between pin p and n (= p.v - n.v) as output signal" annotation(
      Placement(visible = true, transformation(origin = {0, -100}, extent = {{10, -10}, {-10, 10}}, rotation = 90), iconTransformation(extent = {{-32, -112}, {-52, -92}}, rotation = 90)));
    OpenIPSL.Interfaces.PwPin p annotation(
      Placement(visible = true, transformation(origin = {-136, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.ComplexBlocks.Interfaces.ComplexOutput ComplexV annotation(
      Placement(visible = true, transformation(origin = {50, -76}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {40, -100}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  equation
    [p.ir, p.ii] = [0, 0];
//  [n.ir, n.ii] = [0, 0];
    v = sqrt(p.vr ^ 2 + p.vi ^ 2);
    ComplexV = Complex(re = p.vr, im = p.vi);
    annotation(
      Icon(graphics = {Text(origin = {-42, -77}, extent = {{-14, 11}, {14, -11}}, textString = "V"), Text(origin = {38, -79}, extent = {{-14, 11}, {14, -11}}, textString = "Complex V"), Rectangle(extent = {{-100, 100}, {100, -100}}), Text(origin = {7, 72}, extent = {{-49, 14}, {49, -14}}, textString = "Voltage Sensor")}));
  end VoltageSensor;



  model FrequencySensor "Frequency Sensor block"
    parameter Real f = 50 "System Frequency";
    //  parameter Integer n = 2 "Order of filter";
    Modelica.Blocks.Interfaces.RealOutput y "O/P is in rad/sec" annotation(
      Placement(visible = true, transformation(extent = {{200, -20}, {220, 0}}, rotation = 0), iconTransformation(extent = {{100, -16}, {120, 4}}, rotation = 0)));
    Modelica.Blocks.Continuous.Derivative derivative annotation(
      Placement(transformation(extent = {{-56, 34}, {-36, 54}})));
    Modelica.Blocks.Math.Product product annotation(
      Placement(transformation(extent = {{-12, 16}, {10, 36}})));
    Modelica.Blocks.Math.Add add(k2 = -1) annotation(
      Placement(transformation(extent = {{30, 0}, {50, 20}})));
    Modelica.Blocks.Math.Division division annotation(
      Placement(transformation(extent = {{70, -14}, {90, 6}})));
    Modelica.Blocks.Math.Product product1 annotation(
      Placement(transformation(extent = {{-12, -10}, {10, 10}})));
    Modelica.Blocks.Math.Product product2 annotation(
      Placement(transformation(extent = {{-10, -88}, {12, -68}})));
    Modelica.Blocks.Math.Product product3 annotation(
      Placement(transformation(extent = {{-10, -54}, {12, -34}})));
    Modelica.Blocks.Math.Add add1(k1 = +1, k2 = +1) annotation(
      Placement(transformation(extent = {{30, -26}, {50, -6}})));
    Modelica.Blocks.Continuous.Derivative derivative1 annotation(
      Placement(transformation(extent = {{-54, -28}, {-34, -8}})));
    Modelica.Blocks.Continuous.CriticalDamping criticalDamping1(f = 50, n = 11) annotation(
      Placement(visible = true, transformation(origin = {122, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OpenIPSL.Interfaces.PwPin p annotation(
      Placement(visible = true, transformation(origin = {-2, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-2, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.RealExpression realExpression1(y = p.vi) annotation(
      Placement(visible = true, transformation(origin = {-90, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.RealExpression realExpression2(y = p.vr) annotation(
      Placement(visible = true, transformation(origin = {-90, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add2 annotation(
      Placement(visible = true, transformation(origin = {164, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.RealExpression realExpression3(y = f) annotation(
      Placement(visible = true, transformation(origin = {118, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(criticalDamping1.y, add2.u1) annotation(
      Line(points = {{133, -2}, {140, -2}, {140, -4}, {152, -4}}, color = {0, 0, 127}));
    connect(division.y, criticalDamping1.u) annotation(
      Line(points = {{92, -4}, {104, -4}, {104, -2}, {110, -2}}, color = {0, 0, 127}));
    connect(add2.y, y) annotation(
      Line(points = {{176, -10}, {210, -10}}, color = {0, 0, 127}));
    connect(realExpression3.y, add2.u2) annotation(
      Line(points = {{130, -34}, {142, -34}, {142, -16}, {152, -16}, {152, -16}}, color = {0, 0, 127}));
    [p.ir, p.ii] = [0, 0];
    connect(realExpression1.y, derivative.u) annotation(
      Line(points = {{-79, 46}, {-68.5, 46}, {-68.5, 44}, {-58, 44}}, color = {0, 0, 127}));
    connect(realExpression2.y, product2.u2) annotation(
      Line(points = {{-79, -62}, {-62, -62}, {-62, -84}, {-12, -84}}, color = {0, 0, 127}));
    connect(realExpression2.y, product2.u1) annotation(
      Line(points = {{-79, -62}, {-62, -62}, {-62, -72}, {-12, -72}}, color = {0, 0, 127}));
    connect(realExpression2.y, product.u2) annotation(
      Line(points = {{-79, -62}, {-62, -62}, {-62, 20}, {-14, 20}}, color = {0, 0, 127}));
    connect(realExpression2.y, derivative1.u) annotation(
      Line(points = {{-79, -62}, {-62, -62}, {-62, -18}, {-56, -18}}, color = {0, 0, 127}));
    connect(product.y, add.u1) annotation(
      Line(points = {{11.1, 26}, {16, 26}, {16, 16}, {28, 16}}, color = {0, 0, 127}));
    connect(product1.y, add.u2) annotation(
      Line(points = {{11.1, 0}, {16, 0}, {16, 4}, {28, 4}}, color = {0, 0, 127}));
    connect(product3.y, add1.u1) annotation(
      Line(points = {{13.1, -44}, {17.55, -44}, {17.55, -10}, {28, -10}}, color = {0, 0, 127}));
    connect(derivative.y, product.u1) annotation(
      Line(points = {{-35, 44}, {-30, 44}, {-30, 32}, {-14.2, 32}}, color = {0, 0, 127}));
    connect(derivative1.y, product1.u2) annotation(
      Line(points = {{-33, -18}, {-26, -18}, {-26, -6}, {-14.2, -6}}, color = {0, 0, 127}));
    connect(product3.u1, derivative.u) annotation(
      Line(points = {{-12.2, -38}, {-70, -38}, {-70, 44}, {-58, 44}}, color = {0, 0, 127}));
    connect(product1.u1, derivative.u) annotation(
      Line(points = {{-14.2, 6}, {-36, 6}, {-70, 6}, {-70, 44}, {-58, 44}}, color = {0, 0, 127}));
    connect(product3.u2, derivative.u) annotation(
      Line(points = {{-12.2, -50}, {-34, -50}, {-34, -38}, {-70, -38}, {-70, 44}, {-58, 44}}, color = {0, 0, 127}));
    connect(add1.u2, product2.y) annotation(
      Line(points = {{28, -22}, {22, -22}, {22, -78}, {13.1, -78}}, color = {0, 0, 127}));
    connect(division.u2, add1.y) annotation(
      Line(points = {{68, -10}, {60, -10}, {60, -16}, {51, -16}}, color = {0, 0, 127}));
    connect(division.u1, add.y) annotation(
      Line(points = {{68, 2}, {60, 2}, {60, 10}, {51, 10}}, color = {0, 0, 127}));
    annotation(
      Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-70, 64}, {50, -24}}, lineColor = {28, 108, 200}, textString = "FrequencySensorBlock")}),
      Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {200, 100}})),
      Documentation(info = "<html><head></head><body>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><!--StartFragment--><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">Copied from https://github.com/OpenIPSL/2018_AmericanModelicaConf_PMUBasedIslanding</span><!--EndFragment--></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><font color=\"#008b00\" face=\"Courier New\" size=\"4\">Added a filter block to remove sudden spikes. </font></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><font color=\"#008b00\" face=\"Courier New\" size=\"4\">Created by Digvijay Gusain and Matija Naglic (IEPG, TU Delft)</font></pre></body></html>"),
      __OpenModelica_commandLineOptions = "");
  end FrequencySensor;
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})));
end SensorLib;
