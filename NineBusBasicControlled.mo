model NineBusBasicControlled
  inner OpenIPSL.Electrical.SystemBase SysData annotation(
    Placement(visible = true, transformation(origin = {-184, 184}, extent = {{-12, -10}, {12, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus bus1(displayPF = true) annotation(
    Placement(visible = true, transformation(origin = {-48, -46}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Buses.Bus bus2 annotation(
    Placement(visible = true, transformation(origin = {-154, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus bus4 annotation(
    Placement(visible = true, transformation(origin = {-48, -4}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Buses.Bus bus5 annotation(
    Placement(visible = true, transformation(origin = {2, 60}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Buses.Bus bus6 annotation(
    Placement(visible = true, transformation(origin = {16, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus bus7 annotation(
    Placement(visible = true, transformation(origin = {-50, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus bus8 annotation(
    Placement(visible = true, transformation(origin = {-112, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus bus9 annotation(
    Placement(visible = true, transformation(origin = {-102, 60}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Branches.PwLine L87(B = 0.0745, G = 0, R = 0.0085, X = 0.0720, displayPF = true) annotation(
    Placement(visible = true, transformation(origin = {-84, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Branches.PwLine L76(B = 0.1045, G = 0, R = 0.0119, X = 0.1008) annotation(
    Placement(visible = true, transformation(origin = {-16, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Branches.PwLine L65(B = 0.1790, G = 0, R = 0.0390, X = 0.1700) annotation(
    Placement(visible = true, transformation(origin = {2, 92}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  OpenIPSL.Electrical.Branches.PwLine L54(B = 0.0790, G = 0, R = 0.0170, X = 0.0920) annotation(
    Placement(visible = true, transformation(origin = {2, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  OpenIPSL.Electrical.Branches.PwLine L49(B = 0.0880, G = 0, R = 0.0100, X = 0.0850) annotation(
    Placement(visible = true, transformation(origin = {-102, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Branches.PwLine L89(B = 0.1530, G = 0, R = 0.0320, X = 0.1610) annotation(
    Placement(visible = true, transformation(origin = {-102, 94}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Branches.PSAT.TwoWindingTransformer T2(r = 0, kT = 18 / 230, x = 0.0625, Sn = 100, V_b = 18, Vn = 18) annotation(
    Placement(visible = true, transformation(origin = {-132, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Branches.PSAT.TwoWindingTransformer T3(r = 0, kT = 13.8 / 230, x = 0.0586, V_b = 13.8, Vn = 13.8) annotation(
    Placement(visible = true, transformation(origin = {38, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  OpenIPSL.Electrical.Branches.PSAT.TwoWindingTransformer T1(kT = 16.5 / 230, x = 0.0576, r = 0, V_b = 16.5, Vn = 16.5) annotation(
    Placement(visible = true, transformation(origin = {-48, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  DelMod.Loads.scaleLoad Load7(P_0 = 100, Q_0 = 35, Sn = 100, V_0 = 1.015882583627499, V_b = 230, angle_0 = 0.727536076874302) annotation(
    Placement(visible = true, transformation(origin = {-50, 94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant load5(P_0 = 90, Q_0 = 30, Sn = 100, V_0 = 1.012654324017776, V_b = 230, angle_0 = -3.687396170157055) annotation(
    Placement(visible = true, transformation(origin = {34, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant load9(P_0 = 125, Q_0 = 50, Sn = 100, V_0 = 0.995630858048295, V_b = 230, angle_0 = -3.988805272851462) annotation(
    Placement(visible = true, transformation(origin = {-130, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus bus3 annotation(
    Placement(visible = true, transformation(origin = {58, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1(height = 0.3, offset = 1, startTime = 50) annotation(
    Placement(visible = true, transformation(origin = {-140, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  basicGenAVR Gen2 annotation(
    Placement(visible = true, transformation(origin = {-182, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  basicGenAVR Gen3 annotation(
    Placement(visible = true, transformation(origin = {86, 132}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  basicGenAVR Gen1 annotation(
    Placement(visible = true, transformation(origin = {-50, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
equation
  connect(step1.y, Load7.scaling) annotation(
    Line(points = {{-128, 82}, {-64, 82}, {-64, 94}, {-64, 94}}, color = {0, 0, 127}));
  connect(bus2.p, T2.p) annotation(
    Line(points = {{-154, 132}, {-143, 132}}, color = {0, 0, 255}, thickness = 0.75));
  connect(L49.n, bus4.p) annotation(
    Line(points = {{-102, 22}, {-102, 12}, {-48, 12}, {-48, -4}}, color = {0, 0, 255}, thickness = 0.75));
  connect(bus4.p, L54.p) annotation(
    Line(points = {{-48, -4}, {-48, 12.5}, {2, 12.5}, {2, 21}}, color = {0, 0, 255}, thickness = 0.75));
  connect(bus4.p, T1.n) annotation(
    Line(points = {{-48, -4}, {-48, -11}}, color = {0, 0, 255}, thickness = 0.75));
  connect(L65.n, bus6.p) annotation(
    Line(points = {{2, 102}, {2, 102}, {2, 132}, {16, 132}, {16, 132}}, color = {0, 0, 255}, thickness = 0.75));
  connect(T1.p, bus1.p) annotation(
    Line(points = {{-48, -31}, {-48, -44}}, color = {0, 0, 255}, thickness = 0.75));
  connect(bus5.p, L54.n) annotation(
    Line(points = {{2, 60}, {2, 39}}, color = {0, 0, 255}, thickness = 0.75));
  connect(T3.p, bus3.p) annotation(
    Line(points = {{49, 132}, {58, 132}}, color = {0, 0, 255}, thickness = 0.75));
  connect(bus6.p, T3.n) annotation(
    Line(points = {{16, 132}, {27, 132}}, color = {0, 0, 255}, thickness = 0.75));
  connect(load9.p, bus9.p) annotation(
    Line(points = {{-130, 40}, {-130, 60}, {-102, 60}}, color = {0, 0, 255}, thickness = 0.75));
  connect(bus5.p, load5.p) annotation(
    Line(points = {{2, 60}, {34, 60}, {34, 42}}, color = {0, 0, 255}, thickness = 0.75));
  connect(L49.p, bus9.p) annotation(
    Line(points = {{-102, 39}, {-102, 60}}, color = {0, 0, 255}, thickness = 0.75));
  connect(L65.p, bus5.p) annotation(
    Line(points = {{2, 83}, {2, 60}}, color = {0, 0, 255}, thickness = 0.75));
  connect(L89.n, bus9.p) annotation(
    Line(points = {{-102, 85}, {-102, 60}}, color = {0, 0, 255}, thickness = 0.75));
  connect(L76.n, bus6.p) annotation(
    Line(points = {{-7, 132}, {16, 132}}, color = {0, 0, 255}, thickness = 0.75));
  connect(bus7.p, L76.p) annotation(
    Line(points = {{-50, 132}, {-25, 132}}, color = {0, 0, 255}, thickness = 0.75));
  connect(Load7.p, bus7.p) annotation(
    Line(points = {{-50, 104}, {-50, 132}}, color = {0, 0, 255}, thickness = 0.75));
  connect(L87.n, bus7.p) annotation(
    Line(points = {{-75, 132}, {-50, 132}}, color = {0, 0, 255}, thickness = 0.75));
  connect(bus8.p, L87.p) annotation(
    Line(points = {{-112, 132}, {-93, 132}}, color = {0, 0, 255}, thickness = 0.75));
  connect(L89.p, bus8.p) annotation(
    Line(points = {{-102, 103}, {-102, 132}, {-112, 132}}, color = {0, 0, 255}, thickness = 0.75));
  connect(T2.n, bus8.p) annotation(
    Line(points = {{-121, 132}, {-112, 132}}, color = {0, 0, 255}, thickness = 0.75));
  connect(bus3.p, Gen3.p) annotation(
    Line(points = {{58, 132}, {76, 132}, {76, 134}, {74, 134}, {74, 132}}, color = {0, 0, 255}));
  connect(Gen2.p, bus2.p) annotation(
    Line(points = {{-170, 132}, {-152, 132}, {-152, 132}, {-154, 132}, {-154, 132}}, color = {0, 0, 255}));
  connect(Gen1.p, bus1.p) annotation(
    Line(points = {{-50, -62}, {-48, -62}, {-48, -46}, {-48, -46}}, color = {0, 0, 255}));
  protected
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {100, 200}})),
    uses(Modelica(version = "3.2.2"), OpenIPSL(version = "1.0.0")),
    experiment(StartTime = 0, StopTime = 150, Tolerance = 1e-06, Interval = 0.1),
    Icon(coordinateSystem(extent = {{-200, -100}, {100, 200}}, initialScale = 0.1)),
    version = "",
    __OpenModelica_commandLineOptions = "");
end NineBusBasicControlled;
