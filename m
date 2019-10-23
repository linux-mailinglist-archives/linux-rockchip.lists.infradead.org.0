Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDEDE24ED
	for <lists+linux-rockchip@lfdr.de>; Wed, 23 Oct 2019 23:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lFH/FxCYi+w1mjeMIzEn1IC1iaePWEIk86nN8DJu93o=; b=RRlP96YpNYfqMx
	xvIScwIQeEm6rNXJ78scQ4OkEB24z7zeOZy+hSY/E7tn+58RIGrzsE+UdXPnfvN7THKltkNqOZwKU
	S3TGI9CXIkuc5kDURcoGsSD3SbSr9piyJAA4zSH47OGyAuuAq07ZbVWFcyRECZlG+hWxg/IkI18yn
	dcR433lpeG3zYkyN5Xu2iFSHDNSltw9pXe1TNR5SYIJP0ZbVRaaFVHpeQjK8aS7L8rnx3FOaYwiR3
	2oqwMaAACRYXRmbRQRf639nhy11E7AlraXFeWgSq+cJlmrcxe3zOcL+C3MgEWw8oRomRHOM+97S1k
	QXMi2GkLUszXEN4Ly3Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNNqv-0002B3-Pq; Wed, 23 Oct 2019 21:07:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNNqr-0002AI-W3
 for linux-rockchip@lists.infradead.org; Wed, 23 Oct 2019 21:07:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id 21so2426636pfj.9
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2019 14:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hTdZZnlA7EABBBAHUknV0T6AXSDyE/LhNtrQ1WO3UbI=;
 b=XcUqdG2izYOn+mbHak6wx+UZELo+hDTuO/+fxjKpVKHu0vitTZdRpxSAWCiL288QOM
 Y4sQAcicvH5dezcg14hGy1Asu7I5ifDnXHph8pEEYigQaild/ZOsD1de9jXymX4iAo4U
 YtPkllEHsNkBl1XYV8p60uhU9i8FsE8WCeV/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hTdZZnlA7EABBBAHUknV0T6AXSDyE/LhNtrQ1WO3UbI=;
 b=mzIj83I0ZmQXsx4ND21tvFp6iro07pewTjoiUwYyqQviAo+hCurGn9PCPyVJ9ps3z2
 8RyQo+8yTf37yKy/bcZZTdnotj5jJM7Bjr1b9iA8+btabgR4z+8oXXOk/x9pA7TCT3ME
 FcOa6PmhjZ5CGqs3mQFgwNZmNKCCRl7JOmT+JJyujPVULCrwcXo29jSZFA9j4lEhRt7M
 /9lfq8zkoMOsPBMpikPjhOmJFBRzBNsbWv9A57ueT1bKBgoX2lGeamL1j84JPYxyoHZI
 WqZQY4SqRtQNfnmEukPx0840s/ZEobjcMBTx4fmrV8wrUg6IGSrmRXPm8fBO55KrREUn
 iZDg==
X-Gm-Message-State: APjAAAWKiZjUfzk6kdowxetaDnoeTSTf+fSo1amujyU0mZC4KCWI+Ty4
 fhU0dykNE6M9rRAXcXwT1owx9Q==
X-Google-Smtp-Source: APXvYqxIMniSNwAkzc2lHxYvMbXHhVnLpxKHVTcbtv205RmdruWuesi6Yx4Fs/+BBpFofGh5PgQlew==
X-Received: by 2002:a63:3d41:: with SMTP id k62mr11959835pga.129.1571864848131; 
 Wed, 23 Oct 2019 14:07:28 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id z12sm26529195pfj.41.2019.10.23.14.07.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 14:07:27 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Minas Harutyunyan <hminas@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felipe Balbi <felipe.balbi@linux.intel.com>
Subject: [PATCH v2] usb: dwc2: Fix NULL qh in dwc2_queue_transaction
Date: Wed, 23 Oct 2019 14:06:31 -0700
Message-Id: <20191023140530.v2.1.I9850aab29e945168070b0a9c50c421d5485e7d97@changeid>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_140730_053557_515EAEF9 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: stefan.wahren@i2se.com, Alexandru M Stan <amstan@chromium.org>,
 linux-usb@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Alexandru M Stan <amstan@chromium.org>

When a usb device disconnects in a certain way, dwc2_queue_transaction
still gets called after dwc2_hcd_cleanup_channels.

dwc2_hcd_cleanup_channels does "channel->qh = NULL;" but
dwc2_queue_transaction still wants to dereference qh.
This adds a check for a null qh.

Signed-off-by: Alexandru M Stan <amstan@chromium.org>
[dianders: rebased to mainline]
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
While testing a newer version of the Linux kernel on rk3288-veyron
devices we saw a bunch of crashes reported in dwc2_queue_transaction()
where chan->qh was NULL [1].  I don't know how to reproduce those
crashes myself, but I noticed that in our 3.14 kernel we had a patch
that probably fixed it.  That patch was sent upstream ages ago [2] but
never landed.  Here I've rebased the patch.  While I haven't
reproduced the crash myself, it seems fairly likely that this will fix
the problem.

[1] https://crbug.com/1017388
[2] https://lore.kernel.org/r/1442952651-4341-2-git-send-email-amstan@chromium.org

Changes in v2:
- Rebased to mainline

 drivers/usb/dwc2/hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index 81afe553aa66..b90f858af960 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -2824,7 +2824,7 @@ static int dwc2_queue_transaction(struct dwc2_hsotg *hsotg,
 		list_move_tail(&chan->split_order_list_entry,
 			       &hsotg->split_order);
 
-	if (hsotg->params.host_dma) {
+	if (hsotg->params.host_dma && chan->qh) {
 		if (hsotg->params.dma_desc_enable) {
 			if (!chan->xfer_started ||
 			    chan->ep_type == USB_ENDPOINT_XFER_ISOC) {
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
