Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF6AE0B0D
	for <lists+linux-rockchip@lfdr.de>; Tue, 22 Oct 2019 19:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCfMJyB/fMV51a0HB/ve1KMolVfkseFQlf2jMec4Cc4=; b=ZVyFzHhCnFlkC2
	ral2ADZQppDogW2pTaBBwPouxkjye5tnLSRsQ5TOw0FeCS1R3ca9XPVTuf/fP7GdJDKPSXlGsTVpg
	M5dhw8uE1OUzHzt8bzgNMf5GuynrmZUkwKwYtmpRxQivAOr8TJ3B4i6zt/WjFHgMeNaKICUyPI0qx
	DGH10d5tsWJhVVlTn8M+fa06B7ThPsmIjCQ6dQqJl5gCkbE60pKvM+ZnNDL2TYnrXEBYluLh844Hz
	bO1h6eBCGMJYsuLM6hCciLZMK/Y9HoT9pAqnUiDcAPuVQl1a/8gWDLZHf03A1dRlpEmfFanEfNnEL
	BzBcY4e5ajbqY8Q69zZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMyNr-0006Mh-OG; Tue, 22 Oct 2019 17:55:51 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyNn-0006KE-Ol
 for linux-rockchip@lists.infradead.org; Tue, 22 Oct 2019 17:55:49 +0000
Received: by mail-pf1-x442.google.com with SMTP id b4so2183461pfr.12
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2019 10:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BtTMKjhJzleq7Qa5QXDZ9D1oShzfx86EjT4LQD8bWg4=;
 b=pJSGeqOhkTPefP91MxbpqQWt6GFlDdmJYKVcH+tZEFtxW9zke8p/7TQ2kP9Z5wtCor
 ZeZ5blsN4WpQoVm2QdnuCpHE3uAI5UGy72flComyXTUqsT2j3Y+vHW+12paG7WwPsnZ9
 FU1iHFYPjksqVh+t8Xjb3w0Rbb8u+vmjAAbuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BtTMKjhJzleq7Qa5QXDZ9D1oShzfx86EjT4LQD8bWg4=;
 b=au61IX387q0AFaOeOR9NN1mSLUMTWR6ZwWODUCNZQom5tf0JnvKbP6RG0MEB7j6e8W
 OveuqNe0KeuTTro0KawIioEsyNnmnMz+XdetrF+AVgn5taUQFk46Dg3pZAu+/y0lUwlB
 eIbW7RSnI2ksvJ1i3ddnAbXxb5QqxnfQ0xOOQsnsFqFmQLvDPY/TimfVU6RCFjXHmSPr
 j43j8bF/LPHZlpaLBdlnlEQiyyGlyrLh76pvySMBuua16yJNJyelfM/JO5d+N+Bw/tBQ
 40hG29YcCh+L9l/ClBHmaerIlkjaNYmpMyasPV4NKyiqlEvDY5oqaN+NK2JFMu36lttP
 UxKg==
X-Gm-Message-State: APjAAAW5DyD7SBsXeQPC99RabXIkmEr+MrRcEWELOEmtkQ8A5ydGNWAS
 t1RqWDsyswzqqdNpkT0EWRvcMlHvb3Q=
X-Google-Smtp-Source: APXvYqwDIRqbw2MOHqnrgGduk1mMhcKtwYakmyCDzTeotmUTB0hjFl8dsecd3wpF+WL2vPYHsiviog==
X-Received: by 2002:a62:1709:: with SMTP id 9mr3855741pfx.83.1571766947215;
 Tue, 22 Oct 2019 10:55:47 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id b3sm20454775pfd.125.2019.10.22.10.55.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 10:55:46 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 8/9] rockchip: Setup dwc3_device (for non-dm gadgets)
Date: Tue, 22 Oct 2019 23:24:57 +0530
Message-Id: <20191022175458.22604-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191022175458.22604-1-jagan@amarulasolutions.com>
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_105547_805862_2D43DB4E 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/board.c | 32 ++++++++++++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/board.c b/arch/arm/mach-rockchip/board.c
index 8ca3463731..1468f1da80 100644
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
@@ -91,7 +93,33 @@ int board_usb_cleanup(int index, enum usb_init_type init)
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
