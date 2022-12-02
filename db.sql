CREATE TABLE `users` (
  `email` varchar(64) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `role` varchar(64) NOT NULL,
  `details` varchar(512) NOT NULL,
  `img` varchar(512) DEFAULT 'none',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `applications` (
  `application_id` int(11) NOT NULL AUTO_INCREMENT,
  `instrument_code` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `role` varchar(64) NOT NULL,
  `sample_properties` varchar(256) NOT NULL,
  `incompatibility` varchar(128) NOT NULL,
  `toxicity` varchar(64) NOT NULL,
  `health_hazard` varchar(128) NOT NULL,
  `first_aid` varchar(128) NOT NULL,
  `disposal` varchar(256) NOT NULL,
  `additional_info` varchar(512) NOT NULL,
  `department` varchar(64) NOT NULL,
  `supervisor_department` varchar(64) NOT NULL,
  `supervisor_name` varchar(64) NOT NULL,
  `pricing` int(11) NOT NULL,
  `status` varchar(64) NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `esr` (
  `ref_id` varchar(64) NOT NULL,
  `application_id` varchar(64) NOT NULL,
  `sample_code` varchar(64) NOT NULL,
  `liquid_powder` varchar(64) NOT NULL,
  `solubility` varchar(64) NOT NULL,
  `esr_range` varchar(64) NOT NULL,
  `temperature` varchar(64) NOT NULL,
  `health_hazard` varchar(64) NOT NULL,
  `fire_hazard` varchar(64) NOT NULL,
  `specific_hazard` varchar(64) NOT NULL,
  `instability_hazard` varchar(64) NOT NULL,
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;