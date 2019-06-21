-- +--------------------------------------------------------------------+
-- | CiviCRM version 5                                                  |
-- +--------------------------------------------------------------------+
-- | Copyright CiviCRM LLC (c) 2004-2019                                |
-- +--------------------------------------------------------------------+
-- | This file is a part of CiviCRM.                                    |
-- |                                                                    |
-- | CiviCRM is free software; you can copy, modify, and distribute it  |
-- | under the terms of the GNU Affero General Public License           |
-- | Version 3, 19 November 2007 and the CiviCRM Licensing Exception.   |
-- |                                                                    |
-- | CiviCRM is distributed in the hope that it will be useful, but     |
-- | WITHOUT ANY WARRANTY; without even the implied warranty of         |
-- | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
-- | See the GNU Affero General Public License for more details.        |
-- |                                                                    |
-- | You should have received a copy of the GNU Affero General Public   |
-- | License and the CiviCRM Licensing Exception along                  |
-- | with this program; if not, contact CiviCRM LLC                     |
-- | at info[AT]civicrm[DOT]org. If you have questions about the        |
-- | GNU Affero General Public License or the licensing of CiviCRM,     |
-- | see the CiviCRM license FAQ at http://civicrm.org/licensing        |
-- +--------------------------------------------------------------------+
--
-- Generated from schema.tpl
-- DO NOT EDIT.  Generated by CRM_Core_CodeGen
--


-- +--------------------------------------------------------------------+
-- | CiviCRM version 5                                                  |
-- +--------------------------------------------------------------------+
-- | Copyright CiviCRM LLC (c) 2004-2019                                |
-- +--------------------------------------------------------------------+
-- | This file is a part of CiviCRM.                                    |
-- |                                                                    |
-- | CiviCRM is free software; you can copy, modify, and distribute it  |
-- | under the terms of the GNU Affero General Public License           |
-- | Version 3, 19 November 2007 and the CiviCRM Licensing Exception.   |
-- |                                                                    |
-- | CiviCRM is distributed in the hope that it will be useful, but     |
-- | WITHOUT ANY WARRANTY; without even the implied warranty of         |
-- | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
-- | See the GNU Affero General Public License for more details.        |
-- |                                                                    |
-- | You should have received a copy of the GNU Affero General Public   |
-- | License and the CiviCRM Licensing Exception along                  |
-- | with this program; if not, contact CiviCRM LLC                     |
-- | at info[AT]civicrm[DOT]org. If you have questions about the        |
-- | GNU Affero General Public License or the licensing of CiviCRM,     |
-- | see the CiviCRM license FAQ at http://civicrm.org/licensing        |
-- +--------------------------------------------------------------------+
--
-- Generated from drop.tpl
-- DO NOT EDIT.  Generated by CRM_Core_CodeGen
--
-- /*******************************************************
-- *
-- * Clean up the exisiting tables
-- *
-- *******************************************************/

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `civicrm_webtracking`;

SET FOREIGN_KEY_CHECKS=1;
-- /*******************************************************
-- *
-- * Create new tables
-- *
-- *******************************************************/

-- /*******************************************************
-- *
-- * civicrm_webtracking
-- *
-- * This table will hold web tracking parameters for event and contribution pages
-- *
-- *******************************************************/
CREATE TABLE `civicrm_webtracking` (


     `id` int unsigned NOT NULL AUTO_INCREMENT  COMMENT 'Serial No.',
     `page_id` int unsigned NOT NULL   COMMENT 'Holds the id of the Event/Contribution page',
     `page_category` varchar(64) NOT NULL   COMMENT 'Denotes whether the page is an event page or a contribution page',
     `enable_tracking` tinyint   DEFAULT 0 COMMENT 'Denotes whether webtracking is enabled or not',
     `tracking_id` varchar(64)    COMMENT 'Unique UAID provided by google analytics',
     `ga_event_tracking` tinyint   DEFAULT 0 COMMENT 'Denotes whether event tracking is enabled or not',
     `track_info` tinyint   DEFAULT 0 COMMENT 'Track the event of users visiting the info page',
     `track_register` tinyint   DEFAULT 0 COMMENT 'Track the event of users visiting the registration page',
     `track_confirm_register` tinyint   DEFAULT 0 COMMENT 'Track the event of users visiting the confirmation page',
     `track_thank_you` tinyint   DEFAULT 0 COMMENT 'Track the event of users visiting the thank you page',
     `track_price_change` tinyint   DEFAULT 0 COMMENT 'Track the event of user changing the default price option',
     `track_ecommerce` tinyint   DEFAULT 0 COMMENT 'Denotes whether ecommerce tracking is enabled or not',
     `is_experiment` tinyint   DEFAULT 0 COMMENT 'Denotes whether the page is the primary page of a google analytics experiment',
     `experiment_id` varchar(64)    COMMENT 'Unique experiment ID provided by google analytics' 
,
        PRIMARY KEY (`id`)
 
 
 
)    ;

 
