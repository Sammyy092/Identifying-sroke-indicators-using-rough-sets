score_files = [];
dec_table_files = [];
colorch_ranks_files = [];
ok_status = 1;
B=transpose(combfeature);
% combfeature here is our dataset including column 1 to 10
[IDX, Z] = rankfeatures(B, Group, 'Criterion', 'wilcoxon');
% group is the last column
  disp ('Skipping this mono-cluster image') ;
  disp('All channels extracted');
  TF = isinf(Z);
    if (isempty(find(TF==1)) == 0) % It is not empty = contains Inf
        ok_status = 0;
    end
    
    if (ok_status)
        score_files = cat(1,score_files,Z');
    end
    mv=score_files
    