Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF57F3C0
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Apr 2019 12:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=28hvBDrFbFC11MnycW/W9MPICbTHFnTe0y7P8nFTraA=; b=Wa6mqq27MFZhMhrEOKJLQ5Ow06
	AB0WLnbhtDkG8xMyq5fKYK66KvLeuHw8+C+OTIdWUGL3ag+aXEL/UU8oCQbCS4J0d5YvbGvlQZucZ
	XE9f4dm6Qlsyc63X2XPZz99+lk7UOQnEZyJoyd6Ebzv9UEyszqlOio3z5Jlf1gUKsSKVJ8LJXxNhp
	GnC0xbaf/C8NavA6w6sIUDSocUJ+8cnSFl79JVDjRdntf9pggmvU/J/W8Sr9V7hYNNQCC0DbVlIPe
	CaRkYd5ensaIc4vmLAD/37sRRc5PDPnnAJ8swnLxOJoe6suBeTxZBQsFoVLY3n6i6n96EDCVmysNd
	vQ36rl2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPiW-0005IQ-7A; Tue, 30 Apr 2019 10:10:28 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPi6-0003Xf-N8; Tue, 30 Apr 2019 10:10:04 +0000
Received: from zhangqing?rock-chips.com (unknown [192.168.167.190])
 by regular1.263xmail.com (Postfix) with ESMTP id 584EB4AC;
 Tue, 30 Apr 2019 18:09:50 +0800 (CST)
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
 Tue, 30 Apr 2019 18:09:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <df2e277c09e61b2ef6ca1a8703929322>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v3 2/3] dt-bindings: rockchip-thermal: Support the PX30 SoC
 compatible
Date: Tue, 30 Apr 2019 18:09:45 +0800
Message-Id: <1556618986-18923-3-git-send-email-zhangqing@rock-chips.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
References: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_031002_943206_320ABCEE 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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

Add a new compatible for thermal founding on PX30 SoCs.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/thermal/rockchip-thermal.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
index 43d744e5305e..c6aac9bcacf1 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
@@ -2,6 +2,7 @@
 
 Required properties:
 - compatible : should be "rockchip,<name>-tsadc"
+   "rockchip,px30-tsadc":   found on PX30 SoCs
    "rockchip,rv1108-tsadc": found on RV1108 SoCs
    "rockchip,rk3228-tsadc": found on RK3228 SoCs
    "rockchip,rk3288-tsadc": found on RK3288 SoCs
-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
