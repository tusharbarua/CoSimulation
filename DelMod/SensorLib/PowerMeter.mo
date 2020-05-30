within DelMod.SensorLib;
  model PowerMeter "Model for a transmission Line based on the pi-equivalent circuit"
    //Complex vs(re=p.vr, im=p.vi);
    //Complex is(re=p.ir, im=p.ii);
    //Complex vr(re=n.vr, im=n.vi);
    //Complex ir(re=n.ir, im=n.ii);
    //    import Modelica.ComplexMath.real;
    outer OpenIPSL.Electrical.SystemBase SysData;
    Real S_b = SysData.S_b "System base power (MVA)";
    DelMod.Sensors.CurrentSensor currentSensor1 annotation(
      Placement(visible = true, transformation(origin = {-98, 60}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    DelMod.Sensors.VoltageSensor voltageSensor1 annotation(
      Placement(visible = true, transformation(origin = {-98, -14}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    OpenIPSL.Interfaces.PwPin p annotation(
      Placement(visible = true, transformation(origin = {-186, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-2, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OpenIPSL.Interfaces.PwPin n annotation(
      Placement(visible = true, transformation(origin = {128, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.ComplexBlocks.ComplexMath.Product complexProduct annotation(
      Placement(visible = true, transformation(origin = {33, 113}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
    Modelica.ComplexBlocks.Interfaces.ComplexOutput complexP annotation(
      Placement(visible = true, transformation(origin = {186, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.ComplexBlocks.ComplexMath.Conj conj1 annotation(
      Placement(visible = true, transformation(origin = {-42, 122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Abs abs1 annotation(
      Placement(visible = true, transformation(origin = {164, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput P annotation(
      Placement(visible = true, transformation(origin = {202, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.ComplexBlocks.ComplexMath.ComplexToReal complexToReal1 annotation(
      Placement(visible = true, transformation(origin = {98, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Gain gain1(k = SysData.S_b) annotation(
      Placement(visible = true, transformation(origin = {130, -66}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  equation
    connect(gain1.y, abs1.u) annotation(
      Line(points = {{134, -66}, {142, -66}, {142, -70}, {152, -70}, {152, -70}}, color = {0, 0, 127}));
    connect(complexToReal1.re, gain1.u) annotation(
      Line(points = {{110, -62}, {120, -62}, {120, -66}, {126, -66}, {126, -66}}, color = {0, 0, 127}));
    connect(complexProduct.y, complexToReal1.u) annotation(
      Line(points = {{48, 114}, {64, 114}, {64, -68}, {86, -68}, {86, -68}}, color = {85, 170, 255}));
    connect(abs1.y, P) annotation(
      Line(points = {{176, -70}, {194, -70}, {194, -70}, {202, -70}}, color = {0, 0, 127}));
    connect(complexProduct.y, complexP) annotation(
      Line(points = {{48, 114}, {132, 114}, {132, 100}, {186, 100}, {186, 100}}, color = {85, 170, 255}));
//  P_internal = complexProduct.y.re * S_b;
    connect(currentSensor1.complexI, conj1.u) annotation(
      Line(points = {{-94, 44}, {-94, 44}, {-94, 26}, {-66, 26}, {-66, 122}, {-54, 122}, {-54, 122}}, color = {85, 170, 255}));
    connect(conj1.y, complexProduct.u1) annotation(
      Line(points = {{-31, 122}, {15, 122}, {15, 121}, {16, 121}}, color = {85, 170, 255}));
    connect(voltageSensor1.ComplexV, complexProduct.u2) annotation(
      Line(points = {{-92, -28}, {-54, -28}, {-54, -148}, {-12, -148}, {-12, 105}, {17, 105}}, color = {85, 170, 255}));
    connect(p, voltageSensor1.p) annotation(
      Line(points = {{-186, -4}, {-146, -4}, {-146, -11}, {-111, -11}}, color = {0, 0, 255}));
    connect(p, currentSensor1.p) annotation(
      Line(points = {{-186, -4}, {-146, -4}, {-146, 63}, {-112, 63}}, color = {0, 0, 255}));
    connect(currentSensor1.n, n) annotation(
      Line(points = {{-84, 63}, {30, 63}, {30, 0}, {128, 0}}, color = {0, 0, 255}));
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(extent = {{-100, 96}, {100, -96}}), Text(origin = {7, 5}, rotation = 180, extent = {{-45, 23}, {45, -23}}, textString = "Power Sensor"), Text(origin = {69, 41}, extent = {{-23, 7}, {23, -7}}, textString = "Complex P"), Text(origin = {89, -27}, extent = {{-23, 7}, {23, -7}}, textString = "P")}));
  end PowerMeter;
