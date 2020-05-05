function barlabel ( bararray , stringarray, textrotation = 0 )
%% barlabel.m: Version 1
%%
%% Use:
%%  barlabel ( BARARRAY , STRINGARRAY )
%%  barlabel ( BARARRAY , STRINGARRAY , TEXTROTATION )   
%%
%% This function is suited for labeling stacked bargraphs. The data will be 
%% given as a 2D array (bararray). Each row is stacked.
%% The labels are passed in a cell array of strings (stringarray). One can 
%% change the text orientation.
%%
%% bar(passed,'stacked','g');
%% barlabel(numb_arr,label_arr);
%%
%% For example arrays:
%%
%% numb_arr = [ 1,0;
%%              3,4];
%% label_arr= {'one','';
%%             'thr','4'};
%%
%% by Philipp Sikora

    for i = 1:size(bararray,1)
        yprev = 0;
        for j = 1:size(bararray,2);
            if bararray(i,j)~=0;
                ypos = yprev + bararray(i,j)/2;
                text(i,ypos,stringarray(i,j),'horizontalalignment','center','ROTATION',textrotation);
                yprev = sum( bararray(i,1:j) );
            end
        end
    end
end