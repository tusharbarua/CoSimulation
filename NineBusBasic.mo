model NineBusBasic
  basicGen gen1(D = 0, M = 47.28, P_0 = 71.64102147448229, Q_0 = 27.04592353349199, Sn = 100, T1d0 = 8.96, T1q0 = 0.310, V_0 = 1.04, V_b = 16.5, Vn = 16.5, angle_0 = 0, ra = 0, xd = 0.1460, x1d = 0.0608, xq = 0.0969, x1q = 0.0969) annotation(
    Placement(visible = true, transformation(origin = {-48, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
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
  basicGen gen2(D = 0, M = 12.8, P_0 = 163.00000000000000, Q_0 = 6.65366031842774, Sn = 100, T1d0 = 6, T1q0 = 0.5350, V_0 = 1.025, V_b = 18, Vn = 18, angle_0 = 9.280005481642810, ra = 0, x1d = 0.1198, x1q = 0.1969, xd = 0.8958, xq = 0.8645) annotation(
    Placement(visible = true, transformation(origin = {-176, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  basicGen gen3(D = 0, M = 6.02, P_0 = 85, Q_0 = -10.85970907098886, Sn = 100, T1d0 = 5.89, T1q0 = 0.6, V_0 = 1.025, V_b = 13.8, Vn = 13.8, angle_0 = 4.664751333136778, ra = 0, xd = 1.3125, x1d = 0.1813, xq = 1.2578, x1q = 0.25) annotation(
    Placement(visible = true, transformation(origin = {80, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
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
equation
  connect(step1.y, Load7.scaling) annotation(
    Line(points = {{-128, 82}, {-64, 82}, {-64, 94}, {-64, 94}}, color = {0, 0, 127}));
  connect(gen2.p, bus2.p) annotation(
    Line(points = {{-165, 132}, {-138, 132}, {-138, 128}, {-138.5, 128}, {-138.5, 132}, {-152, 132}}, color = {0, 0, 255}, thickness = 0.75));
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
  connect(gen1.p, bus1.p) annotation(
    Line(points = {{-48, -57}, {-48, -46}, {-49, -46}}, color = {0, 0, 255}, thickness = 0.75));
  connect(bus5.p, L54.n) annotation(
    Line(points = {{2, 60}, {2, 39}}, color = {0, 0, 255}, thickness = 0.75));
  connect(bus3.p, gen3.p) annotation(
    Line(points = {{58, 132}, {69, 132}}, color = {0, 0, 255}, thickness = 0.75));
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
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {100, 200}})),
    uses(Modelica(version = "3.2.2"), OpenIPSL(version = "1.0.0")),
    experiment(StartTime = 0, StopTime = 150, Tolerance = 1e-06, Interval = 0.1),
    Icon(coordinateSystem(extent = {{-200, -100}, {100, 200}}, initialScale = 0.1)),
    version = "",
    __OpenModelica_commandLineOptions = "");
end NineBusBasic;
