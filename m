Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166B91BBAA4
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 12:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=c3YVuvvb5snRwOImvCY2U+49dSaKiiMInWgo6qvipRc=; b=EGt
	djhwV41HYLe4qlnpu944nzkCc/E+5unNZUiuzt3f86wybDQ229JsqIUJRf92trv7Y4IENuw9+j+Di
	5CCoFCRufENcrK83B4LpIHzC4Q6xkRQujvHhJeQj7cA+PUgHOfEHMdJLmKJIMjlE6bQY4XFkxkvZQ
	RKbX964wuqqG9wJ6McgWA9Huxb2CEshSR2IzO87qLP82OSasrZTHUPY/6MoplQCOvewZYDFm/5RTK
	T6Ol/E6apDc5nd33MHrGWVdmijfwFeXcHq5xZlIsvnzKSBdHseJAZbMrHq3yvkdfq1+XiRLnLjFFD
	wHNqPVT5tDdy9fCKXZy+RzzrmGWtlHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN6g-0008IO-4y; Tue, 28 Apr 2020 10:04:50 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN6V-0008A8-4B
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 10:04:40 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a7so919912pju.2
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2020 03:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=dj2JffsxWwDEEgPJvlvIrt5V+mtaCSl+DtFHop0dMb4=;
 b=H9GhycoaozP+cOKIN+2yyxwhfYZCXVg5yMKwMoFtuabbM0lqiBjAHzJdX7xAQencwL
 GdXBWOxT2ho79puQF7x011z3adbQQ1Mw3IqSeJYwjUdAAYmResAZ3S6qHCA0TzowdRIV
 vwdXy4M2Pm4Wt32ynA/ScYyUWT+Q9Najfa5dg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dj2JffsxWwDEEgPJvlvIrt5V+mtaCSl+DtFHop0dMb4=;
 b=cibfq0HXG65iKLSkMM0/x+BtFwa6l6wV+HFuCk8adaqMfNBgPHHYEGCiOjYyoA3eR8
 eVJVj3Eu/omUgaeoJJsCMBm6zLGAd8dGmwkMIT8iFMlpLj49wmvzJlAhupJ/aMzW4yFr
 k3CwgVEkfdMOmq7ceF70dXuXF+l53XQzac0QSJrmt9EW7a7qzC9ngvvxlwc4PpahjokG
 fdwermh/GxPK2QqUyuiYcQWQCwgxYSbir33K2ClZLhlCc9vab7/E9fCFimBRKiN0LcaB
 ycN7FxNedE1GX5FgZLZG2eUyk6BoSPAetc/ewN/wV+WlgNjSZWXB5bq9wR7GZXDnOGnM
 SxQw==
X-Gm-Message-State: AGi0PuZcrIRgE0zEz/Qc6KY+R/26HwAz3cKpbp6fZyUn0UbyxZniVm9h
 H7umgy8MNeRCtPHlkqjbVYdXUg==
X-Google-Smtp-Source: APiQypLJW+Kfa1yIac5biNKMw7qJ5Ools1kqwX4W0suZMdDHMTGUxWdzIMJ25VxZyvBdUdSSrjMGeA==
X-Received: by 2002:a17:902:327:: with SMTP id
 36mr26866546pld.185.1588068277876; 
 Tue, 28 Apr 2020 03:04:37 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:f9c1:1c6a:49dc:267d])
 by smtp.gmail.com with ESMTPSA id dw12sm1665504pjb.31.2020.04.28.03.04.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 03:04:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Tom Rini <trini@konsulko.com>, Kever Yang <kever.yang@rock-chips.com>,
 Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3] rockchip: Enable SF distro bootcmd
Date: Tue, 28 Apr 2020 15:34:28 +0530
Message-Id: <20200428100428.19739-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030439_211986_5EC55FA6 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable SPI flash(SF) distro boot command in Rockchip.

This distro boot will read the boot script at specific
location at the flash and start sourcing the same.

Included the SF device at the last of the target devices
list since all the rest of the devices on the list have
more possibility to boot the distribution due to the
size of the SPI flash is concern.

Cc: Tom Rini <trini@konsulko.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- Don't use SF distro px30

 include/configs/rk3399_common.h   |  1 +
 include/configs/rockchip-common.h | 15 +++++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/include/configs/rk3399_common.h b/include/configs/rk3399_common.h
index 01a9174bd2..f0ae6e67a7 100644
--- a/include/configs/rk3399_common.h
+++ b/include/configs/rk3399_common.h
@@ -60,6 +60,7 @@
 #endif
 
 #include <config_distro_bootcmd.h>
+#include <environment/distro/sf.h>
 #define CONFIG_EXTRA_ENV_SETTINGS \
 	ENV_MEM_LAYOUT_SETTINGS \
 	"fdtfile=" CONFIG_DEFAULT_FDT_FILE "\0" \
diff --git a/include/configs/rockchip-common.h b/include/configs/rockchip-common.h
index b55e09a9ca..2d5d29849d 100644
--- a/include/configs/rockchip-common.h
+++ b/include/configs/rockchip-common.h
@@ -41,11 +41,26 @@
 	#define BOOT_TARGET_DHCP(func)
 #endif
 
+#if CONFIG_IS_ENABLED(CMD_SF)
+	#define BOOT_TARGET_SF(func)	func(SF, sf, 0)
+#else
+	#define BOOT_TARGET_SF(func)
+#endif
+
+#ifndef CONFIG_ROCKCHIP_PX30
+#define BOOT_TARGET_DEVICES(func) \
+	BOOT_TARGET_MMC(func) \
+	BOOT_TARGET_USB(func) \
+	BOOT_TARGET_PXE(func) \
+	BOOT_TARGET_DHCP(func) \
+	BOOT_TARGET_SF(func)
+#else
 #define BOOT_TARGET_DEVICES(func) \
 	BOOT_TARGET_MMC(func) \
 	BOOT_TARGET_USB(func) \
 	BOOT_TARGET_PXE(func) \
 	BOOT_TARGET_DHCP(func)
+#endif
 
 #ifdef CONFIG_ARM64
 #define ROOT_UUID "B921B045-1DF0-41C3-AF44-4C6F280D3FAE;\0"
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
