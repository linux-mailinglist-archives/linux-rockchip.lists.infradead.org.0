Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791301F13F3
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 09:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ICp6bsI2bCrHYxSzWf+XPpp8rYAZI6HBTS3b76/jE6E=; b=S1LVumQ1n7v3qSN/auL0E7i620
	+XsIp8EiCLIBJWxdjs0ThA4VtDuWZw3A940GPaDdESqAwQZXiph+9nNGxbLPcnAcF9Gk8R0cDQZd7
	nK8v4AyB6NurS78c6SJ5yk//soMR/8H4hjYm6e3YQj0fhK7hafc/dIEADN0ZoNVEcKqxl41nQgQTb
	pB/IP8NJBq8WAF/iUu8k/6fi4CyFPHN9OVL7qMdu9H+D6s+GGHh3FBlSDTYRjNOBFB9qIifIUePwH
	sAdraf8L1+oAuH1P/Cibflhv7XYkO5vUxVBmcajDMwNBWq/mzm6iXepK448SV+A3OL7dITk2PEXKb
	Ukj+oszg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiCYO-0004OV-0x; Mon, 08 Jun 2020 07:50:44 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiCXY-0001Jm-P2
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 07:49:55 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 0965EB9497;
 Mon,  8 Jun 2020 15:49:39 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P760T139944219621120S1591602577688290_; 
 Mon, 08 Jun 2020 15:49:40 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <30efeeb53ac81d42f22810353786f083>
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
Subject: [PATCH v1 01/13] dmaengine: pl330: Remove the burst limit for quirk
 'NO-FLUSHP'
Date: Mon,  8 Jun 2020 15:49:15 +0800
Message-Id: <1591602567-43788-2-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591602567-43788-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1591602567-43788-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_004953_292857_2EEB4F9D 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.134 listed in wl.mailspike.net]
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
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

There is no reason to limit the performance on the 'NO-FLUSHP' SoCs,
cuz these platforms are just that the 'FLUSHP' instruction is broken.
so, remove the limit to improve the efficiency.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 drivers/dma/pl330.c | 34 ++++++++++++++++++++++------------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index 6a158ee..ff0a91f 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -1183,9 +1183,6 @@ static inline int _ldst_peripheral(struct pl330_dmac *pl330,
 {
 	int off = 0;
 
-	if (pl330->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP)
-		cond = BURST;
-
 	/*
 	 * do FLUSHP at beginning to clear any stale dma requests before the
 	 * first WFP.
@@ -1231,8 +1228,9 @@ static int _bursts(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 }
 
 /*
- * transfer dregs with single transfers to peripheral, or a reduced size burst
- * for mem-to-mem.
+ * only the unaligned bursts transfers have the dregs.
+ * transfer dregs with a reduced size burst to peripheral,
+ * or a reduced size burst for mem-to-mem.
  */
 static int _dregs(struct pl330_dmac *pl330, unsigned int dry_run, u8 buf[],
 		const struct _xfer_spec *pxs, int transfer_length)
@@ -1247,8 +1245,23 @@ static int _dregs(struct pl330_dmac *pl330, unsigned int dry_run, u8 buf[],
 	case DMA_MEM_TO_DEV:
 		/* fall through */
 	case DMA_DEV_TO_MEM:
-		off += _ldst_peripheral(pl330, dry_run, &buf[off], pxs,
-			transfer_length, SINGLE);
+		/*
+		 * dregs_len = (total bytes - BURST_TO_BYTE(bursts, ccr)) /
+		 *             BRST_SIZE(ccr)
+		 * the dregs len must be smaller than burst len,
+		 * so, for higher efficiency, we can modify CCR
+		 * to use a reduced size burst len for the dregs.
+		 */
+		dregs_ccr = pxs->ccr;
+		dregs_ccr &= ~((0xf << CC_SRCBRSTLEN_SHFT) |
+			(0xf << CC_DSTBRSTLEN_SHFT));
+		dregs_ccr |= (((transfer_length - 1) & 0xf) <<
+			CC_SRCBRSTLEN_SHFT);
+		dregs_ccr |= (((transfer_length - 1) & 0xf) <<
+			CC_DSTBRSTLEN_SHFT);
+		off += _emit_MOV(dry_run, &buf[off], CCR, dregs_ccr);
+		off += _ldst_peripheral(pl330, dry_run, &buf[off], pxs, 1,
+					BURST);
 		break;
 
 	case DMA_MEM_TO_MEM:
@@ -2221,9 +2234,7 @@ static bool pl330_prep_slave_fifo(struct dma_pl330_chan *pch,
 
 static int fixup_burst_len(int max_burst_len, int quirks)
 {
-	if (quirks & PL330_QUIRK_BROKEN_NO_FLUSHP)
-		return 1;
-	else if (max_burst_len > PL330_MAX_BURST)
+	if (max_burst_len > PL330_MAX_BURST)
 		return PL330_MAX_BURST;
 	else if (max_burst_len < 1)
 		return 1;
@@ -3128,8 +3139,7 @@ pl330_probe(struct amba_device *adev, const struct amba_id *id)
 	pd->dst_addr_widths = PL330_DMA_BUSWIDTHS;
 	pd->directions = BIT(DMA_DEV_TO_MEM) | BIT(DMA_MEM_TO_DEV);
 	pd->residue_granularity = DMA_RESIDUE_GRANULARITY_BURST;
-	pd->max_burst = ((pl330->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP) ?
-			 1 : PL330_MAX_BURST);
+	pd->max_burst = PL330_MAX_BURST;
 
 	ret = dma_async_device_register(pd);
 	if (ret) {
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
