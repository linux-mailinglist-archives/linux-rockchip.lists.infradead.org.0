Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF205F3BE
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Apr 2019 12:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A+XySWYx0TtCMYtJCj0F5X1cvz6zeIDiiqOhktYUElk=; b=lOR
	9K++SuTb3ODcFFrg3t7AVjvZYyjgzgeoauQa9MtOi0J0brd9/WDm+OH5LaqoPv5KMWvVhEAVDANn2
	4WP1RcSdtU70q/ovCOUPBg3K1GXAAl8yiMZpMdPSri374t7WBEJzNIkgHdig9aXYn7hEQzDwmABKq
	Sd+8UHX7FS7BlAD7x8hS1OgzFzEusF9iSK5b8od6/imUmrAOMdj5j0Hc+AJQFrlRmawpRQ91cviIh
	YafNi+2FNWQrDAWD9Z7JEtTCMo8KU22JwOzObNV55EmPrv8/lELf6vDOaaoc3TB5FmHgQtCQk50qc
	MuQx7WST4NAH80xLmRNggqPVjykPsCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPiT-0005Dv-Fi; Tue, 30 Apr 2019 10:10:25 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPi5-0003XH-3x; Tue, 30 Apr 2019 10:10:03 +0000
Received: from zhangqing?rock-chips.com (unknown [192.168.167.190])
 by regular1.263xmail.com (Postfix) with ESMTP id 5A98366C;
 Tue, 30 Apr 2019 18:09:48 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P7395T139736951809792S1556618984950678_; 
 Tue, 30 Apr 2019 18:09:47 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e40b688152b9bf062824c7dd589b4166>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v3 0/3] thermal: rockchip: fix up thermal driver
Date: Tue, 30 Apr 2019 18:09:43 +0800
Message-Id: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_031001_822251_76F0F90D 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Elaine Zhang <zhangqing@rock-chips.com>, huangtao@rock-chips.com,
 linux-pm@vger.kernel.org, xxx@rock-chips.com, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, xf@rock-chips.com, edubezval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

1. add pinctrl control.
2. support PX30 soc

change in V3:
PATCH V3 1/3: remove panic.
PATCH V3 2/3: No change in V3.
PATCH V3 2/3: No change in V3

change in V2:
PATCH V2 1/3: keep tshut_mode TSHUT_MODE_GPIO;
              In case of pinctrl get or lookup error, just bail out;
              No need to use the thermal_pinctrl_select_otp/gpio wrappers,
              just replace them with:
PATCH V2 2/3: No change in V2.
PATCH V2 2/3: keep tshut_mode TSHUT_MODE_GPIO;
              Remove the grf in 'rk_tsadcv4_initialize' function.

Elaine Zhang (3):
  thermal: rockchip: fix up the tsadc pinctrl setting error
  dt-bindings: rockchip-thermal: Support the PX30 SoC compatible
  thermal: rockchip: Support the PX30 SoC in thermal driver

 .../bindings/thermal/rockchip-thermal.txt          |  1 +
 drivers/thermal/rockchip_thermal.c                 | 74 +++++++++++++++++++++-
 2 files changed, 72 insertions(+), 3 deletions(-)

-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
