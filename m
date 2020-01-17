Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D332140515
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 Jan 2020 09:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5fS3APOLcUwaj3kNH0FLAWc1T7pElvfAx2LW2Ig6Vko=; b=G3gZ2vHDSa8Po4WEXKCqMSu2Zw
	JPb7FieqoKRYisO2EURo2av3Rm3vaaIL0A/PL/lP5PqUTmapeTxSeuF1pLZOwO0Br5vCLFhKqYwGQ
	L1rdzIBQAFpOidgqiklYjb5f3NWUTJ3IJj3LfrqqVwME2s4yE3xiKVYTU1ypnzy6YhxwMUyeperRw
	aYqgQg0GfxitCGgUxS+a2Rco3DdhlNPQJE9Q30fRZ0MQwGUFk+oLQHkw3g+fpMT2epRHzmx+bEKkn
	YD2H6RvcuLVQIFLhOqJCXX5LIE4UQHc8N5E1BqSssoDeHC0dkQ+K/LYJVp8m0R1neItWfOiEooxoq
	UPs0FNLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isMlj-0005QD-VC; Fri, 17 Jan 2020 08:14:15 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isMld-0005OT-Cz
 for linux-rockchip@lists.infradead.org; Fri, 17 Jan 2020 08:14:14 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id F072E8BF33;
 Fri, 17 Jan 2020 16:14:00 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P20995T139699247118080S1579248839183075_; 
 Fri, 17 Jan 2020 16:14:00 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5ec44f345caa1a6dbf50f637c1b15412>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org, heiko@sntech.de, david.wu@rock-chips.com,
 kever.yang@rock-chips.com
Subject: [PATCH 0/2] pinctrl: rockchip: codingstyle for pinctrl-rockchip
Date: Fri, 17 Jan 2020 16:13:56 +0800
Message-Id: <20200117081358.5772-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <c4ec95a7-aaf1-2331-352f-2def319a1c7d@rock-chips.com>
References: <c4ec95a7-aaf1-2331-352f-2def319a1c7d@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_001409_689862_DC691022 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-gpio@vger.kernel.org, jay.xu@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Do codingstyle for pinctrl-rockchip by spliting driver by SoC types.

Convenienty for reviewing, the first patch only moving
pinctrl-rockchip.c from driver/pinctrl to driver/pinctrl/rockchip/ .

Jianqun Xu (2):
  pinctrl: rockchip: new rockchip dir for pinctrl-rockchip
  pinctrl: rockchip: split rockchip pinctrl driver by SoC type

 drivers/pinctrl/Kconfig                     |    7 -
 drivers/pinctrl/pinctrl-rockchip.c          | 4254 -------------------
 drivers/pinctrl/rockchip/Kconfig            |  126 +
 drivers/pinctrl/rockchip/Makefile           |   16 +
 drivers/pinctrl/rockchip/pinctrl-px30.c     |  224 +
 drivers/pinctrl/rockchip/pinctrl-rk2928.c   |   70 +
 drivers/pinctrl/rockchip/pinctrl-rk3036.c   |   69 +
 drivers/pinctrl/rockchip/pinctrl-rk3066a.c  |   72 +
 drivers/pinctrl/rockchip/pinctrl-rk3066b.c  |   51 +
 drivers/pinctrl/rockchip/pinctrl-rk3128.c   |  161 +
 drivers/pinctrl/rockchip/pinctrl-rk3188.c   |  147 +
 drivers/pinctrl/rockchip/pinctrl-rk3228.c   |  225 +
 drivers/pinctrl/rockchip/pinctrl-rk3288.c   |  210 +
 drivers/pinctrl/rockchip/pinctrl-rk3308.c   |  420 ++
 drivers/pinctrl/rockchip/pinctrl-rk3328.c   |  272 ++
 drivers/pinctrl/rockchip/pinctrl-rk3368.c   |  125 +
 drivers/pinctrl/rockchip/pinctrl-rk3399.c   |  195 +
 drivers/pinctrl/rockchip/pinctrl-rockchip.c | 2063 +++++++++
 drivers/pinctrl/rockchip/pinctrl-rockchip.h |  388 ++
 drivers/pinctrl/rockchip/pinctrl-rv1108.c   |  214 +
 20 files changed, 5048 insertions(+), 4261 deletions(-)
 delete mode 100644 drivers/pinctrl/pinctrl-rockchip.c
 create mode 100644 drivers/pinctrl/rockchip/Kconfig
 create mode 100644 drivers/pinctrl/rockchip/Makefile
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-px30.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk2928.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3036.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3066a.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3066b.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3128.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3188.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3228.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3288.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3308.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3328.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3368.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3399.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rockchip.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rockchip.h
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rv1108.c

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
