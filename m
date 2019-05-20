Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2EB23F9A
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 19:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qaItVE/mOghwo4pDje6g9/0Ikl68JKhOxD4xd116xFY=; b=Kq9Ns/DZjtgKs3
	Gg1ua7yaed+/uBX8zXJhX/xf5k0nSmIa15++YrfvtvpVEckGTxjt7+7kgmi5inueyXq/KYNkIGW28
	PaV9xK5QYVTLv763Uajen5mp/Zkljaqzv8zqlU8ptE5mF7veDNW5r/gzh1pxfpWsG6lmUJFwBBdQ1
	kxL4OlW/3ZKSZCr6dVVmZya5YFQUaZRqStp1oT+65Vl0LEstmYLy8uGaZ9ibB4vXyo2mNBNxFEIIn
	mVogVSfU8iIk4YL1I41IfisaYFszXv575BVS0+kWL91NGovxb/N0Vyh+ez2IiPy6sJu0mrYNXuSD2
	UimafYrJUX6rA3wfDM4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmWb-0008FZ-MW; Mon, 20 May 2019 17:56:37 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmWF-0007o5-VN
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 17:56:20 +0000
Received: by mail-pg1-x543.google.com with SMTP id 145so7126533pgg.9
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 10:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3sdiqccgDJXtFrjjl4K/P/M1SmaN+5PXQCYKXAqHDcE=;
 b=FiXpYT81ZnLjNm2EkX/LKALMKY0iF/oE+2o+nrgvF0uGX/0EEkeEeU5tM5EoIC1L9J
 yJ7P0aF9BL7bVJUMit3At2Fx3tKAXnmRbW+K36MW/9sDUNaGnd/skuQgNfjMrPJnnTZg
 ssB85hNIZHc8N+6KtyEBpXMuA0P8RzGk7xmhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3sdiqccgDJXtFrjjl4K/P/M1SmaN+5PXQCYKXAqHDcE=;
 b=cTy8VpLiHGli3eAUSBS1rdZn9wtKChUliIfxlvDX7VQJOt8jXv0pGEDb5jjq3nY8yG
 dDiQ6KanTbVgnjZd9anI/Bzq/EA+8VIfPH9CyRhFwlC5qWcfzTmd8rVT+jTljLJDDN2F
 oVgA/yR+SirxVaQjL4Ra97rHvJj0XjFl5Wn+iBfrkDyUvHqi/yE4Wd0UK/Ow50M6VgZH
 80/bweCAB+f5jYSzqSISn1YPsIB4Lx6o0DUFiNfg4wRJWJrb/orj3nTQjBnSsRbZv7mQ
 YMf5Gr0EOrL18vz3pgORan2/pOLw2o6njronAy4aOo1IDiRe/yUp6Hm45INVJOXhbYPe
 Y8Jg==
X-Gm-Message-State: APjAAAUukiC4yojSlHehPoGNqvMUlwvIdBq+mz1hSisJ1bvhtJxbs1LD
 KSU/9OEQOFngoWOR2MyL9UzwPQ==
X-Google-Smtp-Source: APXvYqyesrrZw3c6wnWIYKskRfQzbmGey2GoXlGuQ2obakNmbEU9VplgKM4DwUU5orVX5Nf76vXgJw==
X-Received: by 2002:a62:2703:: with SMTP id n3mr81869816pfn.199.1558374975284; 
 Mon, 20 May 2019 10:56:15 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id o2sm16852723pgq.1.2019.05.20.10.56.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 10:56:14 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Minas Harutyunyan <hminas@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Subject: [PATCH v3 2/3] USB: dwc2: Don't turn off the usbphy in suspend if
 wakeup is enabled
Date: Mon, 20 May 2019 10:56:04 -0700
Message-Id: <20190520175605.2405-3-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190520175605.2405-1-dianders@chromium.org>
References: <20190520175605.2405-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105616_545650_6FD5860F 
X-CRM114-Status: GOOD (  23.84  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, Randy Li <ayaka@soulik.info>,
 amstan@chromium.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 zyw@rock-chips.com, linux-usb@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Alan Stern <stern@rowland.harvard.edu>,
 Elaine Zhang <zhangqing@rock-chips.com>, jwerner@chromium.org,
 William Wu <william.wu@rock-chips.com>, ryandcase@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

If the 'snps,need-phy-for-wake' is set in the device tree then:

- We know that we can wakeup, so call device_set_wakeup_capable().
  The USB core will use this knowledge to enable wakeup by default.
- We know that we should keep the PHY on during suspend if something
  on our root hub needs remote wakeup.  This requires the patch (USB:
  Export usb_wakeup_enabled_descendants()).  Note that we don't keep
  the PHY on at suspend time if it's not needed because it would be a
  power draw.

If we later find some users of dwc2 that can support wakeup without
keeping the PHY on we may want to add a way to call
device_set_wakeup_capable() without keeping the PHY on at suspend
time.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Chris Zhong <zyw@rock-chips.com>
---
For relevant prior discussion of this idea, see:

https://lkml.kernel.org/r/1436207224-21849-4-git-send-email-dianders@chromium.org

If I'm reading all the responses correctly folks were of the opinion
that this patch is still the right way to go.

Changes in v3:
- Fixed kbuild test robot error.

Changes in v2:
- Rebased to mainline atop rk3288 remote wake quirk series.

 drivers/usb/dwc2/core.h     |  8 ++++++++
 drivers/usb/dwc2/hcd.c      | 19 +++++++++++++++++++
 drivers/usb/dwc2/platform.c | 23 ++++++++++++++++++++---
 3 files changed, 47 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 152ac41dfb2d..d08d070a0fb6 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -861,6 +861,9 @@ struct dwc2_hregs_backup {
  * @hibernated:		True if core is hibernated
  * @reset_phy_on_wake:	Quirk saying that we should assert PHY reset on a
  *			remote wakeup.
+ * @phy_off_for_suspend: Status of whether we turned the PHY off at suspend.
+ * @need_phy_for_wake:	Quirk saying that we should keep the PHY on at
+ *			suspend if we need USB to wake us up.
  * @frame_number:       Frame number read from the core. For both device
  *			and host modes. The value ranges are from 0
  *			to HFNUM_MAX_FRNUM.
@@ -1049,6 +1052,8 @@ struct dwc2_hsotg {
 	unsigned int ll_hw_enabled:1;
 	unsigned int hibernated:1;
 	unsigned int reset_phy_on_wake:1;
+	unsigned int need_phy_for_wake:1;
+	unsigned int phy_off_for_suspend:1;
 	u16 frame_number;
 
 	struct phy *phy;
@@ -1438,6 +1443,7 @@ int dwc2_restore_host_registers(struct dwc2_hsotg *hsotg);
 int dwc2_host_enter_hibernation(struct dwc2_hsotg *hsotg);
 int dwc2_host_exit_hibernation(struct dwc2_hsotg *hsotg,
 			       int rem_wakeup, int reset);
+bool dwc2_host_can_poweroff_phy(struct dwc2_hsotg *dwc2);
 static inline void dwc2_host_schedule_phy_reset(struct dwc2_hsotg *hsotg)
 { schedule_work(&hsotg->phy_reset_work); }
 #else
@@ -1463,6 +1469,8 @@ static inline int dwc2_host_enter_hibernation(struct dwc2_hsotg *hsotg)
 static inline int dwc2_host_exit_hibernation(struct dwc2_hsotg *hsotg,
 					     int rem_wakeup, int reset)
 { return 0; }
+static inline bool dwc2_host_can_poweroff_phy(struct dwc2_hsotg *dwc2)
+{ return false; }
 static inline void dwc2_host_schedule_phy_reset(struct dwc2_hsotg *hsotg) {}
 
 #endif
diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index b50ec3714fd8..cc918fe7ddb8 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -5578,3 +5578,22 @@ int dwc2_host_exit_hibernation(struct dwc2_hsotg *hsotg, int rem_wakeup,
 	dev_dbg(hsotg->dev, "Host hibernation restore complete\n");
 	return ret;
 }
+
+bool dwc2_host_can_poweroff_phy(struct dwc2_hsotg *dwc2)
+{
+	struct usb_device *root_hub = dwc2_hsotg_to_hcd(dwc2)->self.root_hub;
+
+	/* If the controller isn't allowed to wakeup then we can power off. */
+	if (!device_may_wakeup(dwc2->dev))
+		return true;
+
+	/*
+	 * We don't want to power off the PHY if something under the
+	 * root hub has wakeup enabled.
+	 */
+	if (usb_wakeup_enabled_descendants(root_hub))
+		return false;
+
+	/* No reason to keep the PHY powered, so allow poweroff */
+	return true;
+}
diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index d10a7f8daec3..3e6c3c8a32ff 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -447,6 +447,10 @@ static int dwc2_driver_probe(struct platform_device *dev)
 	if (retval)
 		goto error;
 
+	hsotg->need_phy_for_wake =
+		of_property_read_bool(dev->dev.of_node,
+				      "snps,need-phy-for-wake");
+
 	/*
 	 * Reset before dwc2_get_hwparams() then it could get power-on real
 	 * reset value form registers.
@@ -478,6 +482,14 @@ static int dwc2_driver_probe(struct platform_device *dev)
 		hsotg->gadget_enabled = 1;
 	}
 
+	/*
+	 * If we need PHY for wakeup we must be wakeup capable.
+	 * When we have a device that can wake without the PHY we
+	 * can adjust this condition.
+	 */
+	if (hsotg->need_phy_for_wake)
+		device_set_wakeup_capable(&dev->dev, true);
+
 	hsotg->reset_phy_on_wake =
 		of_property_read_bool(dev->dev.of_node,
 				      "snps,reset-phy-on-wake");
@@ -516,13 +528,17 @@ static int dwc2_driver_probe(struct platform_device *dev)
 static int __maybe_unused dwc2_suspend(struct device *dev)
 {
 	struct dwc2_hsotg *dwc2 = dev_get_drvdata(dev);
+	bool is_device_mode = dwc2_is_device_mode(dwc2);
 	int ret = 0;
 
-	if (dwc2_is_device_mode(dwc2))
+	if (is_device_mode)
 		dwc2_hsotg_suspend(dwc2);
 
-	if (dwc2->ll_hw_enabled)
+	if (dwc2->ll_hw_enabled &&
+	    (is_device_mode || dwc2_host_can_poweroff_phy(dwc2))) {
 		ret = __dwc2_lowlevel_hw_disable(dwc2);
+		dwc2->phy_off_for_suspend = true;
+	}
 
 	return ret;
 }
@@ -532,11 +548,12 @@ static int __maybe_unused dwc2_resume(struct device *dev)
 	struct dwc2_hsotg *dwc2 = dev_get_drvdata(dev);
 	int ret = 0;
 
-	if (dwc2->ll_hw_enabled) {
+	if (dwc2->phy_off_for_suspend && dwc2->ll_hw_enabled) {
 		ret = __dwc2_lowlevel_hw_enable(dwc2);
 		if (ret)
 			return ret;
 	}
+	dwc2->phy_off_for_suspend = false;
 
 	if (dwc2_is_device_mode(dwc2))
 		ret = dwc2_hsotg_resume(dwc2);
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
