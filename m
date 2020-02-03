Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9926B150345
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Feb 2020 10:19:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LGMyRtHLQ+sDXLyaX4r1DndbZmLZUyZh38Cq3WCM/I8=; b=rbPUKqQRRyW/wOC81KUkhzpmfB
	PiE3FyMrolJARL/2iQEeev3GDiZwcSmHnE6VoGNteIsnzUsUGH4uU3TYpoEWXv4k5Qkp5vPV7rEJg
	TnZIJDa07SYU480IBnMm5K3lnBshmj69W9JVgyJzFuv1K7cer9v6l7HrdVydworg/bnLrUqtStGEM
	31iaaPSVNWL2n9HKBV7LLCQDC/ExkC2qOICQcg4ZMDTzTXNkaOqRaotKhVFrKSOlXsHJCnaKhwRh1
	jpF/OUhU0afa2nM2Y5NdYHPNEnxGZsM/lxWrfsUUC2tb/aqJnucDVNo4VEv7k/vjjkYqKlTIqz6Nr
	CMs29xOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyXtT-0000v8-75; Mon, 03 Feb 2020 09:19:47 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyXtP-0000uA-WF
 for linux-rockchip@lists.infradead.org; Mon, 03 Feb 2020 09:19:45 +0000
Received: by mail-pj1-x1044.google.com with SMTP id r67so6061183pjb.0
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Feb 2020 01:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AlBeKrVei/i3cKvKx+SZQOUbyUG1KJm4RFMeGSev+1c=;
 b=aaYFtZ8fTE3NQdIZ+7fhhuNa9atWIWXDaF5mBaB/EEt8GOxxoLncecGM5HiVu/R5bd
 lXfOmVVZXfjvyoScsZAQCBeYEkkiEN6d96XZETiO494YCGWi/j1N6F9EJ/Oa/LCjDcXS
 bP5NfXYGYxlCG4dgEkoOnVZ2s3N7XKbt6HC0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AlBeKrVei/i3cKvKx+SZQOUbyUG1KJm4RFMeGSev+1c=;
 b=Tt87D4ZhKEUsoiYDRXobgO/ujORqVNhH8I1pCIS551FMNHZrReritKkwnCVjRHJUu8
 xRxJWVc58I8cqt5I2+CBCmgWZWk9x+s4tjkzmUdGiRRUxAHKqZkLMO04TauiqpU3rw0W
 Gp4ovtDlwHZ1La+QlQwqMgk0WU1VqsIWybEsnEukrAU1o8tZBTcsiJUrGqcGkaoEG3PD
 U4MeFs8Kbj6ODwbIMgtJZeloN2lUeJKSKiUCyktKwRACN1JQL00x75UkViW1rPhyIj7x
 15KRKpk8vOdbgJGl+OMdl4Z7FZLnV4SG7xFDDRs/L24tVISsgvWRAzAaL7cFXAEVyAzy
 Vbtg==
X-Gm-Message-State: APjAAAUsnMLSxP/FQD38TgAQgLeQmKbK5EZA/ylNjD0IhzzfyFA7qp4e
 q7Vp8TvKNfzoFdsiJpWGBGnPjMj6OnA=
X-Google-Smtp-Source: APXvYqxdnjMdnjapp0uWViqs8leXaiZgUB3KUZwOqIkzvuHi8ecBTnFIyglbmtjA+ooptHIoWLnteg==
X-Received: by 2002:a17:902:654d:: with SMTP id
 d13mr21745391pln.187.1580721583258; 
 Mon, 03 Feb 2020 01:19:43 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.24])
 by smtp.gmail.com with ESMTPSA id w11sm18828318pfn.4.2020.02.03.01.19.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 01:19:42 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 2/2] rockchip: Add SF distro bootcmd
Date: Mon,  3 Feb 2020 14:49:24 +0530
Message-Id: <20200203091924.15385-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200203091924.15385-1-jagan@amarulasolutions.com>
References: <20200203091924.15385-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_011944_034513_0DA512FC 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add distro boot command support for SPI flash in Rockchip.

This distro boot will read the boot script at specific
location at the flash and start sourcing the same.

Included the SF device at the last of the target devices
list since all the rest of the devices on the list have
more possibility to boot the distribution due to the
size of the SPI flash is concern.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 include/configs/rockchip-common.h | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/include/configs/rockchip-common.h b/include/configs/rockchip-common.h
index b55e09a9ca..8e7c994266 100644
--- a/include/configs/rockchip-common.h
+++ b/include/configs/rockchip-common.h
@@ -41,11 +41,26 @@
 	#define BOOT_TARGET_DHCP(func)
 #endif
 
+#if CONFIG_IS_ENABLED(CMD_SF)
+	#define BOOT_TARGET_SF(func)	func(SF, sf, na)
+#else
+	#define BOOT_TARGET_SF(func)
+#endif
+
+#define BOOTENV_DEV_SF(devtypeu, devtypel, instance) \
+	"bootcmd_sf=sf probe 0 0 0 && " \
+		"sf read ${scriptaddr} ${script_offset_f} ${script_size_f} && " \
+		"source ${scriptaddr}; echo SCRIPT FAILED: continuing...;\0"
+
+#define BOOTENV_DEV_NAME_SF(devtypeu, devtypel, instance) \
+	"sf "
+
 #define BOOT_TARGET_DEVICES(func) \
 	BOOT_TARGET_MMC(func) \
 	BOOT_TARGET_USB(func) \
 	BOOT_TARGET_PXE(func) \
-	BOOT_TARGET_DHCP(func)
+	BOOT_TARGET_DHCP(func) \
+	BOOT_TARGET_SF(func)
 
 #ifdef CONFIG_ARM64
 #define ROOT_UUID "B921B045-1DF0-41C3-AF44-4C6F280D3FAE;\0"
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
