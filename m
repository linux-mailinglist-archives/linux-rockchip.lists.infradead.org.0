Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D327315CC
	for <lists+linux-rockchip@lfdr.de>; Fri, 31 May 2019 22:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P85WBvNPrl48yZkRAFq0t80gTqbZo2kXrlk3n38Y3Tk=; b=BjAyKmyl+BKF62
	Vy2F9o08VtAwSqVrmJuyDsG2KhtssNFrFTtocB2GIJJRoBvIn9gsRKLqwexyn1GMtOM1Iy9pEz/lL
	6jEQDGrpNj1JVCypvdlDh5topdamioykSaXC1yV5bNo6ykihxd1U9yDIVJVO/9G5/9oiiCzPhjbnK
	xXQVKbVkBTdtSbMzFsj/W2t+lAv64G+lVmeCX8NOKwWDvEeR/uvuwviw/E8hO3Pn3/8tE5o/tgesl
	G4zNuNgH9B9N1wW9TmMrbykfo11F9yTpOyIxjKjeEgFtcq2MVELC+tmI4N8a/9RRyZQNelesvoCFH
	mVHMtMAsOoZL0OsJbOKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWnlm-0000M0-I0; Fri, 31 May 2019 20:04:54 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWnlj-0000LU-Hi
 for linux-rockchip@lists.infradead.org; Fri, 31 May 2019 20:04:53 +0000
Received: by mail-pg1-x543.google.com with SMTP id v11so4611314pgl.5
 for <linux-rockchip@lists.infradead.org>; Fri, 31 May 2019 13:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=112Zovjtx8ZJr1t4s7LUgNI3HCAGsmSvfOjQRnyMJCU=;
 b=XxlXQ2LA/Fd9NkSesPvODwD6A3tksGsqrm9lVeOG5pHiO8te7bj9+Wr9ALiY1LHYhc
 kfp/43WLVOLMo+N8RMOwetkmI60RcS4TH5h1vGced56vFH3ZHuCo9C0hTL920OCrQE8Z
 gKTi52cWIJxbFcnl6g8BP21BCKYbdUciAUYB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=112Zovjtx8ZJr1t4s7LUgNI3HCAGsmSvfOjQRnyMJCU=;
 b=lqiY8puSTNc2HPyVxpTJDx+sUsqiqPjTm6gQ4NH+kAf7zLfroRhenZntovpCBcgwEK
 f558BBS2LcCNdN5znCIE2bfKIRnxetahkHufWAVoYOXez61hqV/8/TMVbE92KnEUwFiw
 9EfqVyv7IJAckSk2fxylOdmu2gPys/qxMGPrl/1uOrCZf2yrdfJ+csrT2hfZQho6cQ8y
 Y6k2+JY6wU3IDBkZ49MwzWnqFyJrm2zxWmMCwT15/1sTD5gZ4XDRmnZY6eDZMHzJIGqj
 rnczA8wRacZHlM4QF7iXMaedTQNv6fg5vQ+e+M/CXVf3tf3IHRSpNqiPpqahgPFjdsVC
 20zw==
X-Gm-Message-State: APjAAAU53kfv6S7sxamhwSujfl28mEyZEgzcLQ6DKopQRYH2GKzP6Lu9
 s7S0CVB37QdkSQCwSeX3rdqrDw==
X-Google-Smtp-Source: APXvYqxeTGnGGkTjihI9uH7d87T5xK7nlJC61qOLzE4WGy41v83odHoZijRIrqBW0NIFX0gqq5wJVw==
X-Received: by 2002:a62:3287:: with SMTP id y129mr7161023pfy.101.1559333089720; 
 Fri, 31 May 2019 13:04:49 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id z4sm6856910pfa.142.2019.05.31.13.04.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 13:04:49 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Felipe Balbi <felipe.balbi@linux.intel.com>,
 Minas Harutyunyan <hminas@synopsys.com>
Subject: [PATCH] usb: dwc2: host: Fix wMaxPacketSize handling (fix webcam
 regression)
Date: Fri, 31 May 2019 13:04:12 -0700
Message-Id: <20190531200412.129429-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_130451_635536_D8BF587F 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Martin Schiller <ms@dev.tdt.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, stable@vger.kernel.org,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org, mka@chromium.org,
 groeck@chromium.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In commit abb621844f6a ("usb: ch9: make usb_endpoint_maxp() return
only packet size") the API to usb_endpoint_maxp() changed.  It used to
just return wMaxPacketSize but after that commit it returned
wMaxPacketSize with the high bits (the multiplier) masked off.  If you
wanted to get the multiplier it was now up to your code to call the
new usb_endpoint_maxp_mult() which was introduced in
commit 541b6fe63023 ("usb: add helper to extract bits 12:11 of
wMaxPacketSize").

Prior to the API change most host drivers were updated, but no update
was made to dwc2.  Presumably it was assumed that dwc2 was too
simplistic to use the multiplier and thus just didn't support a
certain class of USB devices.  However, it turns out that dwc2 did use
the multiplier and many devices using it were working quite nicely.
That means that many USB devices have been broken since the API
change.  One such device is a Logitech HD Pro Webcam C920.

Specifically, though dwc2 didn't directly call usb_endpoint_maxp(), it
did call usb_maxpacket() which in turn called usb_endpoint_maxp().

Let's update dwc2 to work properly with the new API.

Fixes: abb621844f6a ("usb: ch9: make usb_endpoint_maxp() return only packet size")
Cc: stable@vger.kernel.org
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/usb/dwc2/hcd.c       | 29 +++++++++++++++++------------
 drivers/usb/dwc2/hcd.h       | 20 +++++++++++---------
 drivers/usb/dwc2/hcd_intr.c  |  5 +++--
 drivers/usb/dwc2/hcd_queue.c | 10 ++++++----
 4 files changed, 37 insertions(+), 27 deletions(-)

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index b50ec3714fd8..5c51bf5506d1 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -2608,7 +2608,7 @@ static int dwc2_assign_and_init_hc(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 	chan->dev_addr = dwc2_hcd_get_dev_addr(&urb->pipe_info);
 	chan->ep_num = dwc2_hcd_get_ep_num(&urb->pipe_info);
 	chan->speed = qh->dev_speed;
-	chan->max_packet = dwc2_max_packet(qh->maxp);
+	chan->max_packet = qh->maxp;
 
 	chan->xfer_started = 0;
 	chan->halt_status = DWC2_HC_XFER_NO_HALT_STATUS;
@@ -2686,7 +2686,7 @@ static int dwc2_assign_and_init_hc(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 		 * This value may be modified when the transfer is started
 		 * to reflect the actual transfer length
 		 */
-		chan->multi_count = dwc2_hb_mult(qh->maxp);
+		chan->multi_count = qh->maxp_mult;
 
 	if (hsotg->params.dma_desc_enable) {
 		chan->desc_list_addr = qh->desc_list_dma;
@@ -3806,19 +3806,21 @@ static struct dwc2_hcd_urb *dwc2_hcd_urb_alloc(struct dwc2_hsotg *hsotg,
 
 static void dwc2_hcd_urb_set_pipeinfo(struct dwc2_hsotg *hsotg,
 				      struct dwc2_hcd_urb *urb, u8 dev_addr,
-				      u8 ep_num, u8 ep_type, u8 ep_dir, u16 mps)
+				      u8 ep_num, u8 ep_type, u8 ep_dir,
+				      u16 maxp, u16 maxp_mult)
 {
 	if (dbg_perio() ||
 	    ep_type == USB_ENDPOINT_XFER_BULK ||
 	    ep_type == USB_ENDPOINT_XFER_CONTROL)
 		dev_vdbg(hsotg->dev,
-			 "addr=%d, ep_num=%d, ep_dir=%1x, ep_type=%1x, mps=%d\n",
-			 dev_addr, ep_num, ep_dir, ep_type, mps);
+			 "addr=%d, ep_num=%d, ep_dir=%1x, ep_type=%1x, maxp=%d (%d mult)\n",
+			 dev_addr, ep_num, ep_dir, ep_type, maxp, maxp_mult);
 	urb->pipe_info.dev_addr = dev_addr;
 	urb->pipe_info.ep_num = ep_num;
 	urb->pipe_info.pipe_type = ep_type;
 	urb->pipe_info.pipe_dir = ep_dir;
-	urb->pipe_info.mps = mps;
+	urb->pipe_info.maxp = maxp;
+	urb->pipe_info.maxp_mult = maxp_mult;
 }
 
 /*
@@ -3909,8 +3911,9 @@ void dwc2_hcd_dump_state(struct dwc2_hsotg *hsotg)
 					dwc2_hcd_is_pipe_in(&urb->pipe_info) ?
 					"IN" : "OUT");
 				dev_dbg(hsotg->dev,
-					"      Max packet size: %d\n",
-					dwc2_hcd_get_mps(&urb->pipe_info));
+					"      Max packet size: %d (%d mult)\n",
+					dwc2_hcd_get_maxp(&urb->pipe_info),
+					dwc2_hcd_get_maxp_mult(&urb->pipe_info));
 				dev_dbg(hsotg->dev,
 					"      transfer_buffer: %p\n",
 					urb->buf);
@@ -4510,8 +4513,10 @@ static void dwc2_dump_urb_info(struct usb_hcd *hcd, struct urb *urb,
 	}
 
 	dev_vdbg(hsotg->dev, "  Speed: %s\n", speed);
-	dev_vdbg(hsotg->dev, "  Max packet size: %d\n",
-		 usb_maxpacket(urb->dev, urb->pipe, usb_pipeout(urb->pipe)));
+	dev_vdbg(hsotg->dev, "  Max packet size: %d (%d mult)\n",
+		 usb_endpoint_maxp(&urb->ep->desc),
+		 usb_endpoint_maxp_mult(&urb->ep->desc));
+
 	dev_vdbg(hsotg->dev, "  Data buffer length: %d\n",
 		 urb->transfer_buffer_length);
 	dev_vdbg(hsotg->dev, "  Transfer buffer: %p, Transfer DMA: %08lx\n",
@@ -4594,8 +4599,8 @@ static int _dwc2_hcd_urb_enqueue(struct usb_hcd *hcd, struct urb *urb,
 	dwc2_hcd_urb_set_pipeinfo(hsotg, dwc2_urb, usb_pipedevice(urb->pipe),
 				  usb_pipeendpoint(urb->pipe), ep_type,
 				  usb_pipein(urb->pipe),
-				  usb_maxpacket(urb->dev, urb->pipe,
-						!(usb_pipein(urb->pipe))));
+				  usb_endpoint_maxp(&ep->desc),
+				  usb_endpoint_maxp_mult(&ep->desc));
 
 	buf = urb->transfer_buffer;
 
diff --git a/drivers/usb/dwc2/hcd.h b/drivers/usb/dwc2/hcd.h
index c089ffa1f0a8..ce6445a06588 100644
--- a/drivers/usb/dwc2/hcd.h
+++ b/drivers/usb/dwc2/hcd.h
@@ -171,7 +171,8 @@ struct dwc2_hcd_pipe_info {
 	u8 ep_num;
 	u8 pipe_type;
 	u8 pipe_dir;
-	u16 mps;
+	u16 maxp;
+	u16 maxp_mult;
 };
 
 struct dwc2_hcd_iso_packet_desc {
@@ -264,6 +265,7 @@ struct dwc2_hs_transfer_time {
  *                       - USB_ENDPOINT_XFER_ISOC
  * @ep_is_in:           Endpoint direction
  * @maxp:               Value from wMaxPacketSize field of Endpoint Descriptor
+ * @maxp_mult:          Multiplier for maxp
  * @dev_speed:          Device speed. One of the following values:
  *                       - USB_SPEED_LOW
  *                       - USB_SPEED_FULL
@@ -340,6 +342,7 @@ struct dwc2_qh {
 	u8 ep_type;
 	u8 ep_is_in;
 	u16 maxp;
+	u16 maxp_mult;
 	u8 dev_speed;
 	u8 data_toggle;
 	u8 ping_state;
@@ -503,9 +506,14 @@ static inline u8 dwc2_hcd_get_pipe_type(struct dwc2_hcd_pipe_info *pipe)
 	return pipe->pipe_type;
 }
 
-static inline u16 dwc2_hcd_get_mps(struct dwc2_hcd_pipe_info *pipe)
+static inline u16 dwc2_hcd_get_maxp(struct dwc2_hcd_pipe_info *pipe)
+{
+	return pipe->maxp;
+}
+
+static inline u16 dwc2_hcd_get_maxp_mult(struct dwc2_hcd_pipe_info *pipe)
 {
-	return pipe->mps;
+	return pipe->maxp_mult;
 }
 
 static inline u8 dwc2_hcd_get_dev_addr(struct dwc2_hcd_pipe_info *pipe)
@@ -620,12 +628,6 @@ static inline bool dbg_urb(struct urb *urb)
 static inline bool dbg_perio(void) { return false; }
 #endif
 
-/* High bandwidth multiplier as encoded in highspeed endpoint descriptors */
-#define dwc2_hb_mult(wmaxpacketsize) (1 + (((wmaxpacketsize) >> 11) & 0x03))
-
-/* Packet size for any kind of endpoint descriptor */
-#define dwc2_max_packet(wmaxpacketsize) ((wmaxpacketsize) & 0x07ff)
-
 /*
  * Returns true if frame1 index is greater than frame2 index. The comparison
  * is done modulo FRLISTEN_64_SIZE. This accounts for the rollover of the
diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index 88b5dcf3aefc..a052d39b4375 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -1617,8 +1617,9 @@ static void dwc2_hc_ahberr_intr(struct dwc2_hsotg *hsotg,
 
 	dev_err(hsotg->dev, "  Speed: %s\n", speed);
 
-	dev_err(hsotg->dev, "  Max packet size: %d\n",
-		dwc2_hcd_get_mps(&urb->pipe_info));
+	dev_err(hsotg->dev, "  Max packet size: %d (mult %d)\n",
+		dwc2_hcd_get_maxp(&urb->pipe_info),
+		dwc2_hcd_get_maxp_mult(&urb->pipe_info));
 	dev_err(hsotg->dev, "  Data buffer length: %d\n", urb->length);
 	dev_err(hsotg->dev, "  Transfer buffer: %p, Transfer DMA: %08lx\n",
 		urb->buf, (unsigned long)urb->dma);
diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index ea3aa640c15c..68bbac64b753 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -708,7 +708,7 @@ static void dwc2_hs_pmap_unschedule(struct dwc2_hsotg *hsotg,
 static int dwc2_uframe_schedule_split(struct dwc2_hsotg *hsotg,
 				      struct dwc2_qh *qh)
 {
-	int bytecount = dwc2_hb_mult(qh->maxp) * dwc2_max_packet(qh->maxp);
+	int bytecount = qh->maxp_mult * qh->maxp;
 	int ls_search_slice;
 	int err = 0;
 	int host_interval_in_sched;
@@ -1332,7 +1332,7 @@ static int dwc2_check_max_xfer_size(struct dwc2_hsotg *hsotg,
 	u32 max_channel_xfer_size;
 	int status = 0;
 
-	max_xfer_size = dwc2_max_packet(qh->maxp) * dwc2_hb_mult(qh->maxp);
+	max_xfer_size = qh->maxp * qh->maxp_mult;
 	max_channel_xfer_size = hsotg->params.max_transfer_size;
 
 	if (max_xfer_size > max_channel_xfer_size) {
@@ -1517,8 +1517,9 @@ static void dwc2_qh_init(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
 	u32 prtspd = (hprt & HPRT0_SPD_MASK) >> HPRT0_SPD_SHIFT;
 	bool do_split = (prtspd == HPRT0_SPD_HIGH_SPEED &&
 			 dev_speed != USB_SPEED_HIGH);
-	int maxp = dwc2_hcd_get_mps(&urb->pipe_info);
-	int bytecount = dwc2_hb_mult(maxp) * dwc2_max_packet(maxp);
+	int maxp = dwc2_hcd_get_maxp(&urb->pipe_info);
+	int maxp_mult = dwc2_hcd_get_maxp_mult(&urb->pipe_info);
+	int bytecount = maxp_mult * maxp;
 	char *speed, *type;
 
 	/* Initialize QH */
@@ -1531,6 +1532,7 @@ static void dwc2_qh_init(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
 
 	qh->data_toggle = DWC2_HC_PID_DATA0;
 	qh->maxp = maxp;
+	qh->maxp_mult = maxp_mult;
 	INIT_LIST_HEAD(&qh->qtd_list);
 	INIT_LIST_HEAD(&qh->qh_list_entry);
 
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
