within DelMod.AttackLibrary;
  model DataAvailabilityAttackTriggered "Hold the value of the input for dt seconds after trigger is set to True"
    Modelica.Blocks.Interfaces.RealInput u annotation(
      Placement(visible = true, transformation(origin = {-196, 14}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-88, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput y annotation(
      Placement(visible = true, transformation(origin = {212, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {116, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Real previousOutput;
    Modelica.Blocks.Interfaces.BooleanInput trigger(start = false) annotation(
      Placement(visible = true, transformation(origin = {-16, 152}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-4, 100}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    parameter Modelica.SIunits.Time dt = 2 "Hold the input value for ... s";
  protected
    discrete Modelica.SIunits.Time entryTime "Time instant when u became false";
  initial equation
    pre(entryTime) = 0;
    pre(y) = u;
  equation
    when trigger then
      entryTime = time;
      previousOutput = u;
    end when;
    if trigger and time - entryTime < dt then
      y = previousOutput;
    else
      y = u;
    end if;
    annotation(
      Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
      Icon(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}})}));
  end DataAvailabilityAttackTriggered;
