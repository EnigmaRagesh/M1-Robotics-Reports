% Adams / MATLAB Interface - Release 2017.2.0
global ADAMS_sysdir; % used by setup_rtw_for_adams.m
global ADAMS_host; % used by start_adams_daemon.m
machine=computer;
datestr(now)
if strcmp(machine, 'SOL2')
   arch = 'solaris32';
elseif strcmp(machine, 'SOL64')
   arch = 'solaris32';
elseif strcmp(machine, 'GLNX86')
   arch = 'linux32';
elseif strcmp(machine, 'GLNXA64')
   arch = 'linux64';
elseif strcmp(machine, 'PCWIN')
   arch = 'win32';
elseif strcmp(machine, 'PCWIN64')
   arch = 'win64';
else
   disp( '%%% Error : Platform unknown or unsupported by Adams Controls.' ) ;
   arch = 'unknown_or_unsupported';
   return
end
   [flag, topdir]=system('adams2017_2_SE -top');
if flag == 0
  temp_str=strcat(topdir, '/controls/', arch);
  addpath(temp_str)
  temp_str=strcat(topdir, '/controls/', 'matlab');
  addpath(temp_str)
  temp_str=strcat(topdir, '/controls/', 'utils');
  addpath(temp_str)
  ADAMS_sysdir = strcat(topdir, '');
else
  addpath( 'C:\MSC~1.SOF\ADAMS_~1\2017_2\controls/win64' ) ;
  addpath( 'C:\MSC~1.SOF\ADAMS_~1\2017_2\controls/win32' ) ;
  addpath( 'C:\MSC~1.SOF\ADAMS_~1\2017_2\controls/matlab' ) ;
  addpath( 'C:\MSC~1.SOF\ADAMS_~1\2017_2\controls/utils' ) ;
  ADAMS_sysdir = 'C:\MSC~1.SOF\ADAMS_~1\2017_2\' ;
end
ADAMS_exec = '' ;
ADAMS_host = 'DESKTOP-CEB9BHA' ;
ADAMS_cwd ='C:\Users\Ragesh\Documents\MOCM\Lab5_MOCOM\Lab5_Sim2'  ;
ADAMS_prefix = 'Controls_Plant_33' ;
ADAMS_static = 'no' ;
ADAMS_solver_type = 'C++' ;
ADAMS_version = '2017_2_SE' ;
if exist([ADAMS_prefix,'.adm']) == 0
   disp( ' ' ) ;
   disp( '%%% Warning : missing Adams plant model file(.adm) for Co-simulation or Function Evaluation.' ) ;
   disp( '%%% If necessary, please re-export model files or copy the exported plant model files into the' ) ;
   disp( '%%% working directory.  You may disregard this warning if the Co-simulation/Function Evaluation' ) ;
   disp( '%%% is TCP/IP-based (running Adams on another machine), or if setting up MATLAB/Real-Time Workshop' ) ;
   disp( '%%% for generation of an External System Library.' ) ;
   disp( ' ' ) ;
end
ADAMS_init = '' ;
ADAMS_inputs  = 'w1!w2!w3!w4!w5!w6!w7' ;
ADAMS_outputs = 'q1!q2!q3!q4!q5!q6!q7!qd1!qd2!qd3!qd4!qd5!qd6!qd7' ;
ADAMS_pinput = 'Controls_Plant_33.ctrl_pinput' ;
ADAMS_poutput = 'Controls_Plant_33.ctrl_poutput' ;
ADAMS_uy_ids  = [
                   2
                   4
                   5
                   6
                   7
                   8
                   9
                   1
                   10
                   11
                   12
                   13
                   14
                   15
                   3
                   16
                   17
                   18
                   19
                   20
                   21
                ] ;
ADAMS_mode   = 'non-linear' ;
tmp_in  = decode( ADAMS_inputs  ) ;
tmp_out = decode( ADAMS_outputs ) ;
disp( ' ' ) ;
disp( '%%% INFO : ADAMS plant actuators names :' ) ;
disp( [int2str([1:size(tmp_in,1)]'),blanks(size(tmp_in,1))',tmp_in] ) ;
disp( '%%% INFO : ADAMS plant sensors   names :' ) ;
disp( [int2str([1:size(tmp_out,1)]'),blanks(size(tmp_out,1))',tmp_out] ) ;
disp( ' ' ) ;
clear tmp_in tmp_out ;
% Adams / MATLAB Interface - Release 2017.2.0
