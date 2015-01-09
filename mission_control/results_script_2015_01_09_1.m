% simpler energy, big epsilon

[V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/horse_volume/horse_0.obj');
levels = 1000:1000:25000;
[cages_V,cages_F,~,~,~,timing] = ...
  multires_per_layer( ...
  V0,F0, ...
  levels, ...
  'QuadratureOrder',2, ...
  'ExpansionEnergy','displacement_initial', ...
  'FinalEnergy','volume', ...
  'BetaInit',1e-2, ...
  'Eps',1e-3);
write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/horse_dispinitial_volume_25_eps1e3/horse',cages_V,cages_F);
save('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/horse_dispinitial_volume_25_eps1e3/timing.mat','timing')
% Obs.: