Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535421260E6
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Dec 2019 12:35:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uf8JIIh2tijJKTODPC3bpaX27/AO5PQPZSmwPG2Odf8=; b=nyRsS+G64ewIAZ
	CoXaTec5+dWQonXvlEQSMzIvnu17jQyce7O1DLlrznQFvhG+euXtShPA4oa0vBvd55KmZi4lN55QF
	Nu05xc7XtmN2e2Z1ylxWxff3VNipqwXrIjat35ebEu1LrX3tlkvXAFbmKJ3towHDh3N7hOvp+ANxW
	cX68TfjHK4h96GPkgpq3BgEQqBRM16/ijyR8riO8p8yNEdilSMUYCx45tX4sZ5stwenRUNumEja4E
	agL6D2IsDcxNUieQlp9iwWLPaw1jFfeArdgjJiTAbEW8jy1lKciFaX4dlxq+LwBX9Mguuh5zb3TkY
	8v2vEPeG5qa3FaW459ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihu51-0002KR-DP; Thu, 19 Dec 2019 11:34:55 +0000
Received: from dougal.metanate.com ([90.155.101.14] helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihu4y-0002JL-7R
 for linux-rockchip@lists.infradead.org; Thu, 19 Dec 2019 11:34:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=simple/simple; d=metanate.com; 
 s=stronger;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tmKdpt8FfuaV6nRnJAttHNQVsa8S40+mibR855aHQJg=; b=wACAMuy2aD0a0GYTT1d2De4df5
 Osp+Jt0hP6KqVmVaP4NXmXxS2prRPv5FjUW8XIudomRk3VnUCQBbpXyPbFQ0kkRNrxVnjTqwpOsGj
 oUY5SoF3GZ05cXNgDxNhpVSFanqqcroaox+vRe0JFXequ5RRDnm5nun2VViGeOHXXyShM6uD9erSI
 jXtWi2fPTtVooOUmTtXLaI/Y88p+GxN9lz7HSQOLmy9ykBdtC6Cr3dSTtv8ribR4ifiLkCWJe/Ead
 +lIjqdjyybE0XhlRRLRwiQTpuOkd0Xf8sEopsR0K/GRH6DlG4lmSq7haV+BoxWTIVlrf/hIjLLSO6
 2ws5Curw==;
Received: from 188-39-28-98.static.enta.net ([188.39.28.98]
 helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1ihu4j-00024T-UX; Thu, 19 Dec 2019 11:34:38 +0000
From: John Keeping <john@metanate.com>
To: Minas Harutyunyan <hminas@synopsys.com>
Subject: [PATCH 1/2] usb: dwc2: Fix IN FIFO allocation
Date: Thu, 19 Dec 2019 11:34:31 +0000
Message-Id: <20191219113432.1229852-1-john@metanate.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_033452_266164_96062BB9 
X-CRM114-Status: UNSURE (   9.36  )
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

On chips with fewer FIFOs than endpoints (for example RK3288 which has 9
endpoints, but only 6 which are cabable of input), the DPTXFSIZN
registers above the FIFO count may return invalid values.

With logging added on startup, I see:

	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=1 sz=256
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=2 sz=128
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=3 sz=128
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=4 sz=64
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=5 sz=64
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=6 sz=32
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=7 sz=0
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=8 sz=0
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=9 sz=0
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=10 sz=0
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=11 sz=0
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=12 sz=0
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=13 sz=0
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=14 sz=0
	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=15 sz=0

but:

	# cat /sys/kernel/debug/ff580000.usb/fifo
	Non-periodic FIFOs:
	RXFIFO: Size 275
	NPTXFIFO: Size 16, Start 0x00000113

	Periodic TXFIFOs:
		DPTXFIFO 1: Size 256, Start 0x00000123
		DPTXFIFO 2: Size 128, Start 0x00000223
		DPTXFIFO 3: Size 128, Start 0x000002a3
		DPTXFIFO 4: Size 64, Start 0x00000323
		DPTXFIFO 5: Size 64, Start 0x00000363
		DPTXFIFO 6: Size 32, Start 0x000003a3
		DPTXFIFO 7: Size 0, Start 0x000003e3
		DPTXFIFO 8: Size 0, Start 0x000003a3
		DPTXFIFO 9: Size 256, Start 0x00000123

so it seems that FIFO 9 is mirroring FIFO 1.

Fix the allocation by using the FIFO count instead of the endpoint count
when selecting a FIFO for an endpoint.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/usb/dwc2/gadget.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index 92e8de9cb45c..911b950ef25e 100644
--- a/drivers/usb/dwc2/gadget.c
+++ b/drivers/usb/dwc2/gadget.c
@@ -4059,11 +4059,12 @@ static int dwc2_hsotg_ep_enable(struct usb_ep *ep,
 	 * a unique tx-fifo even if it is non-periodic.
 	 */
 	if (dir_in && hsotg->dedicated_fifos) {
+		unsigned fifo_count = dwc2_hsotg_tx_fifo_count(hsotg);
 		u32 fifo_index = 0;
 		u32 fifo_size = UINT_MAX;
 
 		size = hs_ep->ep.maxpacket * hs_ep->mc;
-		for (i = 1; i < hsotg->num_of_eps; ++i) {
+		for (i = 1; i <= fifo_count; ++i) {
 			if (hsotg->fifo_map & (1 << i))
 				continue;
 			val = dwc2_readl(hsotg, DPTXFSIZN(i));
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
