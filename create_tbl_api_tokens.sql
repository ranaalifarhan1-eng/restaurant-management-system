-- Restaurant POS API token table migration
-- Safe additive migration for Phase 2 API foundation

CREATE TABLE IF NOT EXISTS `tbl_api_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token_hash` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `expires_at` datetime NOT NULL,
  `revoked` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_token_hash` (`token_hash`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_expires_at` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Optional future improvement:
-- ALTER TABLE `tbl_api_tokens`
--   ADD CONSTRAINT `fk_api_tokens_user`
--   FOREIGN KEY (`user_id`) REFERENCES `tbl_users`(`id`)
--   ON DELETE CASCADE;
