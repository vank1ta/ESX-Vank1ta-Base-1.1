ALTER TABLE `items`
	ADD COLUMN `price` int(11) NOT NULL DEFAULT 0
;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `price`) VALUES 
('9mm_rounds', '9mm Rounds', 20, 0, 1, 0),
('shotgun_shells', 'Shotgun Shells', 20, 0, 1, 0)
;