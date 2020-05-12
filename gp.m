%% new data
clear all;
addpath('/Users/cmishra/Projects/BaryonsFromMesons/GPML/working codes')
%gpml_randn(0.3, 5, 1)
%digitsOld=digits(40);
% 196 mesons; 43 baryons;
mesonmasses=[4.938570638077743;4.938570638077743;4.905104393553379;6.306023430417303;6.214608098422191;6.653198456962184;6.653198456962184;6.653198456962184;6.662685597334232;6.864618106504443;6.887552571664617;6.927029335236704;7.064759027791802;7.1143628616562475;7.1143628616562475;7.1143628616562475;7.114769448366463;7.114769448366463;7.114769448366463;7.1510935375818665;7.156098631318089;7.165493475060845;7.170119543449628;7.170119543449628;7.170119543449628;7.184098306763924;7.184098306763924;7.184098306763924;7.222566018822171;7.21081845347222;7.21081845347222;7.21081845347222;7.250493557181996;7.255591274253665;7.262838957529376;7.258412150595307;7.295735072749282;7.289610521451167;7.289610521451167;7.297091005160418;7.315883504509785;7.329749689041512;7.415776975415394;7.415776975415394;7.415776975415394;7.411556287811163;7.411556287811163;7.411556287811163;7.388327859577107;7.4205789054108005;7.418780882750794;7.420938122321806;7.420938122321806;7.420938122321806;7.426549072397305;7.4317734965341105;7.4317734965341105;7.4317734965341105;7.450079569807499;7.450079569807499;7.450079569807499;7.4413203897176174;7.4413203897176174;7.4413203897176174;7.45182223652793;7.502186486602924;7.502186486602924;7.502186486602924;7.5251007461258;7.518607216815252;7.546974117516527;7.59337419312129;7.59337419312129;7.572502985020384;7.598399329323964;7.598399329323964;7.598399329323964;7.606387389772652;7.609862200913554;7.739359202689098;7.76004068088038;6.2018814571834575;6.2018814571834575;6.209818647289958;6.209818647289958;6.209818647289958;6.714170529909472;6.714170529909472;6.714170529909472;6.797438054671267;6.793084893998533;6.793084893998533;7.148345743900068;7.148345743900068;7.148345743900068;7.246368080102461;7.246368080102461;7.246368080102461;7.259116128097101;7.259116128097101;7.259116128097101;7.261927092702751;7.261927092702751;7.261927092702751;7.267106638124278;7.262348056716545;7.262348056716545;7.4489161025442;7.4489161025442;7.4489161025442;7.480428306074208;7.480428306074208;7.480428306074208;7.4821189235521155;7.4821189235521155;7.4821189235521155;7.506042178518122;7.506042178518122;7.506042178518122;7.623153068476902;7.623153068476902;7.623153068476902;7.533506526555532;7.533506526555532;7.530925175108232;7.604321607587738;7.606019345921544;7.606019345921544;7.748460023899697;7.7918533430340915;7.808201141294455;7.810109345117419;7.810109345117419;7.584945826917821;7.584945826917821;7.655485337312374;7.655485337312374;7.837992307588787;7.837992307588787;7.851310922004305;7.851310922004305;7.904076410761781;7.904076410761781;8.571554474709195;8.571554474709195;8.57161319255764;8.580102260717936;8.580102260717936;8.580102260717936;8.652755021307167;8.652755021307167;8.652789949703957;8.652755021307167;8.652755021307167;8.652789949703957;8.654726565420058;8.654726565420058;8.65512737750555;8.588002013067168;8.670537260306057;8.672460390560902;8.597002025589653;8.000986448697766;8.038156890139653;8.135847848926113;8.163562181434916;8.167743510854653;8.176439402015284;8.199051911479748;8.212323453672989;8.235660174711317;8.24858145205488;8.273438686197903;8.275681982743842;8.303752415563412;8.330092231448956;8.340694647925071;8.360305435879093;8.394121193826242;9.148326660821722;9.154859374016667;9.196184650851931;9.199560477129934;9.200219326552112;9.201522609525227;9.212663671025647;9.226577828065844;9.233324208366557;9.235565525668196;9.236850843454533;9.245244087984064;9.260405912982904;9.261413642160184;9.266663993029127;9.295591033148389;9.30500488883959];
mesoninputs=[[1,0,0,1,0,0,0,0,0,0,1,0,-1];[0,1,1,0,0,0,0,0,0,0,1,0,-1];[1,1,0,0,0,0,0,0,0,0,1,0,-1];[0,0,1,1,0,0,0,0,0,0,0,0,-1];[0,0,1,1,0,0,0,0,0,0,0,0,1];[1,0,0,1,0,0,0,0,0,0,1,1,-1];[0,1,1,0,0,0,0,0,0,0,1,1,-1];[1,1,0,0,0,0,0,0,0,0,1,1,-1];[0,0,1,1,0,0,0,0,0,0,0,1,-1];[0,0,0,0,1,1,0,0,0,0,0,0,-1];[0,1,1,0,0,0,0,0,0,0,1,0,1];[0,0,0,0,1,1,0,0,0,0,0,1,-1];[0,0,1,1,0,0,0,0,0,0,0,1,1];[1,1,0,0,0,0,0,0,0,0,1,1,1];[1,0,0,1,0,0,0,0,0,0,1,1,1];[0,1,1,0,0,0,0,0,0,0,1,1,1];[1,1,0,0,0,0,0,0,0,0,1,1,1];[1,0,0,1,0,0,0,0,0,0,1,1,1];[0,1,1,0,0,0,0,0,0,0,1,1,1];[0,0,1,1,0,0,0,0,0,0,0,2,1];[0,0,1,1,0,0,0,0,0,0,0,1,1];[0,0,1,1,0,0,0,0,0,0,0,0,-1];[1,1,0,0,0,0,0,0,0,0,1,0,-1];[1,0,0,1,0,0,0,0,0,0,1,0,-1];[0,1,1,0,0,0,0,0,0,0,1,0,-1];[1,1,0,0,0,0,0,0,0,0,1,2,1];[1,0,0,1,0,0,0,0,0,0,1,2,1];[0,1,1,0,0,0,0,0,0,0,1,2,1];[0,0,1,1,0,0,0,0,0,0,0,0,1];[1,1,0,0,0,0,0,0,0,0,1,1,-1];[1,0,0,1,0,0,0,0,0,0,1,1,-1];[0,1,1,0,0,0,0,0,0,0,1,1,-1];[0,0,1,1,0,0,0,0,0,0,0,0,-1];[0,0,0,0,1,1,0,0,0,0,0,1,1];[0,0,0,0,1,1,0,0,0,0,0,1,1];[0,0,1,1,0,0,0,0,0,0,0,1,-1];[1,1,0,0,0,0,0,0,0,0,1,1,1];[1,0,0,1,0,0,0,0,0,0,1,1,-1];[0,1,1,0,0,0,0,0,0,0,1,1,-1];[0,0,0,0,1,1,0,0,0,0,0,0,-1];[0,0,1,1,0,0,0,0,0,0,0,0,1];[0,0,0,0,1,1,0,0,0,0,0,2,1];[1,1,0,0,0,0,0,0,0,0,1,1,-1];[1,0,0,1,0,0,0,0,0,0,1,1,-1];[0,1,1,0,0,0,0,0,0,0,1,1,-1];[1,1,0,0,0,0,0,0,0,0,1,1,1];[1,0,0,1,0,0,0,0,0,0,1,1,1];[0,1,1,0,0,0,0,0,0,0,1,1,1];[0,0,1,1,0,0,0,0,0,0,0,2,-1];[0,0,1,1,0,0,0,0,0,0,0,1,-1];[0,0,1,1,0,0,0,0,0,0,0,3,-1];[1,1,0,0,0,0,0,0,0,0,1,2,-1];[1,0,0,1,0,0,0,0,0,0,1,2,-1];[0,1,1,0,0,0,0,0,0,0,1,2,-1];[0,0,0,0,1,1,0,0,0,0,0,1,-1];[1,1,0,0,0,0,0,0,0,0,1,3,-1];[1,0,0,1,0,0,0,0,0,0,1,3,-1];[0,1,1,0,0,0,0,0,0,0,1,3,-1];[1,1,0,0,0,0,0,0,0,0,1,1,-1];[1,0,0,1,0,0,0,0,0,0,1,1,-1];[0,1,1,0,0,0,0,0,0,0,1,1,-1];[1,1,0,0,0,0,0,0,0,0,1,2,1];[1,0,0,1,0,0,0,0,0,0,1,2,1];[0,1,1,0,0,0,0,0,0,0,1,2,1];[0,0,0,0,1,1,0,0,0,0,0,0,1];[1,1,0,0,0,0,0,0,0,0,1,0,-1];[1,0,0,1,0,0,0,0,0,0,1,0,-1];[0,1,1,0,0,0,0,0,0,0,1,0,-1];[0,0,0,0,1,1,0,0,0,0,0,3,-1];[0,0,0,0,1,1,0,0,0,0,0,2,-1];[1,1,0,0,0,0,0,0,0,0,1,2,-1];[1,0,0,1,0,0,0,0,0,0,1,2,-1];[0,1,1,0,0,0,0,0,0,0,1,2,-1];[0,0,1,1,0,0,0,0,0,0,0,2,1];[1,1,0,0,0,0,0,0,0,0,1,4,1];[1,0,0,1,0,0,0,0,0,0,1,4,1];[0,1,1,0,0,0,0,0,0,0,1,4,1];[0,0,1,1,0,0,0,0,0,0,0,2,1];[0,0,1,1,0,0,0,0,0,0,0,4,1];[0,0,1,1,0,0,0,0,0,0,0,2,1];[0,0,1,1,0,0,0,0,0,0,0,2,1];[0,0,1,0,0,1,0,0,0,0,1/2,0,-1];[0,0,0,1,1,0,0,0,0,0,1/2,0,-1];[0,1,0,0,1,0,0,0,0,0,1/2,0,-1];[0,1,0,0,1,0,0,0,0,0,1/2,0,-1];[1,0,0,0,0,1,0,0,0,0,1/2,0,-1];[0,1,0,0,1,0,0,0,0,0,1/2,0,1];[0,0,1,0,0,1,0,0,0,0,1/2,0,1];[0,0,0,1,1,0,0,0,0,0,1/2,0,1];[0,1,0,0,1,0,0,0,0,0,1/2,1,-1];[0,0,1,0,0,1,0,0,0,0,1/2,1,-1];[0,0,0,1,1,0,0,0,0,0,1/2,1,-1];[0,1,0,0,1,0,0,0,0,0,1/2,1,1];[0,0,1,0,0,1,0,0,0,0,1/2,1,1];[0,0,0,1,1,0,0,0,0,0,1/2,1,1];[0,1,0,0,1,0,0,0,0,0,1/2,1,1];[0,0,1,0,0,1,0,0,0,0,1/2,1,1];[0,0,0,1,1,0,0,0,0,0,1/2,1,1];[0,1,0,0,1,0,0,0,0,0,1/2,1,-1];[0,0,1,0,0,1,0,0,0,0,1/2,1,-1];[0,0,0,1,1,0,0,0,0,0,1/2,1,-1];[0,1,0,0,1,0,0,0,0,0,1/2,0,1];[0,0,1,0,0,1,0,0,0,0,1/2,0,1];[0,0,0,1,1,0,0,0,0,0,1/2,0,1];[0,1,0,0,1,0,0,0,0,0,1/2,2,1];[0,0,1,0,0,1,0,0,0,0,1/2,2,1];[0,0,0,1,1,0,0,0,0,0,1/2,2,1];[0,1,0,0,1,0,0,0,0,0,1/2,1,-1];[0,0,1,0,0,1,0,0,0,0,1/2,1,-1];[0,0,0,1,1,0,0,0,0,0,1/2,1,-1];[0,1,0,0,1,0,0,0,0,0,1/2,2,-1];[0,0,1,0,0,1,0,0,0,0,1/2,2,-1];[0,0,0,1,1,0,0,0,0,0,1/2,2,-1];[0,1,0,0,1,0,0,0,0,0,1/2,3,-1];[0,0,1,0,0,1,0,0,0,0,1/2,3,-1];[0,0,0,1,1,0,0,0,0,0,1/2,3,-1];[0,1,0,0,1,0,0,0,0,0,1/2,2,-1];[0,0,1,0,0,1,0,0,0,0,1/2,2,-1];[0,0,0,1,1,0,0,0,0,0,1/2,2,-1];[0,1,0,0,1,0,0,0,0,0,1/2,4,1];[0,0,1,0,0,1,0,0,0,0,1/2,4,1];[0,0,0,1,1,0,0,0,0,0,1/2,4,1];[1,0,0,0,0,0,0,1,0,0,1/2,0,-1];[0,1,0,0,0,0,1,0,0,0,1/2,0,-1];[0,0,0,1,0,0,1,0,0,0,1/2,0,-1];[0,0,0,1,0,0,1,0,0,0,1/2,1,-1];[1,0,0,0,0,0,0,1,0,0,1/2,1,-1];[0,1,0,0,0,0,1,0,0,0,1/2,1,-1];[0,0,0,1,0,0,1,0,0,0,1/2,0,1];[0,0,0,1,0,0,1,0,0,0,1/2,1,1];[0,0,0,1,0,0,1,0,0,0,1/2,2,1];[1,0,0,0,0,0,0,1,0,0,1/2,2,1];[0,1,0,0,0,0,1,0,0,0,1/2,2,1];[0,0,0,0,1,0,0,1,0,0,0,0,-1];[0,0,0,0,0,1,1,0,0,0,0,0,-1];[0,0,0,0,1,0,0,1,0,0,0,1,-1];[0,0,0,0,0,1,1,0,0,0,0,1,-1];[0,0,0,0,1,0,0,1,0,0,0,1,1];[0,0,0,0,0,1,1,0,0,0,0,1,1];[0,0,0,0,1,0,0,1,0,0,0,2,1];[0,0,0,0,0,1,1,0,0,0,0,2,1];[0,0,0,0,1,0,0,1,0,0,0,1,-1];[0,0,0,0,0,1,1,0,0,0,0,1,-1];[0,0,1,0,0,0,0,0,0,1,1/2,0,-1];[0,0,0,1,0,0,0,0,1,0,1/2,0,-1];[0,1,0,0,0,0,0,0,1,0,1/2,0,-1];[0,1,0,0,0,0,0,0,1,0,1/2,1,-1];[0,0,1,0,0,0,0,0,0,1,1/2,1,-1];[0,0,0,1,0,0,0,0,1,0,1/2,1,-1];[0,0,1,0,0,0,0,0,0,1,1/2,1,1];[0,0,0,1,0,0,0,0,1,0,1/2,1,1];[0,1,0,0,0,0,0,0,1,0,1/2,1,1];[0,0,1,0,0,0,0,0,0,1,1/2,1,1];[0,0,0,1,0,0,0,0,1,0,1/2,1,1];[0,1,0,0,0,0,0,0,1,0,1/2,1,1];[0,0,1,0,0,0,0,0,0,1,1/2,2,1];[0,0,0,1,0,0,0,0,1,0,1/2,2,1];[0,1,0,0,0,0,0,0,1,0,1/2,2,1];[0,0,0,0,0,1,0,0,1,0,0,0,-1];[0,0,0,0,0,1,0,0,1,0,0,1,1];[0,0,0,0,0,1,0,0,1,0,0,2,1];[0,0,0,0,0,1,0,0,1,0,0,1,-1];[0,0,0,0,0,0,1,1,0,0,0,0,-1];[0,0,0,0,0,0,1,1,0,0,0,1,-1];[0,0,0,0,0,0,1,1,0,0,0,0,1];[0,0,0,0,0,0,1,1,0,0,0,1,1];[0,0,0,0,0,0,1,1,0,0,0,1,1];[0,0,0,0,0,0,1,1,0,0,0,2,1];[0,0,0,0,0,0,1,1,0,0,0,0,-1];[0,0,0,0,0,0,1,1,0,0,0,1,-1];[0,0,0,0,0,0,1,1,0,0,0,1,-1];[0,0,0,0,0,0,1,1,0,0,0,2,-1];[0,0,0,0,0,0,1,1,0,0,0,1,1];[0,0,0,0,0,0,1,1,0,0,0,2,1];[0,0,0,0,0,0,1,1,0,0,0,1,-1];[0,0,0,0,0,0,1,1,0,0,0,1,1];[0,0,0,0,0,0,1,1,0,0,0,1,-1];[0,0,0,0,0,0,1,1,0,0,0,1,1];[0,0,0,0,0,0,1,1,0,0,0,1,-1];[0,0,0,0,0,0,0,0,1,1,0,0,-1];[0,0,0,0,0,0,0,0,1,1,0,1,-1];[0,0,0,0,0,0,0,0,1,1,0,0,1];[0,0,0,0,0,0,0,0,1,1,0,1,1];[0,0,0,0,0,0,0,0,1,1,0,1,1];[0,0,0,0,0,0,0,0,1,1,0,2,1];[0,0,0,0,0,0,0,0,1,1,0,1,-1];[0,0,0,0,0,0,0,0,1,1,0,2,-1];[0,0,0,0,0,0,0,0,1,1,0,0,1];[0,0,0,0,0,0,0,0,1,1,0,1,1];[0,0,0,0,0,0,0,0,1,1,0,2,1];[0,0,0,0,0,0,0,0,1,1,0,1,-1];[0,0,0,0,0,0,0,0,1,1,0,1,1];[0,0,0,0,0,0,0,0,1,1,0,2,1];[0,0,0,0,0,0,0,0,1,1,0,1,-1];[0,0,0,0,0,0,0,0,1,1,0,1,-1];[0,0,0,0,0,0,0,0,1,1,0,1,-1]];
baryonmasses=[[6.84404];[6.84542];[7.01722];[7.73476];[8.63398];[7.08118];[7.08393];[7.08795];[7.80547];[7.80503];[7.80537];[8.66756];[8.66828];[7.18149];[7.18668];[7.81108];[7.81233];[7.85384];[7.85473];[8.19462];[8.66351];[8.66408];[7.89923];[8.71128];[7.11639];[7.11639];[7.11639];[7.11639];[7.23187];[7.23252];[7.23504];[7.83118];[7.83102];[7.83154];[8.67113];[8.67165];[7.3342];[7.33629];[7.88077];[7.88077];[8.69039];[7.42204];[7.92512]];
baryoninputs=[[1,0,2,0,0,0,0,0,0,0,1/2,1/2,1];[2,0,1,0,0,0,0,0,0,0,1/2,1/2,1];[1,0,1,0,1,0,0,0,0,0,0,1/2,1];[1,0,1,0,0,0,1,0,0,0,0,1/2,1];[1,0,1,0,0,0,0,0,1,0,0,1/2,1];[0,0,2,0,1,0,0,0,0,0,1,1/2,1];[1,0,1,0,1,0,0,0,0,0,1,1/2,1];[2,0,0,0,1,0,0,0,0,0,1,1/2,1];[0,0,2,0,0,0,1,0,0,0,1,1/2,1];[1,0,1,0,0,0,1,0,0,0,1,1/2,1];[2,0,0,0,0,0,1,0,0,0,1,1/2,1];[0,0,2,0,0,0,0,0,1,0,1,1/2,1];[2,0,0,0,0,0,0,0,1,0,1,1/2,1];[0,0,1,0,2,0,0,0,0,0,1/2,1/2,1];[1,0,0,0,2,0,0,0,0,0,1/2,1/2,1];[0,0,1,0,1,0,1,0,0,0,1/2,1/2,1];[1,0,0,0,1,0,1,0,0,0,1/2,1/2,1];[0,0,1,0,1,0,1,0,0,0,1/2,1/2,1];[1,0,0,0,1,0,1,0,0,0,1/2,1/2,1];[0,0,1,0,0,0,2,0,0,0,1/2,1/2,1];[0,0,1,0,1,0,0,0,1,0,1/2,1/2,1];[1,0,0,0,1,0,0,0,1,0,1/2,1/2,1];[0,0,0,0,2,0,1,0,0,0,0,1/2,1];[0,0,0,0,2,0,0,0,1,0,0,1/2,1];[0,0,3,0,0,0,0,0,0,0,3/2,3/2,1];[1,0,2,0,0,0,0,0,0,0,3/2,3/2,1];[2,0,1,0,0,0,0,0,0,0,3/2,3/2,1];[3,0,0,0,0,0,0,0,0,0,3/2,3/2,1];[0,0,2,0,1,0,0,0,0,0,1,3/2,1];[1,0,1,0,1,0,0,0,0,0,1,3/2,1];[2,0,0,0,1,0,0,0,0,0,1,3/2,1];[0,0,2,0,0,0,1,0,0,0,1,3/2,1];[1,0,1,0,0,0,1,0,0,0,1,3/2,1];[2,0,0,0,0,0,1,0,0,0,1,3/2,1];[0,0,2,0,0,0,0,0,1,0,1,3/2,1];[2,0,0,0,0,0,0,0,1,0,1,3/2,1];[0,0,1,0,2,0,0,0,0,0,1/2,3/2,1];[1,0,0,0,2,0,0,0,0,0,1/2,3/2,1];[0,0,1,0,1,0,1,0,0,0,1/2,3/2,1];[1,0,0,0,1,0,1,0,0,0,1/2,3/2,1];[0,0,1,0,1,0,0,0,1,0,1/2,3/2,1];[0,0,0,0,3,0,0,0,0,0,0,3/2,1];[0,0,0,0,2,0,1,0,0,0,0,3/2,1]];
exmasses=[[6.8977];[ 6.8977];[ 6.8876];[ 6.8876];[ 7.7484];[ 7.7484];[ 7.8077];[ 7.8077];[ 8.2614];[ 8.3500];[ 8.3821];[ 8.4431];[ 8.1276];[ 8.3001];[ 8.3419];[ 8.4069];[ 9.2693];[ 9.2735];[ 8.3691];[ 8.3962];[ 8.4023];[ 7.3537];[ 7.3537];[ 7.5364];[ 7.5380]];
exinputs=[[1,1,0,0,0,0,0,0,0,0,0,0,1];[1,1,0,0,1,1,0,0,0,0,0,0,1];[0,0,1,1,0,0,0,0,0,0,1,0,1];[0,0,1,1,1,1,0,0,0,0,1,0,1];[0,0,0,0,0,1,1,0,0,0,0,0,1];[0,0,0,1,1,1,1,0,0,0,0,0,1];[0,0,0,0,0,1,1,0,0,0,0,1,1];[0,0,0,1,1,1,1,0,0,0,0,1,1];[0,0,1,1,0,0,1,1,0,0,0,1,1];[0,0,0,0,1,1,1,1,0,0,0,1,-1];[0,0,1,1,0,0,1,1,0,0,0,1,-1];[0,0,1,1,0,0,1,1,0,0,0,1,-1];[0,1,1,0,0,0,1,1,0,0,0,1,1];[0,1,1,0,0,0,1,1,0,0,0,1,1];[0,1,1,0,0,0,1,1,0,0,0,1,1];[0,1,1,0,0,0,1,1,0,0,0,1,1];[0,1,1,0,0,0,0,0,1,1,0,1,1];[0,1,1,0,0,0,0,0,1,1,0,1,1];[1,0,2,0,0,0,1,1,0,0,1/2,1/2,1];[1,0,2,0,0,0,1,1,0,0,1/2,1/2,-1];[1,0,2,0,0,0,1,1,0,0,1/2,3/2,-1];[0,0,1,1,0,0,0,0,0,0,0,2,1];[1,1,2,2,0,0,0,0,0,0,0,2,1];[3,0,3,0,0,0,0,0,0,0,0,1,1];[2,0,4,0,0,0,0,0,0,0,0,1,1]];
unitinputs=eye(13,13);

% qmodelmasses=[5.81711; 5.81711; 5.82895; 5.82895; 6.18621; 6.18621; 7.34601; 7.34601; 8.46168; 8.46168];
% qmodelinputs=[[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; [0, 1, 0, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0]; [0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; [0, 0, 0, 1,   0, 0, 0, 0, 0, 0, 0, 0, 0]; [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,   0]; [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]; [0, 0, 0, 0, 0, 0, 1,   0, 0, 0, 0, 0, 0]; [0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0]; [0, 0,   0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0]; [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,   0, 0]]; 
% diproton=[[2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]];
% diprotonmass=[[7.5369]];

% massaging data
fulldata=1; 
usecategorical=0;usepion=1; % use zero only if fulldata  = 1
symmake=0;
addnoisefeature=1;
normalisemasses=1;
normaliseinputs=0;

if fulldata==0
    pos=[11, 42, 49, 51, 56, 57, 58, 65, 69, 70, 75, 76, 77, 79, 82, 83, 86, ...
    105, 106, 107, 114, 115, 116, 120, 121, 122, 123, 124, 125, 126, 127, ...
    128, 129, 130, 131, 132, 133, 134, 135, 138, 139, 140, 141, 144, 145, ...
    146, 147, 148, 149, 156, 157, 158, 159, 160, 161, 162, 165, 172, 180, ...
    187];
else
   pos=linspace(1,length(mesonmasses),length(mesonmasses)); 
end

if usecategorical==1
    mesoninputs=importdata('MesonInputs_C.mat');
    baryoninputs=importdata('BaryonInputs_C.mat');
    exinputs=importdata('ExoticInputs_C.mat');
    unitinputs=importdata('UnitInputs_C.mat');
end

numinputfeatures = length(mesoninputs(1,:));
if addnoisefeature==1
    mesoninputs=readmatrix('/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/data/mesoninputs14.dat');
    baryoninputs=readmatrix('/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/data/baryoninputs14.dat');
    exinputs=readmatrix('/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/data/exinputs14.dat');
    unitinputs=readmatrix('/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/data/unitinputs14.dat');
    numinputfeatures = length(mesoninputs(1,:));
end

dataI = mesoninputs(pos,1:numinputfeatures);
dataO = mesonmasses(pos,1);
testI = baryoninputs;
testO = baryonmasses;


if usepion==0
    dataI=dataI(4:length(dataI),1:numinputfeatures);dataO=dataO(4:length(dataO)); 
end

if normalisemasses==1
    dataO=normalize(dataO);
end

if symmake==1
    pos1=[2,1,4,3,6,5,8,7,10,9];
    dataSymmI=dataI;
    for i = 1:length(dataI)
        dataSymmI(i,:)= symmetrize(dataI(i,:),pos1);
    end
    dataI=[dataI;dataSymmI];dataO=[dataO;dataO];
end

if normaliseinputs==1
    for i = 1:length(dataI)
        dataI(i,:)=dataI(i,:)/norm(dataI(i,:));
    end
    for i = 1:length(testI)
        testI(i,:)=testI(i,:)/norm(testI(i,:));
    end
    for i = 1:length(exinputs)
        exinputs(i,:)=exinputs(i,:)/norm(exinputs(i,:));
    end
end

if fulldata==0
    dataII = dataI;
else
    dataII=dataI;
    %dataII = [mesoninputs(pos,1:numinputfeatures)';zeros(length(dataI),1)']';   
    dataII(:,numinputfeatures) = zeros(length(dataI),1);
end

%% GP set-up 1
%D = 13;
%covSEard -> D+1 (14) x
%covRQard -> D+2 (15) x
%covLINard -> D (13) x
%covNoise -> 1 x 
%covMaternard -> D+1 (14) x
%covPERard -> D+1 (14)
%covPPard -> D+1 (14)
%covGaborard
%covPPard x
%covConst x
%covMaternard 1,3,5

listfull1= {@covNoise, @covLINard, @covSEard, @covRQard, ...
    @covGaborard,...
    {@covPPard,0}, {@covPPard,1}, ...
    @covConst,...
    {@covMaternard,1}, {@covMaternard,3}, {@covMaternard,5}};

listfull= {...
    {@covScale, {@covNoise}},...
    {@covScale, {@covRQard}},...
    {@covScale, {@covSEard}},...
    {@covScale, {@covLINard}},...
    {@covScale, {@covConst}},...
    {@covScale, {@covMaternard,1}}, {@covScale, {@covMaternard,3}}, {@covScale, {@covMaternard,5}},...
    {@covScale, {@covPPard,0}}, {@covScale,{@covPPard,1}}, {@covScale, {@covPPard,2}}, {@covScale,{@covPPard,3}},...
    {@covScale, {@covLINard}},...
    {@covScale, {@covGaborard}}
    };

% listfull = {{@covScale, {@covLINard}}, {@covScale, {@covSEard}}, {@covScale, {@covRQard}}, {@covScale, {@covNoise}}, {@covScale, {@covMaternard,3}}};

% listfull = {...
%      {@covScale, {@covNoise}},...
%      {@covScale, {@covRQard}},...
%      {@covScale, {@covSEard}},...
%      {@covScale, {@covLINard}}
%      };

%listpartial = {{@covScale, {@covLINard}}, {@covScale, {@covSEard}}, {@covScale, {@covNoise}}, {@covScale, {@covMaternard,3}}};
%listpartial = {{@covScale, {@covSEard}}, {@covScale, {@covNoise}}};%, {@covScale, {@covLINard}}};
listpartial = {{@covScale, {@covConst}}, {@covScale, {@covSEard}}, {@covScale, {@covNoise}}};%, {@covScale, {@covLINard}}};

nns=  {@covProd, {@covNNone, @covNNone, @covNNone, @covNNone, @covNNone, @covNNone, @covNNone, @covNNone, @covNNone, @covNNone,@covNNone, @covNNone,@covNNone}};
listfull2 = {{@covScale, {@covConst}}, {@covScale, {@covSEard}}, {@covScale,{@covLINard}},{@covScale, {@covNoise}}};

list = {@covConst, @covSEard, @covLINard,...
    {@covMaternard,1}, {@covMaternard,3}, {@covMaternard,5},...
    {@covPPard,0}, {@covPPard,1},  {@covPPard,2}, {@covPPard,3}}; 

list = {@covConst, {@covScale, {@covSEard}}, {@covScale, {@covLINard}}, {@covScale, {@covRQard}}, {@covScale, {@covMaternard,1}}, {@covScale, {@covMaternard,3}}, {@covScale, {@covMaternard,5}}}; 
list = {{@covScale, {@covRQard}}, {@covScale, {@covConst}}, {@covScale, {@covPPard,3}}}; 
list = {{@covScale, {@covNoise}}, {@covScale, {@covSEard}}}; 
list = {{@covScale, {@covSEard}}}; %, {@covScale, {@covRQard}}}; 
list = {{@covScale, {@covRQard}}, {@covScale, {@covSEard}}, {@covPERiso,{@covSEard}}, {@covPERiso, {@covRQard}}};
%list = {@covLINard, @covSEard};%list = {{@covScale, {@covLINard}}, {@covScale, {@covProd, {@covLINard, @covSEard}}}, {@covScale, {@covProd, {@covLINard,@covLINard}}}, {@covScale, {@covSEard}}, {@covScale, {@covRQard}}};
%list = {@covSEard, {@covScale, {@covLINard}}, {@covPERiso,{@covSEard}}};
%list = {@covSEard, {@covScale, {@covLINard}}};
%%% ~ this works best (below) ~ %%%
list  = {{@covScale, {@covSEard}}, {@covScale, {@covRQard}}, {@covScale, {@covPPard,1}}};
% list  = {{@covScale, {@covRQard}}, {@covScale, {@covSEard}}, {@covScale, {@covPPard,3}}};
% list  = {{@covScale, {@covRQard}}};
%list  = {nns};%{{@covScale, {@covNNone}}};
%list  = {{@covScale, {@covSEard}}, {@covScale, {@covPPard,3}}};
%list  = {@covConst, {@covScale, {@covSEard}}, {@covScale, {@covRQard}}, {@covScale, {@covPPard,1}}};
% list = {{@covScale,{@covRQard}},{@covScale, {@covSEard}}};% this is the simplest
%list  = {{@covScale,{@covSEard}}};
list  = {{@covScale, {@covRQard}}, {@covScale, {@covSEard}}, {@covScale, {@covPPard,1}}};
list  = {{@covScale, {@covRQard}}};
list = {{@covScale, {@covSEard}},{@covScale, {@covRQard}},{@covScale, {@covPPard,1}}, {@covScale, {@covMaternard,1}}};
list = {{@covScale, {@covRQard}},{@covScale, {@covMaternard,1}},{@covScale, {@covMaternard,5}},{@covScale, {@covMaternard,5}}};
list  = {{@covScale, {@covGaborard}}};
list = {{@covRQard}};
%list = {{@covScale, {@covConst}}, {@covScale, {@covSEard}}};
%list  = {{@covScale, {@covRQard}}, {@covScale, {@covSEard}}, {@covScale, {@covPPard,1}}};
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% GP set-up 2
%%%%%%%%%%%%%% mean function *********************************
% deg=0;
% meanfunc ={@meanScale, {@meanSum, {{@meanPoly,deg}, {@meanScale,{@meanConst}}}}};%{@meanScale, {@meanConst}};%{@meanScale, {@meanSum, {{@meanPoly,deg}, @meanConst}}};%{@meanScale, {@meanSum, {{@meanPoly,deg}, @meanConst}}};
% c1=['@(D)',feval(meanfunc{:})];
% fh1=str2func(c1);
% disp('# hyperparameters: ');
% disp(fh1(numinputfeatures));
% %%%%% mean
% a1=0;b1=0;
% hyp.mean = (a1+(b1-a1)*rand(1,fh1(numinputfeatures)));
meanfunc=[];hyp.mean=[];
%%%%%%%%%%%%%% covariance function *********************************
sum     =  {@covScale, {@covSum, list}}; sum0 = {@covSum, list};
prod2   =  {@covScale, {@covProd, {sum, sum}}};
prod3   =  {@covScale, {@covProd, {sum, sum, sum}}};
prod4   =  {@covScale, {@covProd, {sum, sum, sum, sum}}};
prod5   =  {@covScale, {@covProd, {sum, sum, sum, sum, sum}}};
covfunc =  sum0;
%covfunc =  {@covSum, {sum, prod2}};

c=['@(D)',feval(covfunc{:})];
fh=str2func(c);
disp('# hyperparameters: ');
disp(fh(numinputfeatures));
%cov
a1=0;b1=0;
hyp.cov = (a1+(b1-a1)*rand(1,fh(numinputfeatures)));
disp(hyp.cov);

%%%%%%%%%%%%%% likelihood function *********************************
likfunc = @likGauss;%@likGauss;
sn = 1.e-6;%1.45;
hyp.lik = log(sn);

%%%%%%%%%%%%%% inference method *********************************
%%%%%%%%%%%%%% prior *********************************
inf = @infGaussLik; %infGaussLik; %@infLOO;infExact

















%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ML optimisation
maxiters = 8000;

hyp2 = minimize(hyp, @gp, -maxiters, inf, meanfunc, covfunc, likfunc, dataI, dataO);
%hyp2.cov(9)=-15;hyp2.cov(10)=-15;
[nlml, dnlml] = gp(hyp2, inf, meanfunc, covfunc, likfunc, dataI, dataO); %training
[trainmean, trainvars, trainfmu, trainfs2] = gp(hyp2, inf, meanfunc, covfunc, likfunc, dataI, dataO, dataI); % testing on training data
[trainmeanphys, trainvarsphys, trainfmuphys, trainfs2phys] = gp(hyp2, inf, meanfunc, covfunc, likfunc, dataI, dataO, dataII); % testing on (physical) training data
[testmean, testvars, testfmu, testfs2] = gp(hyp2, inf, meanfunc, covfunc, likfunc, dataI, dataO, testI); % testing on test data
[unitmean, unitvars, unitfmu, unitfs2] = gp(hyp2, inf, meanfunc, covfunc, likfunc, dataI, dataO, unitinputs); % testing on unit vectors
[exmean, exvars, exfmu, exfs2] = gp(hyp2, inf, meanfunc, covfunc, likfunc, dataI, dataO, exinputs); % testing on exotics

% alltests=[dataI;testI;eye(13,13);exinputs];
% [means, vars, fmus, fs2s] = gp(hyp2, inf, meanfunc, covfunc, likfunc, dataI, dataO, alltests); % testing on everythingtogether

if normalisemasses==1
    mu=mean(mesonmasses);sigma=std(mesonmasses);
    dataO     = unnormalize(dataO,mu,sigma);
    trainmean = unnormalize(trainmean,mu,sigma);trainmeanphys = unnormalize(trainmeanphys,mu,sigma);
    testmean  = unnormalize(testmean,mu,sigma);
    unitmean  = unnormalize(unitmean,mu,sigma);
    exmean    = unnormalize(exmean,mu,sigma);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %% plots
f1= figure(1);
clf(f1);
xs = linspace(4.5, 9.5, 60)';ys = xs;
hold on; 
errorbar((exmasses),(exmean),sqrt(exvars),'o','MarkerSize',3,...
    'MarkerEdgeColor','red','MarkerFaceColor','red');
plot(xs,ys); 
plot(xs,xs+log(8/9),'blue');
plot(xs,xs+log(10/9),'blue');
hold off;

f2= figure(2);
clf(f2);
xs = linspace(4.5, 9.5, 60)';ys = xs;
hold on; 
errorbar((testO),(testmean),sqrt(testvars),'o','MarkerSize',3,...
    'MarkerEdgeColor','red','MarkerFaceColor','red');
plot(xs,ys); 
plot(xs,xs+log(8/9),'blue');
plot(xs,xs+log(10/9),'blue');
hold off;

f3= figure(3);
clf(f3);
hold on; 
xs = linspace(4.5, 9.5, 60)';ys = xs;
errorbar((dataO),(trainmean),sqrt(trainvars),'o','MarkerSize',3,...
     'MarkerEdgeColor','blue','MarkerFaceColor','blue');
plot(xs,ys); 
plot(xs,xs+log(8/9),'blue');
plot(xs,xs+log(10/9),'blue');
hold off;

f4= figure(4);
clf(f4);
xs = linspace(4.5, 9.5, 60)';ys = xs;
hold on; 
errorbar((dataO),(trainmeanphys),sqrt(trainvarsphys),'o','MarkerSize',3,...
     'MarkerEdgeColor','blue','MarkerFaceColor','blue');
plot(xs,ys); 
plot(xs,xs+log(8/9),'blue');
plot(xs,xs+log(10/9),'blue');
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% disp('Hyperparameters');
% hyp2.cov
disp ('errors in data scale:')
disp ([logerrors(dataO(4:length(dataO))',trainmeanphys(4:length(dataO))'),logerrors(testO',testmean'),logerrors(exmasses',exmean')]);
disp ('errors in natural scale:')
disp ('data');
disp (naturalerrors(dataO(4:length(dataO))',trainmean(4:length(dataO))',trainvars(4:length(dataO))'));
disp ('physical');
disp ([naturalerrors(dataO(4:length(dataO))',trainmeanphys(4:length(dataO))',trainvarsphys(4:length(dataO))'),naturalerrors(testO',testmean',testvars'),naturalerrors(exmasses',exmean',exvars')]);
disp('negative log marginal likelihood: ');
disp(nlml);
disp(['inferred noise standard deviation ~ vs ~ ','actual noise standard deviation']);
disp([exp(hyp2.lik), exp(hyp.lik)]);

disp ('proton/neutron errors in natural scale:')
disp (naturalerrors(testO(1),testmean(1),testvars(1)));
disp (naturalerrors(testO(2),testmean(2),testvars(2)));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
X=exp(reshape(baryonmasses, size(testmean)));Y=exp(testmean);
errors=100*rdivide(abs(X-Y),Y)';
% disp('priors');
% disp(hyp.cov)
% 
% 
writematrix(trainmean,'/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/results/trainmean.txt');
writematrix(trainvars,'/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/results/trainvars.txt');

writematrix(trainmeanphys,'/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/results/trainmeanphys.txt');
writematrix(trainvarsphys,'/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/results/trainvarsphys.txt');

writematrix(testmean,'/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/results/testmean.txt');
writematrix(testvars,'/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/results/testvars.txt');

writematrix(exmean,'/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/results/exmean.txt');
writematrix(exvars,'/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/results/exvars.txt');

writematrix(unitmean,'/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/results/unitmean.txt');
writematrix(unitvars,'/Users/cmishra/Projects/BaryonsFromMesons/GPML/FinalResultsGP/results/unitvars.txt');


disp('characteristic length scales');
disp(exp(hyp2.cov'))
% disp(sqrt([max(trainvars),max(testvars),max(exvars),max(unitvars)]));



%% functions
function err = naturalerrors(v1,v2,varsV2)% v1 is actual, v2 is measured
    v1=exp(v1);
    v2=exp(v2+(1/2)*varsV2);
    err=100*sum(abs(rdivide(v1-v2,v1)))/length(v1);
end

function err = logerrors(v1,v2)% v1 is actual, v2 is measured
    err=100*sum(abs(rdivide(v1-v2,v1)))/length(v1);
end

function vals1 = normalize(vals)% v1 is actual, v2 is measured
    vals1=(vals-mean(vals))/std(vals);
end

function vals = unnormalize(vals1,mu,sigma)% v1 is actual, v2 is measured
         vals= vals1*sigma + mu;
%        vals= vals1 + mu;
end


function symmvec = symmetrize(vec, pos1)
    symmvec=vec;
    for i = 1:length(pos1)
        symmvec(i)=vec(pos1(i));
        symmvec(length(symmvec))=-symmvec(length(symmvec));%changing parity for anti-particles
%        symmvec(length(symmvec)-1)=-symmvec(length(symmvec)-1);%changing angular momentum for anti-particles
%         symmvec(length(symmvec)-2)=-symmvec(length(symmvec)-2);%changing isospin for anti-particles
    end
end

% function data1 = addnoisefeature2data(data)
%     data1=data;
%     for i = 1:length(data)
%         data1(i,:) = addnoisefeature2vec(data(i,:));
%     end
% end
% 
% 
% function vec = addnoisefeature2vec(vec)
%     vec=[vec,rand(1,1)];
% end