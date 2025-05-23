function VehSpdRef_loadSimulationCase_Constant(nvpairs)
%% Sets up simulation
% Model must be loaded for this function to work.

% Copyright 2023 The MathWorks, Inc.

arguments
  nvpairs.ModelName {mustBeTextScalar} = "VehSpdRef_harness_model"
  nvpairs.TargetSubsystemPath {mustBeTextScalar} = "/Vehicle speed reference"
  nvpairs.DisplayMessage (1,1) logical = true
end

VehSpdRef_loadSimulationCase( ...
  CaseName = "Constant", ...
  CaseNumber = 5, ...
  StopTime = 1000, ...
  ...
  ModelName = nvpairs.ModelName, ...
  TargetSubsystemPath = nvpairs.TargetSubsystemPath, ...
  DisplayMessage = nvpairs.DisplayMessage )

end  % function