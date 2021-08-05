fis = newfis('chuveiro');
fis = addvar(fis, 'input', 'temp', [-20, 20]);
fis = addvar(fis, 'input', 'flow', [-1, 1]);
fis = addvar(fis, 'output', 'cold', [-1, 1]);
fis = addvar(fis, 'output', 'hot', [-1, 1]);

fis = addmf(fis, 'input', 1, 'cold', 'trapmf', [-20, -20, -15, 0]);
fis = addmf(fis, 'input', 1, 'good', 'trimf', [-10, 0, 10]);
fis = addmf(fis, 'input', 1, 'hot', 'trapmf', [0, 15, 20, 20]);
fis = addmf(fis, 'input', 2, 'soft', 'trapmf', [-1, -1, -0.8, 0]);
fis = addmf(fis, 'input', 2, 'good', 'trimf', [-0.4, 0, 0.4]);
fis = addmf(fis, 'input', 2, 'hard', 'trapmf', [0,0.8,1,1]);
fis = addmf(fis, 'output', 1, 'closeFast', 'trimf', [-1, -0.6, -0.3]);
fis = addmf(fis, 'output', 1, 'closeSlow', 'trimf', [-0.6, -0.3, 0]);
fis = addmf(fis, 'output', 1, 'steady', 'trimf', [-0.3, 0, 0.3]);
fis = addmf(fis, 'output', 1, 'openSlow', 'trimf', [0, 0.3, 0.6]);
fis = addmf(fis, 'output', 1, 'openFast', 'trimf', [0.3, 0.6, 1]);
fis = addmf(fis, 'output', 2, 'closeFast', 'trimf', [-1, -0.6, -0.3]);
fis = addmf(fis, 'output', 2, 'closeSlow', 'trimf', [-0.6, -0.3, 0]);
fis = addmf(fis, 'output', 2, 'steady', 'trimf', [-0.3, 0, 0.3]);
fis = addmf(fis, 'output', 2, 'openSlow', 'trimf', [0, 0.3, 0.6]);
fis = addmf(fis, 'output', 2, 'openFast', 'trimf', [0.3, 0.6, 1]);

rule1 = [1, 1, 4, 5, 1, 1];
rule2 = [1, 2, 2, 4, 1, 1];
rule3 = [1, 3, 1, 2, 1, 1];
rule4 = [2, 1, 4, 4, 1, 1];
rule5 = [2, 2, 3, 3, 1, 1];
rule6 = [2, 3, 2, 2, 1, 1];
rule7 = [3, 1, 5, 4, 1, 1];
rule8 = [3, 2, 4, 2, 1, 1];
rule9 = [3, 3, 2, 1, 1, 1];

rules = [rule1; rule2; rule3; rule4; rule5; rule6; rule7; rule8; rule9]; 

fis = addrule(fis,rules);

showrule(fis)

writefis(fis, 'chuveiro');

flowTemp = [-12 -0.6; -5 0.2; 0 0; 5 0.2; 12 0.6];
evalfis(flowTemp, fis)