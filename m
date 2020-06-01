Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7970C1EB065
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 22:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3r/vGM0EhpS0R0iIhxlSwjk7HF2VVoO2XuJ+lad1t8=; b=I4xiACXgQSWplh
	gi4VNQL8XGz7iK9tnOj/PHAf8ca3ZgXpR9e3wZaP6q6QDFcAjIsiAdrF54CANTc46KpiBHePo9uM6
	sHBmsEp/mbtQqE/VmV8N8TFx3cs0G13yn/md06k7FrCcYQyVw3zOghea7UcK4jiOJHKI+bB3u6swF
	1LUEYY8niqn9qcCwHYskB+sHQf9m5mjZhUi+XUk1Shx+kG3kdejteEv3sytAvAT0twUunh5zho8cj
	bin6HWBgJ8eklYYZzPVOsHze9AllCxLLCGXC5EDwlH9oZ+qhLGozAHVvqkKFWC9J1105G3oldMKbO
	ChHhFvFeEb83K5F5eHSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfrGp-0002XS-W8; Mon, 01 Jun 2020 20:42:56 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfrGm-0002Vw-E6
 for linux-rockchip@lists.infradead.org; Mon, 01 Jun 2020 20:42:53 +0000
Received: by mail-pl1-x641.google.com with SMTP id q16so419288plr.2
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2020 13:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HH7Sg1d2KszYZfdSHi2ym0vvLWaCRPg8r9+mwlDQliw=;
 b=dG9IOu+UbkC9mz0Qyhf8FTz8T+HzBdmQxgqZt03TFJsM7G7oowwHlrHNR2FQTq9Yya
 BffcTy41E0Ytu8wxdgxteYgfdogDCBm3naJe/iyr565e8EhY9of1JDiBvtzcJ2F2kjMr
 0j8DmmWoynhbtvjtYD7MgepRMHyT9+tFkhJ9o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HH7Sg1d2KszYZfdSHi2ym0vvLWaCRPg8r9+mwlDQliw=;
 b=esL7rW/rfNJtgB6YrQ5R71QR0r7B2joShl6/2NkcHPrdJZuN3OwSCHgjDI3mwmdeIf
 XVAnK/9yaQlcH2B6NAm9wRTDZ+tSXoHi9pzQevje1ixH4Bd9cttUfplgB83xZJZY5r59
 FzZyz62YQj2XiawqZaVo8ZH6/y7a5NZchzYPHZPwXgIIp+H0d4tPxl1xfbBWLe8g0AdR
 AJzIjk7ZTCohqUlUAePgCReCYNN8TLsmOTPsbw9TZyk+TSucDf2ATZnsObBML+y485jQ
 HPetWgz3m5NrZWu/dT5ypo058T0MiI5JY2U6QrN3VLpjmnNEZFEUk1fTJEgD63uc//dv
 X4NA==
X-Gm-Message-State: AOAM532ciLcyFvWpccDXhpYd1zR5REYwtsY0tDNfPkA7CF5rHyUsyPDu
 isL8IyoA/gjyHe7BKV4YlBJ0uw==
X-Google-Smtp-Source: ABdhPJyfqApA9JhFuf02HQYPOe5x+HH+2sSRzO0z7I9L13AUzrb2JQg6J0U1CL6kYCb8D/k5OMx9tg==
X-Received: by 2002:a17:90b:4d06:: with SMTP id
 mw6mr1397351pjb.190.1591044171668; 
 Mon, 01 Jun 2020 13:42:51 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:658b:ecbc:7ea4:1996])
 by smtp.gmail.com with ESMTPSA id k7sm283581pga.87.2020.06.01.13.42.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 13:42:50 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH v2 4/4] doc: rockchip: Document SPI flash program steps
Date: Tue,  2 Jun 2020 02:12:13 +0530
Message-Id: <20200601204213.466120-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200601204213.466120-1-jagan@amarulasolutions.com>
References: <20200601204213.466120-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_134252_481452_2ABEDD7D 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Document SPI flash program steps for rockchip platforms.

Suggested-by: Hugh Cole-Baker <sigmaris@gmail.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 doc/board/rockchip/rockchip.rst | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
index 7b72fab496..76b228a046 100644
--- a/doc/board/rockchip/rockchip.rst
+++ b/doc/board/rockchip/rockchip.rst
@@ -162,6 +162,30 @@ Program the flash::
 Note: for rockchip 32-bit platforms the U-Boot proper image
 is u-boot-dtb.img
 
+SPI
+^^^
+
+Generating idbloader for SPI boot would require to input a multi image
+image format to mkimage tool instead of concerting (like for MMC boot).
+
+SPL-alone SPI boot image::
+
+        ./tools/mkimage -n rk3399 -T rkspi -d spl/u-boot-spl.bin idbloader.img
+
+TPL+SPL SPI boot image::
+
+        ./tools/mkimage -n rk3399 -T rkspi -d tpl/u-boot-tpl.bin:spl/u-boot-spl.bin idbloader.img
+
+Copy SPI boot images into SD card and boot from SD::
+
+        sf probe
+        load mmc 1:1 $kernel_addr_r idbloader.img
+        sf erase 0 +$filesize
+        sf write $kernel_addr_r 0 ${filesize}
+        load mmc 1:1 ${kernel_addr_r} u-boot.itb
+        sf erase 0x60000 +$filesize
+        sf write $kernel_addr_r 0x60000 ${filesize}
+
 TODO
 ----
 
@@ -171,4 +195,4 @@ TODO
 - Add missing SoC's with it boards list
 
 .. Jagan Teki <jagan@amarulasolutions.com>
-.. Sunday 24 May 2020 10:08:41 PM IST
+.. Tuesday 02 June 2020 12:18:57 AM IST
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
