CREATE TABLE `t_exp_rule_ol` (
  `f_exp_group_code` varchar(50) NOT NULL COMMENT '实验分组标识',
  `f_exp_code` varchar(50) NOT NULL COMMENT '实验标识',
  `f_rule_code` varchar(50) NOT NULL COMMENT '相应实验的规则编号',
  `f_rule_dim` smallint(4) unsigned NOT NULL COMMENT '规则判定的维度',
  `f_dim_key` varchar(25) NOT NULL COMMENT '请求数据中，用于规则判定的键名',
  `f_rule_type` smallint(4) unsigned NOT NULL COMMENT '规则类型',
  `f_rule_content` varchar(255) NOT NULL DEFAULT '' COMMENT '规则内容，如白名单列表、百分数、匹配字符串等',
  PRIMARY KEY (`f_exp_group_code`,`f_exp_code`,`f_rule_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t_exp_group_ol` (
  `f_exp_group_code` varchar(50) NOT NULL COMMENT '实验分组标识',
  PRIMARY KEY (`f_exp_group_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
