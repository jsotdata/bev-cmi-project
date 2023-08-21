%% High Voltage Battery - Test Suite
% Run MQC tests with Tabled-Based Battery.

% Copyright 2023 The Mathworks, Inc.

TopFolder = currentProject().RootFolder;

suite = matlab.unittest.TestSuite.fromFile( ...
  fullfile(TopFolder, "Components", "BatteryHighVoltage", "Test", "BatteryHV_UnitTest_MQC.m"));

selectedTests = selectIf(suite, ParameterName = "@BatteryHV_useRefsub_System");

disp("Running these tests:")
names = string({selectedTests.Name}');
disp(names)

run(selectedTests)
