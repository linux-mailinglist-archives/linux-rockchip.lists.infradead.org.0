Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 496ED1260E5
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Dec 2019 12:35:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZdey3V4GdSB/pdUTdDZCxBxgTozfQMNRsnPdy5yPFA=; b=ZjkWi7WzxizhBO
	Km1QhVYADa9DU+1CGVQP4dAUqn4HQ13/yt2I5lsw/+bPE0FMNt5f7bou2CQKY7k47/8tTfY/m3To4
	s5473/5rGug8LWfO3USybUTVM6IQcEigfBMs7vUgC+pyOGesWeT1JGzLdS6O8PgVxoamPwajHNpyc
	2so0W+3RxXcN99IukV2es+eo9kS8rOLaill5re4kuFzITcxqCCBTaSc79EK/y142Vtg+iPGUTe5pG
	TitYG1iDO/oE7qjG1hwt/9UEp9sC4nscIgmWV8IPGK6me7oobLkCSpAfq4qTSePnaojnBkzHQoHRr
	sCbxqNQyHGM+r5d3c3AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihu50-0002Ju-La; Thu, 19 Dec 2019 11:34:54 +0000
Received: from dougal.metanate.com ([90.155.101.14] helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihu4y-0002JK-7S
 for linux-rockchip@lists.infradead.org; Thu, 19 Dec 2019 11:34:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=simple/simple; d=metanate.com; 
 s=stronger;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+t6meyLimxsT415ahj+53VXcHIGJZ/WJo/94BvkPdTY=; b=UlGRgHp21+xHu2nMO7AWkfEW4A
 mDEXjAbJflenPqPZLThzcCYXiA70nWlPSpejUMm9Jcsvml+WyBVWjOXD4eosyP1uYGWuIfROYCC06
 zinHZgjgBhQZ8WcGHE9c8NQFqbilFl5FGF0sw/lZ2Jz4+g0cjJ7j/uqu2LweRSCoDVfh3rVBC+WaU
 +IJcBeNvDZdbOKOxBKpBKKrt8BHf4ED2A1yj7UuBgrSv41+HDCpDl3yOZxjAc3dGQ+24A9z5DnVnW
 JrY93X8Es0bzPFnrils6GJxnstoRzH9Q96pgh2vwsV/ruk5O8m67ERaGHKMPgjnKNvhri5baM3skh
 ZrRIiehA==;
Received: from 188-39-28-98.static.enta.net ([188.39.28.98]
 helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1ihu4k-00024T-7h; Thu, 19 Dec 2019 11:34:38 +0000
From: John Keeping <john@metanate.com>
To: Minas Harutyunyan <hminas@synopsys.com>
Subject: [PATCH 2/2] usb: dwc2: fix debugfs FIFO count
Date: Thu, 19 Dec 2019 11:34:32 +0000
Message-Id: <20191219113432.1229852-2-john@metanate.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219113432.1229852-1-john@metanate.com>
References: <20191219113432.1229852-1-john@metanate.com>
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_033452_262883_A7B1DAB3 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 John Keeping <john@metanate.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The number of FIFOs may be lower than the number of endpoints.  Use the
correct total when printing FIFO details in debugfs.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/usb/dwc2/debugfs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/debugfs.c b/drivers/usb/dwc2/debugfs.c
index b8f2790abf91..3a0dcbfbc827 100644
--- a/drivers/usb/dwc2/debugfs.c
+++ b/drivers/usb/dwc2/debugfs.c
@@ -183,6 +183,7 @@ DEFINE_SHOW_ATTRIBUTE(state);
 static int fifo_show(struct seq_file *seq, void *v)
 {
 	struct dwc2_hsotg *hsotg = seq->private;
+	int fifo_count = dwc2_hsotg_tx_fifo_count(hsotg);
 	u32 val;
 	int idx;
 
@@ -196,7 +197,7 @@ static int fifo_show(struct seq_file *seq, void *v)
 
 	seq_puts(seq, "\nPeriodic TXFIFOs:\n");
 
-	for (idx = 1; idx < hsotg->num_of_eps; idx++) {
+	for (idx = 1; idx <= fifo_count; idx++) {
 		val = dwc2_readl(hsotg, DPTXFSIZN(idx));
 
 		seq_printf(seq, "\tDPTXFIFO%2d: Size %d, Start 0x%08x\n", idx,
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
