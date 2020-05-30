model Gen
  OpenIPSL.Electrical.Machines.PSAT.Order4 Syn(D = D, M = M, Sn = Sn, T1d0 = T1d0, T1q0 = T1q0, Vn = Vn, ra = ra, x1d = x1d, x1q = x1q, xd = xd, xq = xq)  annotation(
    Placement(visible = true, transformation(origin = {-30, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
extends OpenIPSL.Electrical.Essentials.pfComponent;
parameter Real D = 0 annotation (Dialog(group="Machine parameters"));
parameter Real M = 12.8 annotation (Dialog(group="Machine parameters"));
parameter Real Sn = 100 annotation (Dialog(group="Machine parameters"));
parameter Real T1d0 = 6 annotation (Dialog(group="Machine parameters"));
parameter Real T1q0 = 0.5350 annotation (Dialog(group="Machine parameters"));
parameter Real Vn = 18 annotation (Dialog(group="Machine parameters"));
parameter Real ra = 0 annotation (Dialog(group="Machine parameters"));
parameter Real xd = 0.8958 annotation (Dialog(group="Machine parameters"));
parameter Real x1d = 0.1198 annotation (Dialog(group="Machine parameters"));
parameter Real xq = 0.8645 annotation (Dialog(group="Machine parameters"));
parameter Real x1q = 0.1969 annotation (Dialog(group="Machine parameters"));
  OpenIPSL.Interfaces.PwPin p annotation(
    Placement(visible = true, transformation(origin = {3, 13}, extent = {{-7, -7}, {7, 7}}, rotation = 0), iconTransformation(origin = {75, -1}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
equation
  connect(Syn.p, p) annotation(
    Line(points = {{-20, 14}, {2, 14}, {2, 14}, {8, 14}}, color = {0, 0, 255}));
  connect(Syn.vf0, Syn.vf) annotation(
    Line(points = {{-38, 26}, {-38, 26}, {-38, 30}, {-46, 30}, {-46, 20}, {-42, 20}, {-42, 20}}, color = {0, 0, 127}));
  connect(Syn.pm0, Syn.pm) annotation(
    Line(points = {{-38, 2}, {-38, 2}, {-38, 0}, {-46, 0}, {-46, 8}, {-42, 8}, {-42, 8}}, color = {0, 0, 127}));
  connect(Syn.p, p) annotation(
    Line(points = {{-20, 14}, {-2, 14}, {-2, 14}, {4, 14}}, color = {0, 0, 255}));

annotation(
    uses(OpenIPSL(version = "2.0.0-dev")),
    Icon(graphics = {Ellipse(origin = {-5, 5}, lineColor = {120, 42, 28}, extent = {{-75, 91}, {87, -97}}, endAngle = 360), Text(origin = {-36, -55}, extent = {{-8, -5}, {70, 119}}, textString = "G")}, coordinateSystem(initialScale = 0.1)));
end Gen;
