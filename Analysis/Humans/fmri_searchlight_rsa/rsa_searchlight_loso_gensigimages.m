function rsa_searchlight_loso_gensigimages(p_thresh)
  %
  % exports group-level z-, p- and thresholded tau-maps as nifti files
  % with one 3D file per model
  %
  % Timo Flesch, 2019
  % Human Information Processing Lab
  % University of Oxford

  params = rsa_searchlight_params();

  if ~exist('p_thresh')
    p_thresh = .05;
  end

  for subID = 1:length(params.num.goodSubjects)
      subj = params.num.goodSubjects(subID);
      load(fullfile(params.dir.outDir, ['betas_searchlight_LOSO_' params.names.modelset '_sub_' num2str(subj) '_masked_STATS.mat']));     
      
      for modID = 1:size(results.p,1)
        % store p-image
        fname = fullfile(params.dir.outDir,['betas_searchlight_LOSO_' params.names.modelset 'sub_' num2str(subj) '_p_mod' num2str(modID) '.nii']);
        fmri_io_mat2nifti(1-squeeze(results.p(modID,:,:,:)),fname,'1-p values for model correlations',16);
        % store z-image
        if strcmp(params.statinf.method,'signrank')
          fname = fullfile(params.dir.outDir,['betas_searchlight_LOSO_' params.names.modelset 'sub_' num2str(subj) '_z_mod' num2str(modID) '.nii']);
          fmri_io_mat2nifti(squeeze(results.z(modID,:,:,:)),fname,'z values for model correlations',16);
        elseif strcmp(params.statinf.method,'ttest')
          fname = fullfile(params.dir.outDir,['betas_searchlight_LOSO_' params.names.modelset 'sub_' num2str(subj) '_t_mod' num2str(modID) '.nii']);
          fmri_io_mat2nifti(squeeze(results.t(modID,:,:,:)),fname,'t values for model correlations',16);
        end  
      end

  end
end
