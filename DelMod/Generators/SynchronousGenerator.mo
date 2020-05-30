within DelMod.Generators;
  model SynchronousGenerator
    import Modelica.Constants.pi;
    extends DelMod.BaseClasses.baseMachine(delta(start = delta0), pe(start = pm00), pm(start = pm00), pm0(start = pm00), vf(start = vf00), vf0(start = vf00), vq(start = vq0), vd(start = vd0), iq(start = iq0), id(start = id0));
    parameter Real xd = 1.9 "d-axis synchronous reactance (pu)" annotation(
      Dialog(group = "Machine parameters"));
    parameter Real xq = 1.7 "q-axis synchronous reactance (pu)" annotation(
      Dialog(group = "Machine parameters"));
    parameter Real xq1 = 0.5 "q-axis transient reactance (pu)" annotation(
      Dialog(group = "Machine parameters"));
    parameter Real Td10 = 8 "d-axis open circuit transient time constant (s)" annotation(
      Dialog(group = "Machine parameters"));
    parameter Real Tq10 = 0.8 "q-axis open circuit transient time constant (s)" annotation(
      Dialog(group = "Machine parameters"));
    Real e1q(start = e1q0) "q-axis transient voltage (pu)";
    Real e1d(start = e1d0) "d-axis transient voltage (pu)";
  protected
    parameter Real Xd = xd * CoB "d-axis reactance, p.u.";
    parameter Real Xq = xq * CoB "q-axis reactance, p.u.";
    parameter Real x1q = xq1 * CoB "q-axis transient reactance, p.u.(only for order IV,V.1,VI,VIII)*";
    parameter Real vd0 = vr0 * cos(pi / 2 - delta0) - vi0 * sin(pi / 2 - delta0) "Initialitation";
    parameter Real vq0 = vr0 * sin(pi / 2 - delta0) + vi0 * cos(pi / 2 - delta0) "Initialitation";
    parameter Real id0 = ir0 * cos(pi / 2 - delta0) - ii0 * sin(pi / 2 - delta0) "Initialitation";
    parameter Real iq0 = ir0 * sin(pi / 2 - delta0) + ii0 * cos(pi / 2 - delta0) "Initialitation";
    parameter Real delta0 = atan2(vi0 + Ra * ii0 + Xq * ir0, vr0 + Ra * ir0 - Xq * ii0) "Initialitation";
    parameter Real pm00 = (vq0 + Ra * iq0) * iq0 + (vd0 + Ra * id0) * id0 "Initialitation";
    parameter Real vf00 = e1q0 + (Xd - x1d) * id0 "Initialitation";
    parameter Real e1q0 = vq0 + Ra * iq0 + x1d * id0 "Initialitation";
    parameter Real e1d0 = vd0 + Ra * id0 - x1q * iq0 "Initialitation *";
  equation
    der(e1q) = ((-e1q) - (Xd - x1d) * id + vf) / Td10;
    der(e1d) = ((-e1d) + (Xq - x1q) * iq) / Tq10 "differential equations *";
    e1q = vq + Ra * iq + x1d * id;
    e1d = vd + Ra * id - x1q * iq "relation between voltages and currents *";
    pm0 = pm00;
    vf0 = vf00;
    annotation(
      Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {10, 10}), graphics = {Text(origin = {4, 61.9022}, fillPattern = FillPattern.Solid, extent = {{-57.2101, -15.0}, {57.2101, 15.0}}, fontName = "Arial", lineColor = {28, 108, 200}, textString = "Order IV")}),
      Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})),
      Documentation(info = "<html>
  <p>This is a modified generator model developed at IEPG, TU Delft adapted from OpenIPSL.Electrical.Machines.PSAT.Order4. This generator model can be used to simulate generator outage events at time t = outageTime for a duration of <i>duration</i>.</p> 
  
  <p>For more information please refer to the documentation of PSAT load models.</p>
  </html>
  "));
  end SynchronousGenerator;
