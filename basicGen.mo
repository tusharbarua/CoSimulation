model basicGen
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
  import Modelica.Constants.pi;
  OpenIPSL.Electrical.Machines.PSAT.Order4 gen(D = D, M = M, P_0 = P_0, Q_0 = Q_0, Sn = Sn, T1d0 = T1d0, T1q0 = T1q0, V_0 = V_0, V_b = V_b, Vn = Vn, angle_0 = angle_0, ra = ra, xd = xd, x1d = x1d, xq = xq, x1q = x1q) annotation(
    Placement(visible = true, transformation(origin = {40, -9}, extent = {{-40, -39}, {40, 39}}, rotation = 0)));
  OpenIPSL.Interfaces.PwPin p annotation(
    Placement(visible = true, transformation(origin = {194, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(gen.pm, gen.pm0) annotation(
    Line(points = {{4, -22}, {-26, -22}, {-26, -66}, {8, -66}, {8, -52}, {8, -52}}, color = {0, 0, 127}));
  connect(gen.vf0, gen.vf) annotation(
    Line(points = {{8, 34}, {8, 34}, {8, 52}, {-22, 52}, {-22, 8}, {4, 8}, {4, 10}}, color = {0, 0, 127}));
  connect(gen.p, p) annotation(
    Line(points = {{84, -8}, {194, -8}, {194, -14}, {194, -14}}, color = {0, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    uses(OpenIPSL(version = "1.0.0")),
  Icon(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, endAngle = 360), Text(origin = {4, 2}, extent = {{-66, 26}, {66, -26}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)));
end basicGen;
