% [V0,F0] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/animal_arap_final/animal_7.obj');
% levels = floor(2.^((-22:2:-2)/3)*size(F0,1));
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   levels, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','surface_arap', ...
%   'FinalEnergy','none', ...
%   'BetaInit',1e-2, ...
%   'EpsFinal',1e-3,...
%   'EpsExpansion',1e-3,...
%   'PartialPath','partial_05_29.mat');
% write_cages('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/animal_arap_final/animal_extra',cages_V,cages_F);
% save('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/animal_arap_final/timing_extra.mat','timing')
% % Obs.: Generated 3 new layers and then flow failed. I saved the 3 new
% % layers. For this example, linear system inside Eltopo was successfully
% % called and so was Etienne's code.

% [V0,F0] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/gargo_volumetric_arap/gargo_7.obj');
% levels = floor(2.^((-18:2:-2)/3)*size(F0,1));
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   levels, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','volumetric_arap', ...
%   'FinalEnergy','none', ...
%   'BetaInit',1e-2, ...
%   'EpsFinal',1e-3,...
%   'EpsExpansion',1e-3,...
%   'PartialPath','partial_05_29.mat');
% write_cages('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/gargo_volumetric_arap/gargo_extra',cages_V,cages_F);
% save('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/gargo_volumetric_arap/timing_extra.mat','timing')
% % Obs.: OK. Renamed and saved accordingly

% [V0,F0] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/hand_varap_final/hand_7.obj');
% levels = floor(2.^((-22:2:-2)/3)*size(F0,1));
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   levels, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','volumetric_arap', ...
%   'FinalEnergy','none', ...
%   'BetaInit',1e-2, ...
%   'EpsFinal',1e-3,...
%   'EpsExpansion',1e-3,...
%   'PartialPath','partial_05_29.mat');
% write_cages('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/hand_varap_final/hand_extra',cages_V,cages_F);
% save('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/hand_varap_final/timing_extra.mat','timing')
% % Obs.: It was taking too long (it was in third or 4th level). The point is
% % made with the Gargo, moving on.

% [V0,F0] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/models/ProgHulls/Model4_0.obj');
% [V_coarse{1},F_coarse{1}] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/models/ProgHulls/Model4_input_165.obj');
% [V_coarse{1},F_coarse{1}] = meshfix(V_coarse{1},F_coarse{1});
% [V_coarse{2},F_coarse{2}] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/models/ProgHulls/Model4_input_262.obj');
% [V_coarse{2},F_coarse{2}] = meshfix(V_coarse{2},F_coarse{2});
% [V_coarse{3},F_coarse{3}] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/models/ProgHulls/Model4_input_416.obj');
% [V_coarse{3},F_coarse{3}] = meshfix(V_coarse{3},F_coarse{3});
% [V_coarse{4},F_coarse{4}] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/models/ProgHulls/Model4_input_661.obj');
% [V_coarse{4},F_coarse{4}] = meshfix(V_coarse{4},F_coarse{4});
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   true, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','displacement_path', ...
%   'FinalEnergy','volume', ...
%   'BetaInit',1e-2, ...
%   'EpsExpansion',5e-4,...
%   'EpsFinal',2e-4,...
%   'V_coarse',V_coarse,'F_coarse',F_coarse,...
%   'PartialPath','partial_05_29.mat');
% write_cages('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/Model4_coarser_adaptive_volume_final/Model4_coarser_adaptive',cages_V,cages_F);
% save('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/Model4_coarser_adaptive_volume_final/extra_timing.mat','timing')
% % Obs.: Generated 2 layers then flow failed. Starting again with smoothing
% % and wioth the last cage generated

% [V0,F0] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/Model4_coarser_adaptive_volume_final/Model4_coarser_adaptive_2.obj');
% [V_coarse{1},F_coarse{1}] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/models/ProgHulls/Model4_coarser_adaptive_2_input_165.obj');
% [V_coarse{1},F_coarse{1}] = meshfix(V_coarse{1},F_coarse{1});
% [V_coarse{2},F_coarse{2}] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/models/ProgHulls/Model4_coarser_adaptive_2_input_262.obj');
% [V_coarse{2},F_coarse{2}] = meshfix(V_coarse{2},F_coarse{2});
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   true, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','displacement_path', ...
%   'FinalEnergy','volume', ...
%   'BetaInit',1e-2, ...
%   'EpsExpansion',5e-4,...
%   'EpsFinal',2e-4,...
%   'V_coarse',V_coarse,'F_coarse',F_coarse,...
%   'PartialPath','partial_05_29.mat');
% write_cages('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/Model4_coarser_adaptive_volume_final/Model4_coarser_adaptive_extra',cages_V,cages_F);
% save('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/Model4_coarser_adaptive_volume_final/extra_timing.mat','timing')

% [V0,F0] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/gargo_volumetric_arap/gargo_7.obj');
% levels = floor(2.^((-14:2:-2)/3)*size(F0,1));
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   levels, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','volumetric_arap_newton', ...
%   'FinalEnergy','none', ...
%   'BetaInit',1e-2, ...
%   'EpsFinal',1e-3,...
%   'EpsExpansion',1e-3,...
%   'PartialPath','partial_05_29.mat');
% write_cages('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/newton_vs_gradient/newton_gargo_volumetric_arap/gargo_extra',cages_V,cages_F);
% save('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/newton_vs_gradient/newton_gargo_volumetric_arap/timing_extra.mat','timing')
% % Obs.: 

% % Symmetry result - Swat
% [V0,F0] = readPLY('/home/leo/PHD_Work/Cage_Generation_2013/models/swat.ply');
% [V_cage0,F_cage0] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/models/swat-cage.obj');
% [V_cage0,F_cage0] = meshfix(V_cage0,F_cage0);
% V_cage0 = V_cage0-[0.46407*ones(size(V_cage0,1),1) zeros(size(V_cage0,1),1) zeros(size(V_cage0,1),1)];
% V0 = V0-[0.46407*ones(size(V0,1),1) zeros(size(V0,1),1) zeros(size(V0,1),1)];
% V_coarse{1} = V_cage0;
% F_coarse{1} = F_cage0;
% [cages_V,cages_F,~,~,~,timing] = ...
% multires_per_layer( ...
% V0,F0, ...
% [true], ...
% 'QuadratureOrder',3, ...
% 'ExpansionEnergy','symmetry_x', ...
% 'FinalEnergy','none', ...
% 'BetaInit',1e-2, ...
% 'EpsExpansion',1e-3,...
% 'EpsFinal',1e-3,...
% 'V_coarse',V_coarse,'F_coarse',F_coarse,...
% 'StepBackEvery',10,...
% 'StepSize',5e-3);
% write_cages('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/swat_symmetry_faster/swat',cages_V,cages_F);
% save('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/swat_symmetry_faster/timing.mat','timing');
% % Obs.: Individual impulses didnt resolve collisions. Entering linear system.
% % Cut time step. Now curr_dt = 0.0625
% % failed.
% % ElTopo could not handle it, switching to velocityfilter
% % Checking 8578 vertex-face and 13425 edge-edge stencils
% % simulation_status = -1 
% % Error using one_step_project (line 184)
% % Assertion failed.

[V0,F0] = load_mesh('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/animal_arap_final/animal_7.obj');
levels = floor(2.^((-14:2:-2)/3)*size(F0,1));
[cages_V,cages_F,~,~,~,timing] = ...
  multires_per_layer( ...
  V0,F0, ...
  levels, ...
  'QuadratureOrder',2, ...
  'ExpansionEnergy','surface_arap', ...
  'FinalEnergy','none', ...
  'BetaInit',1e-2, ...
  'EpsFinal',1e-3,...
  'EpsExpansion',1e-3,...
  'PartialPath','partial_05_29.mat');
write_cages('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/newton_vs_gradient/newton_animal_arap/animal',cages_V,cages_F);
save('/home/leo/PHD_Work/Cage_Generation_2013/nested_cages/Meshes/Results/newton_vs_gradient/newton_animal_arap/timing.mat','timing')
% Obs.: 