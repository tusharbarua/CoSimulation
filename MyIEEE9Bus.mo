model NewIEEE9Bus
  Gen gen2(P_0 = 163, V_b = 18000, angle_0 = 9.28000548164280, v_0 = 1.025)  annotation(
    Placement(visible = true, transformation(origin = {-90, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Gen gen3 annotation(
    Placement(visible = true, transformation(origin = {90, 60}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  Gen gen1 annotation(
    Placement(visible = true, transformation(origin = {0, -76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus bus annotation(
    Placement(visible = true, transformation(origin = {-64, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus bus1 annotation(
    Placement(visible = true, transformation(origin = {-32, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus bus2 annotation(
    Placement(visible = true, transformation(origin = {2, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus bus3 annotation(
    Placement(visible = true, transformation(origin = {46, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus bus4 annotation(
    Placement(visible = true, transformation(origin = {66,60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus bus5 annotation(
    Placement(visible = true, transformation(origin = {-46, 8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Buses.Bus bus6 annotation(
    Placement(visible = true, transformation(origin = {58, 6}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Buses.Bus bus7 annotation(
    Placement(visible = true, transformation(origin = {0, -52}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Buses.Bus bus8 annotation(
    Placement(visible = true, transformation(origin = {0, -24}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant voltDependant annotation(
    Placement(visible = true, transformation(origin = {-82, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant voltDependant1 annotation(
    Placement(visible = true, transformation(origin = {86, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant voltDependant2 annotation(
    Placement(visible = true, transformation(origin = {2, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Branches.PSAT.TwoWindingTransformer twoWindingTransformer annotation(
    Placement(visible = true, transformation(origin = {-48, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Branches.PSAT.TwoWindingTransformer twoWindingTransformer1 annotation(
    Placement(visible = true, transformation(origin = {56, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Branches.PSAT.TwoWindingTransformer twoWindingTransformer2 annotation(
    Placement(visible = true, transformation(origin = {0, -40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  inner OpenIPSL.Electrical.SystemBase sysData annotation(
    Placement(visible = true, transformation(origin = {-84, 88}, extent = {{-12, -10}, {12, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Branches.PwLine Line12 annotation(
    Placement(visible = true, transformation(origin = {-14, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Branches.PwLine Line23 annotation(
    Placement(visible = true, transformation(origin = {22, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Branches.PwLine Line15 annotation(
    Placement(visible = true, transformation(origin = {-46, 28}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Branches.PwLine Line36 annotation(
    Placement(visible = true, transformation(origin = {60, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Branches.PwLine Line58 annotation(
    Placement(visible = true, transformation(origin = {-46, -12}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  OpenIPSL.Electrical.Branches.PwLine Line68 annotation(
    Placement(visible = true, transformation(origin = {60, -12}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(twoWindingTransformer2.p, bus8.p) annotation(
    Line(points = {{0, -28}, {0, -28}, {0, -24}, {0, -24}}, color = {0, 0, 255}));
  connect(voltDependant.p, bus5.p) annotation(
    Line(points = {{-82, -4}, {-80, -4}, {-80, 8}, {-46, 8}, {-46, 8}}, color = {0, 0, 255}));
  connect(voltDependant1.p, bus6.p) annotation(
    Line(points = {{86, -10}, {86, -10}, {86, 6}, {58, 6}, {58, 6}}, color = {0, 0, 255}));
  connect(twoWindingTransformer.n, bus1.p) annotation(
    Line(points = {{-36, 60}, {-32, 60}, {-32, 60}, {-32, 60}}, color = {0, 0, 255}));
  connect(bus.p, twoWindingTransformer.p) annotation(
    Line(points = {{-64, 60}, {-60, 60}, {-60, 60}, {-60, 60}}, color = {0, 0, 255}));
  connect(voltDependant2.p, bus2.p) annotation(
    Line(points = {{2, 38}, {2, 38}, {2, 60}, {2, 60}, {2, 60}}, color = {0, 0, 255}));
  connect(bus.p, gen2.p) annotation(
    Line(points = {{-64, 60}, {-82, 60}, {-82, 60}, {-82, 60}}, color = {0, 0, 255}));
  connect(twoWindingTransformer1.n, gen3.p) annotation(
    Line(points = {{68, 60}, {82, 60}, {82, 60}, {82, 60}}, color = {0, 0, 255}));
  connect(twoWindingTransformer2.n, gen1.p) annotation(
    Line(points = {{0, -50}, {0, -50}, {0, -60}, {8, -60}, {8, -76}, {8, -76}}, color = {0, 0, 255}));
  connect(bus1.p, Line12.p) annotation(
    Line(points = {{-32, 60}, {-20, 60}, {-20, 60}, {-24, 60}, {-24, 60}}, color = {0, 0, 255}));
  connect(Line12.n, bus2.p) annotation(
    Line(points = {{-4, 60}, {2, 60}, {2, 60}, {2, 60}}, color = {0, 0, 255}));
  connect(bus2.p, Line23.p) annotation(
    Line(points = {{2, 60}, {14, 60}, {14, 60}, {12, 60}}, color = {0, 0, 255}));
  connect(Line23.n, bus3.p) annotation(
    Line(points = {{32, 60}, {46, 60}, {46, 60}, {46, 60}}, color = {0, 0, 255}));
  connect(Line36.p, twoWindingTransformer1.n) annotation(
    Line(points = {{60, 40}, {66, 40}, {66, 60}, {68, 60}}, color = {0, 0, 255}));
  connect(Line36.n, bus6.p) annotation(
    Line(points = {{60, 20}, {58, 20}, {58, 6}, {58, 6}}, color = {0, 0, 255}));
  connect(bus6.p, Line68.p) annotation(
    Line(points = {{58, 6}, {60, 6}, {60, -2}, {60, -2}}, color = {0, 0, 255}));
  connect(Line15.n, bus5.p) annotation(
    Line(points = {{-46, 18}, {-46, 18}, {-46, 8}, {-46, 8}, {-46, 8}}, color = {0, 0, 255}));
  connect(bus5.p, Line58.p) annotation(
    Line(points = {{-46, 8}, {-46, 8}, {-46, -2}, {-46, -2}}, color = {0, 0, 255}));
  connect(Line15.p, bus1.p) annotation(
    Line(points = {{-46, 38}, {-32, 38}, {-32, 60}, {-32, 60}}, color = {0, 0, 255}));
  connect(Line58.n, bus8.p) annotation(
    Line(points = {{-46, -22}, {0, -22}, {0, -24}, {0, -24}}, color = {0, 0, 255}));
  connect(bus8.p, Line68.n) annotation(
    Line(points = {{0, -24}, {60, -24}, {60, -22}, {60, -22}}, color = {0, 0, 255}));
  annotation(
    uses(OpenIPSL(version = "2.0.0-dev")));
end NewIEEE9Bus;
