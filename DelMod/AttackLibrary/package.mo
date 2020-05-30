within DelMod;

package AttackLibrary
  model FalseDataInjection "Injects False Data as a step input at time t1"
  Modelica.Blocks.Interfaces.RealInput u annotation(
      Placement(visible = true, transformation(origin = {-196, 14}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-88, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput y annotation(
      Placement(visible = true, transformation(origin = {212, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {116, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Real height = 10;
    parameter Real t1 = 100;
    Modelica.Blocks.Sources.Step step2(height = height, startTime = t1) annotation(
      Placement(visible = true, transformation(origin = {-152, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add2 annotation(
      Placement(visible = true, transformation(origin = {-64, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(add2.y, y) annotation(
      Line(points = {{-52, 50}, {88, 50}, {88, 10}, {212, 10}, {212, 10}}, color = {0, 0, 127}));
    connect(u, add2.u2) annotation(
      Line(points = {{-196, 14}, {-112, 14}, {-112, 44}, {-76, 44}, {-76, 44}}, color = {0, 0, 127}));
    connect(step2.y, add2.u1) annotation(
      Line(points = {{-140, 86}, {-132, 86}, {-132, 56}, {-76, 56}, {-76, 56}}, color = {0, 0, 127}));
    annotation(
      Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
      Icon(graphics = {Rectangle(lineColor = {0, 0, 255}, lineThickness = 0.75, extent = {{-100, 100}, {100, -100}}), Text(origin = {3, 67}, extent = {{-63, 17}, {63, -17}}, textString = "FDI Attack")}));
  end FalseDataInjection;



  model DataAvailabilityAttackTimed "Hold the value at t1, till t2"
    Modelica.Blocks.Interfaces.RealInput u annotation(
      Placement(visible = true, transformation(origin = {-196, 14}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-88, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput y annotation(
      Placement(visible = true, transformation(origin = {212, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {116, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Real t1 = 10;
    parameter Real t2 = 10;
    Real previousOutput;
  equation
    if time > t1 and time < t2 then
      y = previousOutput;
    else
      previousOutput = u;
      y = u;
    end if;
    annotation(
      Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
      uses(Modelica(version = "3.2.2")),
      Icon(graphics = {Rectangle(lineColor = {255, 0, 0}, lineThickness = 0.75, extent = {{-100, 100}, {100, -100}}), Text(origin = {1, 58}, extent = {{-61, 26}, {61, -26}}, textString = "DoS Attack")}, coordinateSystem(initialScale = 0.1)));
  end DataAvailabilityAttackTimed;
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})));
end AttackLibrary;
