Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50545101D41
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 09:27:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ep5/lJniFtdS9rJt/+UpEQ+nax9gq/qyEz1nZt7zQtA=; b=oHe9xCuVT2L9Xa
	qK9O6Ppu5LJF3gEn+1TdBuj0OBfIFARUInrLLRIcavwZE1Gx9Yqtb/IAXE/3XXUrYNrBxVsZ2by/D
	2V1geae4B1aLR25yAKQrhKUs+z70+YoOSTdoxcwnFty9Kxpk3gu4SnBXPmvlFuwwxobCTtwQM8qEc
	TzDwQtdvboRhhWaGTRCAc5a8GIAv8N7O8DlZEAf1cDbhHysq3EQ323R59Gid3+CXf9v2k513ZgqgJ
	eLH8yjpv6V8sUN3/eZBWUssWV36eQfq5DR2EzZ9P/v0q7ILxHSUrhpuFaDLmnOXf0Q8pici22BaCH
	pTc+9ZZKjSRbznwhoc+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyqp-00020g-E7; Tue, 19 Nov 2019 08:27:07 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyqj-0001w5-Vd
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 08:27:05 +0000
Received: by mail-pj1-x1041.google.com with SMTP id y21so2387748pjn.9
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 00:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ERUG8BZ0QuZnGE3F6ql5Lg29BeT9X+LCUpVkl19Pg68=;
 b=gYPpV/k9vxq0A05Quy8oXkBa2poIolJ7DjdoKCXwoHzE89zBXibfJ9vDg76yJoRDl7
 US13DDOyPPeXhJESOr2Auj+5HdBGDDcfm5igreun2YS1ZNORl1oSQfLG2qC7UIKXjIJO
 cxt9u3/6TSBjEU+B0WWOO9ywP4HvprFMOLxmI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ERUG8BZ0QuZnGE3F6ql5Lg29BeT9X+LCUpVkl19Pg68=;
 b=joQqs+Vko/LuRbjjthL246ScogVXzUKU0tjvKE1Aue5GMUoqzOK96kyUgVXKnqgXcW
 qxMGl1kMX4h6psfrOYS9yQjudOVozwdnZPnuWY+oUKvfTQNh9ngbaHwn/69soVCGHnIp
 fKkd0D5U7wj9r6t+1PCbbOpmzKhrPZi3F2Vdpx9LjetL7bx6GYq6WNfuwwnH4Yvom9VL
 gUmQ+y7UQZY92wRT25iiQ5ZGQYFJSWXWJfDRfoXJy36rCPlOz/KkkBEzG+v6ZsX+i6yA
 XAwApt39XAmT66Z96MCgU2g1Kx34aXffCi9HkvfurH4sr2Jw/tedyfc3r9I3K1Y8zclX
 b/IA==
X-Gm-Message-State: APjAAAWwq4RVEe7QLY+rccEQ/zkZyvkU1nMJ8RaX736j+4KqckTnfDsq
 Mdc5E/wFRBCDtqGPhyZBR5Nceg==
X-Google-Smtp-Source: APXvYqwgOT+9ta3r2yAvYyEadOfDr6tl9seFPxjzhmaN2QYqcNSUj2nMMenSfY3VldgyQTUyU8/c0Q==
X-Received: by 2002:a17:902:349:: with SMTP id 67mr187750pld.80.1574152021041; 
 Tue, 19 Nov 2019 00:27:01 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id u7sm2312221pjx.19.2019.11.19.00.26.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 00:27:00 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 09/10] rockchip: Setup dwc3_device (for non-dm gadgets)
Date: Tue, 19 Nov 2019 13:56:22 +0530
Message-Id: <20191119082623.6165-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191119082623.6165-1-jagan@amarulasolutions.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_002702_029410_98904CF4 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>, linux-rockchip@lists.infradead.org,
 u-boot@lists.denx.de, Jagan Teki <jagan@amarulasolutions.com>,
 Levin Du <djw@t-chip.com.cn>, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Setup dwc3_device structure for non-dm gadgets, which is used
in rk3399 platforms.

dwc3_device would have basic regbase, dr_mode, high speed
and 16-bit UTMI+ etc.

Cc: Marek Vasut <marex@denx.de>
Tested-by: Levin Du <djw@t-chip.com.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/board.c | 32 ++++++++++++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/board.c b/arch/arm/mach-rockchip/board.c
index c90eb976d0..542823b8cd 100644
--- a/arch/arm/mach-rockchip/board.c
+++ b/arch/arm/mach-rockchip/board.c
@@ -49,8 +49,10 @@ void enable_caches(void)
 }
 #endif
 
-#if defined(CONFIG_USB_GADGET) && defined(CONFIG_USB_GADGET_DWC2_OTG)
+#if defined(CONFIG_USB_GADGET)
 #include <usb.h>
+
+#if defined(CONFIG_USB_GADGET_DWC2_OTG)
 #include <usb/dwc2_udc.h>
 
 static struct dwc2_plat_otg_data otg_data = {
@@ -117,7 +119,33 @@ int board_usb_cleanup(int index, enum usb_init_type init)
 {
 	return 0;
 }
-#endif
+#endif /* CONFIG_USB_GADGET_DWC2_OTG */
+
+#if defined(CONFIG_USB_DWC3) && !defined(CONFIG_DM_USB_GADGET)
+#include <dwc3-uboot.h>
+
+static struct dwc3_device dwc3_device_data = {
+	.maximum_speed = USB_SPEED_HIGH,
+	.base = 0xfe800000,
+	.dr_mode = USB_DR_MODE_PERIPHERAL,
+	.index = 0,
+	.dis_u2_susphy_quirk = 1,
+	.hsphy_mode = USBPHY_INTERFACE_MODE_UTMIW,
+};
+
+int usb_gadget_handle_interrupts(void)
+{
+	dwc3_uboot_handle_interrupt(0);
+	return 0;
+}
+
+int board_usb_init(int index, enum usb_init_type init)
+{
+	return dwc3_uboot_init(&dwc3_device_data);
+}
+#endif /* CONFIG_USB_DWC3 */
+
+#endif /* CONFIG_USB_GADGET */
 
 #if CONFIG_IS_ENABLED(FASTBOOT)
 int fastboot_set_reboot_flag(void)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
