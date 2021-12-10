function contrasts = glm_3_signeddist_gencontrast()
%% glm_3_signeddist_gencontrast()
%
% specifies contrasts
%
% Timo Flesch, 2018
% Human Information Processing Lab
% Experimental Psychology Department
% University of Oxford

  if ~exist('monitor','var')
    monitor = 0;
  end

  params = glm_3_signeddist_params();
  contrasts = struct();

  % give the contrasts sensible names
  contrasts.T.labels = {'parametric signed distToBound - relevant','parametric signed distToBound - irrelevant'};
    % define the contrast vectors ( [repmat([CONDITIONS, MOTIONREGS],1,numRuns), RUNIDS] )
  contrasts.T.vectors(1,:) = helper_genContrastVector(3,2,[],params);
  contrasts.T.vectors(2,:) = helper_genContrastVector(3,3,[],params);

end
