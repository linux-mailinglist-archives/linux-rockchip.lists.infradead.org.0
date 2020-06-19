Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E69991FFFE8
	for <lists+linux-rockchip@lfdr.de>; Fri, 19 Jun 2020 03:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=njorAF9vzHi2x2m4V5eanAYuBUHeQJFgXWlahFa8400=; b=X8U
	K7cn/fFKowOrEBWUcPk22L+HrVLSW9MbGA8lFlY/nijYCk/ECyIttX58mrsTK1VY6qtv5kEIYpdkU
	aWbl8mTvtncxf2T/3fWcmRzIpv6Nf4U3eAepH3Aoz0MAefZ4oMRyL3cBQfWECX7zQupaC07DaZZyU
	QeI9tG2G9SJvgkg/7EHCPDs/5l+m+QlF/bYuxYAzRkyosVuVkGOf5Bih4yGPDi6EK2p/eeTd/jg/h
	7so0AJmDqnBliv1K6kL0qycsgCZMOA0ZTQZPRSKStXPA8fcIvjJjkOQuHKRdxIvCJ70CJdfriGGQg
	rQ/UGMMF9c01/s5PDB29aoaKdcWof1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm6CO-0004J8-7E; Fri, 19 Jun 2020 01:52:08 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm6CK-0004I9-8W
 for linux-rockchip@lists.infradead.org; Fri, 19 Jun 2020 01:52:06 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id ABE87CA699;
 Fri, 19 Jun 2020 09:51:52 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P15426T140189185066752S1592531511027415_; 
 Fri, 19 Jun 2020 09:51:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e06d658c216d5f17574a771ae9beedb1>
X-RL-SENDER: finley.xiao@rock-chips.com
X-SENDER: xf@rock-chips.com
X-LOGIN-NAME: finley.xiao@rock-chips.com
X-FST-TO: xf@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Finley Xiao <finley.xiao@rock-chips.com>
To: xf@rock-chips.com, heiko@sntech.de, amit.kachhap@gmail.com,
 daniel.lezcano@linaro.org, viresh.kumar@linaro.org, javi.merino@kernel.org,
 rui.zhang@intel.com, amit.kucheria@verdurent.com
Subject: [PATCH] thermal/drivers/cpufreq_cooling: Fix wrong frequency
 converted from power
Date: Fri, 19 Jun 2020 09:51:26 +0800
Message-Id: <20200619015126.15002-1-finley.xiao@rock-chips.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_185204_461593_527E18F1 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.130 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.130 listed in wl.mailspike.net]
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
Cc: huangtao@rock-chips.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, Finley Xiao <finley.xiao@rock-chips.com>,
 cl@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The function cpu_power_to_freq is used to find a frequency and set the
cooling device to consume at most the power to be converted. For example,
if the power to be converted is 80mW, and the em table is as follow.
struct em_cap_state table[] = {
	/* KHz     mW */
	{ 1008000, 36, 0 },
	{ 1200000, 49, 0 },
	{ 1296000, 59, 0 },
	{ 1416000, 72, 0 },
	{ 1512000, 86, 0 },
};
The target frequency should be 1416000KHz, not 1512000KHz.

Fixes: 349d39dc5739 ("thermal: cpu_cooling: merge frequency and power tables")
Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
---
 drivers/thermal/cpufreq_cooling.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/thermal/cpufreq_cooling.c b/drivers/thermal/cpufreq_cooling.c
index 9e124020519f..6c0e1b053126 100644
--- a/drivers/thermal/cpufreq_cooling.c
+++ b/drivers/thermal/cpufreq_cooling.c
@@ -123,12 +123,12 @@ static u32 cpu_power_to_freq(struct cpufreq_cooling_device *cpufreq_cdev,
 {
 	int i;
 
-	for (i = cpufreq_cdev->max_level - 1; i >= 0; i--) {
-		if (power > cpufreq_cdev->em->table[i].power)
+	for (i = cpufreq_cdev->max_level; i >= 0; i--) {
+		if (power >= cpufreq_cdev->em->table[i].power)
 			break;
 	}
 
-	return cpufreq_cdev->em->table[i + 1].frequency;
+	return cpufreq_cdev->em->table[i].frequency;
 }
 
 /**
-- 
2.11.0




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
