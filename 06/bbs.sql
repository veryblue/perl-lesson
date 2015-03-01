CREATE TABLE `entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text,
  `created_at` datetime default current_timestamp,
  `updated_at` datetime default current_timestamp,
  PRIMARY KEY (`id`)
)