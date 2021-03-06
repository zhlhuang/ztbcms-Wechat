CREATE TABLE `cms_wechat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) NOT NULL COMMENT '是否关注',
  `sex` int(11) NOT NULL COMMENT '性别',
  `openid` varchar(64) NOT NULL DEFAULT '' COMMENT 'openid',
  `city` varchar(128) NOT NULL DEFAULT '' COMMENT '所属城市',
  `province` varchar(128) NOT NULL DEFAULT '' COMMENT '所属城市',
  `country` varchar(128) NOT NULL DEFAULT '' COMMENT '所属国家',
  `headimgurl` varchar(512) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT '所用语言',
  `subscribe_time` int(11) NOT NULL COMMENT '关注事件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `privilege` varchar(255) NOT NULL DEFAULT '' COMMENT '特权信息',
  `open_app_id` varchar(255) NOT NULL DEFAULT '' COMMENT '开放平台app_id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE `cms_wechat_app` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `wx_app_id` varchar(256) NOT NULL DEFAULT '' COMMENT '微信公众号平台app_id',
  `wx_secret_key` varchar(256) NOT NULL DEFAULT '' COMMENT '微信公众号平台密钥',
  `open_app_id` varchar(256) NOT NULL DEFAULT '' COMMENT '开放平台app_id',
  `open_secret_key` varchar(256) NOT NULL DEFAULT '' COMMENT '开放平台密钥secret_key',
  `open_alias` varchar(256) NOT NULL DEFAULT '' COMMENT '开放平台的别名',
  `default` tinyint(11) NOT NULL DEFAULT '0' COMMENT '是否默认 0否，1是',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT '访问凭证token',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `cms_wechat_msg` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL COMMENT '应用ID',
  `name` varchar(64) NOT NULL COMMENT '英文名',
  `template_id` varchar(64) NOT NULL DEFAULT '' COMMENT '模板ID',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '标题',
  `description` varchar(512) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `cms_wechat_pay_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `return_code` varchar(255) DEFAULT NULL COMMENT '调用结果',
  `return_msg` varchar(255) DEFAULT NULL COMMENT '调用信息',
  `appid` varchar(128) DEFAULT NULL COMMENT 'app_id',
  `mch_id` varchar(128) DEFAULT NULL COMMENT '商户id',
  `nonce_str` varchar(32) DEFAULT NULL COMMENT '随机码',
  `sign` varchar(255) DEFAULT NULL COMMENT '签名',
  `result_code` varchar(255) DEFAULT NULL COMMENT '业务代码',
  `openid` varchar(255) DEFAULT NULL COMMENT '用户openid',
  `is_subscribe` varchar(16) DEFAULT NULL COMMENT '是否关注',
  `trade_type` varchar(32) DEFAULT NULL COMMENT '交易类型',
  `bank_type` varchar(32) DEFAULT NULL COMMENT '银行',
  `total_fee` int(11) DEFAULT NULL COMMENT '交易总额',
  `fee_type` varchar(255) DEFAULT NULL COMMENT '钱币类型',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT '流水号',
  `out_trade_no` varchar(255) DEFAULT NULL COMMENT '订单号',
  `attach` varchar(255) DEFAULT NULL COMMENT '附加值',
  `time_end` varchar(128) DEFAULT NULL COMMENT '结束时间',
  `trade_state` varchar(255) DEFAULT NULL COMMENT '交易状态',
  `trade_state_desc` varchar(255) DEFAULT NULL COMMENT '交易解释',
  `cash_fee` int(11) DEFAULT NULL COMMENT '现金金额（不知道是什么）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;