Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8CADE6E2
	for <lists+linux-rockchip@lfdr.de>; Mon, 21 Oct 2019 10:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=szhcQ1CWmRRL9jhclnTaNWzOpMoXOmWle9HOC06i+UU=; b=HvGGrlK6jSZiLliPhXU8BW8DtY
	Li7GD7Bjf0AZ0g/OUiqY9sPB6mS+lXFlbzaB0EucoonG0esskeKyzTl3mx1vuu8WDKrAOPhVmtfGU
	D34VuppHJl1L3xkZhBCbDtl8TEVqpXx0qZ1o1Jy7RSNXbb2UuT8mB4uJOSo58dKx6aREPzvxlek9D
	LB/x6b228bGgexX7cBkl8wV5uGG5HzUXG1h+w7Itcw+fQM7zwr2gKOh46Q92PYBJcW2+IJsIAbvGU
	w7jQ5jWaJxJhFehtQHgQsjeMK4DP6Q/CWYDGquqSNQKAvZ77jzcB2zIlGRX7CCyysVz6v5jsTvFbj
	v3sFBkRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTKZ-0004Qv-3G; Mon, 21 Oct 2019 08:46:23 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTKM-0004Hh-Bc; Mon, 21 Oct 2019 08:46:12 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 2005162611;
 Mon, 21 Oct 2019 16:46:02 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P9443T140135366645504S1571647557719797_; 
 Mon, 21 Oct 2019 16:46:02 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <58dcc17083b16c9ce514e6fb9eaa6e1c>
X-RL-SENDER: andy.yan@rock-chips.com
X-SENDER: yxj@rock-chips.com
X-LOGIN-NAME: andy.yan@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Andy Yan <andy.yan@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/4] dt-bindings: Add doc about rk3308 General Register
 Files
Date: Mon, 21 Oct 2019 16:45:55 +0800
Message-Id: <20191021084555.28356-1-andy.yan@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021084437.28279-1-andy.yan@rock-chips.com>
References: <20191021084437.28279-1-andy.yan@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_014610_556433_38629C0C 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RK3308 GRF is divided into four sections: GRF, SGRF,
DETECTGRF, COREGRF. This patch add documentation for
it.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2: None

 .../devicetree/bindings/soc/rockchip/grf.txt          | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.txt b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
index d7debec26ba4..61d89749918a 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.txt
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
@@ -10,6 +10,12 @@ From RK3368 SoCs, the GRF is divided into two sections,
 
 On RK3328 SoCs, the GRF adds a section for USB2PHYGRF,
 
+ON RK3308 SoC, the GRF is divided into four sections:
+- GRF, used for general non-secure system,
+- SGRF, used for general secure system,
+- DETECTGRF, used for audio codec system,
+- COREGRF, used for pvtm,
+
 Required Properties:
 
 - compatible: GRF should be one of the following:
@@ -19,10 +25,15 @@ Required Properties:
    - "rockchip,rk3188-grf", "syscon": for rk3188
    - "rockchip,rk3228-grf", "syscon": for rk3228
    - "rockchip,rk3288-grf", "syscon": for rk3288
+   - "rockchip,rk3308-grf", "syscon": for rk3308
    - "rockchip,rk3328-grf", "syscon": for rk3328
    - "rockchip,rk3368-grf", "syscon": for rk3368
    - "rockchip,rk3399-grf", "syscon": for rk3399
    - "rockchip,rv1108-grf", "syscon": for rv1108
+- compatible: DETECTGRF should be one of the following:
+   - "rockchip,rk3308-detect-grf", "syscon": for rk3308
+- compatilbe: COREGRF should be one of the following:
+   - "rockchip,rk3308-core-grf", "syscon": for rk3308
 - compatible: PMUGRF should be one of the following:
    - "rockchip,px30-pmugrf", "syscon": for px30
    - "rockchip,rk3368-pmugrf", "syscon": for rk3368
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
