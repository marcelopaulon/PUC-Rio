attack_shoot(ShootingActionResult) :- 
			     curPosition(X, Y, _), adjacent(X, Y, XX, YY), hasEnemy(XX, YY),
			     random_between(20, 50, AgentEnemyDamage),
				 (
				 	(enemyCell(EnemyDamage, EnemyEnergy, XX, YY),
				 		EnemyEnergyAfter is EnemyEnergy - AgentEnemyDamage,
				 		(
				 			(EnemyEnergyAfter < 1, retractall(enemyCell(_, _, XX, YY)), retractall(hasEnemy(XX, YY)), assert(floorCell(XX, YY)), ShootingActionResult = kill, writef('ENEMY KILLED!\n'));
				 			(retractall(enemyCell(_, _, XX, YY)), assert(enemyCell(EnemyDamage, EnemyEnergyAfter, XX, YY)), ShootingActionResult = attack, writef('ENEMY HIT (ENERGY = %w)!\n', [EnemyEnergyAfter]))
				 		)
				 	)
				 ),
				 agent_decrementCost(10),
				 agent_deployAmmo(), !.