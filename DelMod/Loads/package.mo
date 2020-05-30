within DelMod;

package Loads
  model scaleLoad
    extends BaseClasses.baseLoadME;
    parameter Real alphap = 2.0 "Active power exponent";
    parameter Real alphaq = 2.0 "Reactive power exponent";
    Modelica.Blocks.Interfaces.RealInput scaling(start = 1) annotation(
      Placement(visible = true, transformation(origin = {-134, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-134, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  protected
    Real a "Auxiliary variable, voltage division";
  equation
    a = V / V_0;
    P = scaling * (P_0 / S_b) * a ^ alphap;
    Q = Q_0 / S_b * a ^ alphaq;
    annotation(
      Icon(coordinateSystem(preserveAspectRatio = false, initialScale = 0.1), graphics = {Line(points = {{-100, 100}, {100, 100}, {0, -100}, {-100, 100}}, color = {28, 108, 200})}),
      Documentation(info = "<html>
  <p>This is a modified load model developed at IEPG, TU Delft adapted from OpenIPSL.Electrical.Loads.PSAT.LOADPQ. This load model can be used to simulate load disconnections at time t = startTime.</p> 
  
  <p>For more information please refer to the documentation of OpenIPSL.PSAT load models.</p>
  
  </html>"));
  end scaleLoad;
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})));
end Loads;
