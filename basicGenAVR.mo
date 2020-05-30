model basicGenAVR
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
  OpenIPSL.Electrical.Controls.PSAT.AVR.AVRTypeII aVRTypeII(Ka = Ka, Ke = Ke, Kf = Kf, Ta = Ta, Te = Te, Tf = Tf, Tr = Tr, v0 = V_0, vrmax = vrmax, vrmin = vrmin)  annotation(
    Placement(visible = true, transformation(origin = {-116, -14}, extent = {{-38, -34}, {38, 34}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = vref0)  annotation(
    Placement(visible = true, transformation(origin = {-219, 73}, extent = {{-27, -27}, {27, 27}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const2(k = vf0)  annotation(
    Placement(visible = true, transformation(origin = {-224, -54}, extent = {{-30, -30}, {30, 30}}, rotation = 0)));

parameter Real vf0=1.122656195484139 "Initial field voltage"
annotation (Dialog(group="AVR parameters"));
parameter Real vref0=1.065622531687790 "Reference voltage
AVR" annotation (Dialog(group="AVR parameters"));
parameter Real Ta=0.02 annotation (Dialog(group="AVR
parameters"));
parameter Real Kf=0.002 annotation (Dialog(group="AVR
parameters"));
parameter Real Tf=1 annotation (Dialog(group="AVR
parameters"));
parameter Real Ke=1 annotation (Dialog(group="AVR
parameters"));
parameter Real Te=0.2 annotation (Dialog(group="AVR
parameters"));
parameter Real Tr=0.001 annotation (Dialog(group="AVR
parameters"));
parameter Real vrmax=7.32 annotation (Dialog(group="AVR
parameters"));
parameter Real vrmin=0 annotation (Dialog(group="AVR
parameters"));
parameter Real Ka=200 annotation (Dialog(group="AVR
parameters"));
equation
  connect(gen.p, p) annotation(
    Line(points = {{84, -8}, {194, -8}, {194, -14}, {194, -14}}, color = {0, 0, 255}));
  connect(const1.y, aVRTypeII.vref) annotation(
    Line(points = {{-190, 74}, {-170, 74}, {-170, 4}, {-162, 4}, {-162, 6}}, color = {0, 0, 127}));
  connect(const2.y, aVRTypeII.vf0) annotation(
    Line(points = {{-190, -54}, {-186, -54}, {-186, -84}, {-116, -84}, {-116, -58}, {-116, -58}, {-116, -54}}, color = {0, 0, 127}));
  connect(aVRTypeII.vf, gen.vf) annotation(
    Line(points = {{-70, -14}, {-42, -14}, {-42, 8}, {-14, 8}, {-14, 10}, {-8, 10}}, color = {0, 0, 127}));
  connect(gen.v, aVRTypeII.v) annotation(
    Line(points = {{84, 2}, {128, 2}, {128, 134}, {-270, 134}, {-270, 0}, {-182, 0}, {-182, -38}, {-168, -38}, {-168, -34}, {-162, -34}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    uses(OpenIPSL(version = "1.0.0"), Modelica(version = "3.2.3")),
    Icon(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, endAngle = 360), Text(origin = {12, -6}, lineColor = {109, 0, 0}, extent = {{-68, 90}, {64, -76}}, textString = "G_AVR")}, coordinateSystem(initialScale = 0.1)));
end basicGenAVR;
