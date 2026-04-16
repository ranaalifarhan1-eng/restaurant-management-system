-- Phase 3A Offline Sync Additive Migration Script
-- Safe to execute against Production Database
-- Rollback snippet provided at bottom

ALTER TABLE `tbl_sales`
ADD COLUMN `offline_uuid` VARCHAR(36) NULL UNIQUE,
ADD COLUMN `offline_order_no` VARCHAR(50) NULL,
ADD COLUMN `device_id` VARCHAR(64) NULL,
ADD COLUMN `sync_status` ENUM('Synced', 'Pending', 'Failed') DEFAULT 'Synced',
ADD COLUMN `sync_version` INT DEFAULT 1,
ADD COLUMN `synced_at` DATETIME NULL,
ADD COLUMN `created_at` DATETIME NULL,
ADD COLUMN `updated_at` DATETIME NULL,
ADD INDEX `idx_sync_status_sales` (`sync_status`);

ALTER TABLE `tbl_holds`
ADD COLUMN `offline_uuid` VARCHAR(36) NULL UNIQUE,
ADD COLUMN `device_id` VARCHAR(64) NULL,
ADD COLUMN `sync_status` ENUM('Synced', 'Pending', 'Failed') DEFAULT 'Synced',
ADD COLUMN `synced_at` DATETIME NULL,
ADD COLUMN `created_at` DATETIME NULL,
ADD COLUMN `updated_at` DATETIME NULL,
ADD INDEX `idx_sync_status_holds` (`sync_status`);

ALTER TABLE `tbl_sales_details`
ADD COLUMN `offline_uuid` VARCHAR(36) NULL UNIQUE,
ADD COLUMN `device_id` VARCHAR(64) NULL,
ADD COLUMN `sync_status` ENUM('Synced', 'Pending', 'Failed') DEFAULT 'Synced',
ADD COLUMN `synced_at` DATETIME NULL;

ALTER TABLE `tbl_customers`
ADD COLUMN `offline_uuid` VARCHAR(36) NULL UNIQUE,
ADD COLUMN `device_id` VARCHAR(64) NULL,
ADD COLUMN `sync_status` ENUM('Synced', 'Pending', 'Failed') DEFAULT 'Synced',
ADD COLUMN `synced_at` DATETIME NULL,
ADD COLUMN `created_at` DATETIME NULL,
ADD COLUMN `updated_at` DATETIME NULL,
ADD INDEX `idx_sync_status_cust` (`sync_status`);

CREATE TABLE `tbl_sync_logs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `device_id` VARCHAR(64) DEFAULT NULL,
  `batch_uuid` VARCHAR(36) DEFAULT NULL,
  `status` ENUM('Success', 'Partial', 'Failed') DEFAULT 'Failed',
  `records_processed` INT(11) DEFAULT 0,
  `raw_payload` LONGTEXT DEFAULT NULL,
  `error_traces` TEXT DEFAULT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `idx_batch_uuid` (`batch_uuid`),
  INDEX `idx_device_id` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ==========================================
-- ROLLBACK SCRIPT 
-- (Do not execute unless reversing the patch)
-- ==========================================
/*
ALTER TABLE `tbl_sales` 
DROP COLUMN `offline_uuid`, 
DROP COLUMN `offline_order_no`, 
DROP COLUMN `device_id`, 
DROP COLUMN `sync_status`, 
DROP COLUMN `sync_version`, 
DROP COLUMN `synced_at`, 
DROP COLUMN `created_at`, 
DROP COLUMN `updated_at`;

ALTER TABLE `tbl_holds` 
DROP COLUMN `offline_uuid`, 
DROP COLUMN `device_id`, 
DROP COLUMN `sync_status`, 
DROP COLUMN `synced_at`, 
DROP COLUMN `created_at`, 
DROP COLUMN `updated_at`;

ALTER TABLE `tbl_sales_details` 
DROP COLUMN `offline_uuid`, 
DROP COLUMN `device_id`, 
DROP COLUMN `sync_status`, 
DROP COLUMN `synced_at`;

ALTER TABLE `tbl_customers` 
DROP COLUMN `offline_uuid`, 
DROP COLUMN `device_id`, 
DROP COLUMN `sync_status`, 
DROP COLUMN `synced_at`, 
DROP COLUMN `created_at`, 
DROP COLUMN `updated_at`;

DROP TABLE IF EXISTS `tbl_sync_logs`;
*/
