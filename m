Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D121F31A0
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 03:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jVdb4bejj/HhwZjesOPgC6EeOPtd35/tQ2Xfle3Jxv0=; b=PMSUgFcIEcQuID2JeYVvcy1ckG
	EBI/pOUG+FOoa6e598lJd182xBiBocs0sXH0ekAn0eSl+OwBMRykDGVAENEuL6FRb/3zNMAjH8QJA
	tDLUSWcYJMq8+evY6RFHYRpzSmKEHD1Aa2fo+s+WrbX9IH4o7IfnTG3Y4hXDU1Y/0t+T/gABfAKEn
	BRmiJRYjP9bhXtTP+JIhEk1jseobDvS0jT80DvM4dv7KtwL1qeNblKrSzYkUJ3BPdQEsAmiIQiKMb
	/50xo/gtHUUEkNcTxk6T26Ilq2QbKhzayHvFBxeWf6REccT+0xU2+P2FlyRn5Yp/ddYJsWCpVW4nG
	fSSC9AQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiSrQ-0001T1-Sb; Tue, 09 Jun 2020 01:15:28 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiSqu-00073V-Kg
 for linux-rockchip@lists.infradead.org; Tue, 09 Jun 2020 01:14:58 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 5E617B948E;
 Tue,  9 Jun 2020 09:14:51 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P3328T139696397076224S1591665277471272_; 
 Tue, 09 Jun 2020 09:14:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f27bca5ede3b602b6f4942f971129562>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: vkoul@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 02/13] dmaengine: pl330: Add quirk 'arm, pl330-periph-burst'
Date: Tue,  9 Jun 2020 09:14:16 +0800
Message-Id: <1591665267-37713-3-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_181456_871393_EF1123EF 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.134 listed in wl.mailspike.net]
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
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patch adds the qurik to use busrt transfers only
for pl330 controller, even for request with a length of 1.

Although, the correct way should be: if the peripheral request
length is 1, the peripheral should use SINGLE request, and then
notify the dmac using SINGLE mode by src/dst_maxburst with 1.

For example, on the Rockchip SoCs, all the peripherals can use
SINGLE or BURST request by setting GRF registers. it is possible
that if these peripheral drivers are used only for Rockchip SoCs.
Unfortunately, it's not, such as dw uart, which is used so widely,
and we can't set src/dst_maxburst according to the SoCs' specific
to compatible with all the other SoCs.

So, for convenience, all the peripherals are set as BURST request
by default on the Rockchip SoCs. even for request with a length of 1.
the current pl330 driver will perform SINGLE transfer if the client's
maxburst is 1, which still should be working according to chapter 2.6.6
of datasheet which describe how DMAC performs SINGLE transfers for
a BURST request. unfortunately, it's broken on the Rockchip SoCs,
which support only matching transfers, such as BURST transfer for
BURST request, SINGLE transfer for SINGLE request.

Finaly, we add the quirk to specify pl330 to use burst transfers only.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v2: None

 drivers/dma/pl330.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index ff0a91f..1941ec6 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -33,7 +33,8 @@
 #define PL330_MAX_PERI		32
 #define PL330_MAX_BURST         16
 
-#define PL330_QUIRK_BROKEN_NO_FLUSHP BIT(0)
+#define PL330_QUIRK_BROKEN_NO_FLUSHP	BIT(0)
+#define PL330_QUIRK_PERIPH_BURST	BIT(1)
 
 enum pl330_cachectrl {
 	CCTRL0,		/* Noncacheable and nonbufferable */
@@ -509,6 +510,10 @@ static struct pl330_of_quirks {
 	{
 		.quirk = "arm,pl330-broken-no-flushp",
 		.id = PL330_QUIRK_BROKEN_NO_FLUSHP,
+	},
+	{
+		.quirk = "arm,pl330-periph-burst",
+		.id = PL330_QUIRK_PERIPH_BURST,
 	}
 };
 
@@ -1206,6 +1211,9 @@ static int _bursts(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 	int off = 0;
 	enum pl330_cond cond = BRST_LEN(pxs->ccr) > 1 ? BURST : SINGLE;
 
+	if (pl330->quirks & PL330_QUIRK_PERIPH_BURST)
+		cond = BURST;
+
 	switch (pxs->desc->rqtype) {
 	case DMA_MEM_TO_DEV:
 		/* fall through */
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
