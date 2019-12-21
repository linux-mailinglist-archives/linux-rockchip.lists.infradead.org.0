Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A321287FC
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 08:55:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=buGegyfKjbkYVqLQR4EtCQ13osrOFJlmkfC8JzbJsjQ=; b=QMLuTybvNMcQe9
	n+6zpKIVr+i59ES5WqIQKT8Q0MrPmgs0nULlvwFXiqSxoqv+84H/n9KjzoKLmJrSxdSv1w/6OgwA8
	u5HgSjqppIHIcG35vrPsFGresmaaGML3rhhpO1sXwp5CChZwBuEyriLCMkVhm4ypMb64ejWcImFzg
	QZLUF8bG88E9NO0y1Sz2+vULvyAA6Vfd3ptM8LQ3XEIJ14Un2ZxkbXp2H7eOpl/x3uIaqE0zjvzqC
	YnT5hZrVmciPn3epAPeOhTo8nP5bvc5m9y7LKgsqD7rM/i1GKmodo1O3AmpTun8MYFAJhwHf7h1LC
	jCatCgROTief3P7WtzVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZbQ-0005Kl-7p; Sat, 21 Dec 2019 07:55:08 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZbH-0005HE-VH
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 07:55:01 +0000
Received: by mail-pj1-x1044.google.com with SMTP id w23so5142859pjd.2
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 23:54:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jM8vNSgXmvPlNxsqNzC3s3ZZdWuXAaTtjcTjHWND2aE=;
 b=rXgiNGgrxMBBsv4ONF1jiCwKXTgHyzjIijjUJMopd3pqCqGiR/izOp2hg7NyiRopjF
 11ZsZj4iokr410N/+JRTiSa0fDk9zQt+GTI+RDd6dSISKvFjmfVbXm4uqs9fcBwKZtAr
 iyVXnIHG5fkdJvdj4N5cRdtVI6Tn747biG+/0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jM8vNSgXmvPlNxsqNzC3s3ZZdWuXAaTtjcTjHWND2aE=;
 b=R2+IGJ1n90sBGQ+JMGp+xyCXhYkwVByNOBkGJa9/G6xE663+4WmTH2sXYSatf2WCbM
 9RYz2BlbpM5hJUcQH/Ix/mNplWCgZLsOhEOEaDtoh8NsrinEb97olIEO/agjXKacW/qu
 2crLpJIc3nJrH+JM+CFFKYYuezn+k1qtN1FkyOPGc7pjpbLrjg0SC+Djq1Tlrzi1Ga8v
 bcktGkaK69vvMuozzKNzjOA/KfUG8rYz+RVgWEZE0mFs39xM+qoTSfui9zEQhJBCIvpH
 JydnJjZ4hDss1EjaVmeifkfItlEKUDg9V+XuP9mwSzjKQetaliT5O66f6sCVQO71m2f9
 Yy1Q==
X-Gm-Message-State: APjAAAUIBvZyxcc6pMKh0pX+tLHil8MaexOT7U9NBZuxMVUfhhjCQx47
 cqO0NA+dJfEzWlCB+AB6zkS+ola2x7Q=
X-Google-Smtp-Source: APXvYqzF4eSrGfRTLFysZ9kNeVM8Pk2Sy7Gilg3aKw2JxBzsKsTiQOelUmQOuHGqpU6bxdeD3qlz7A==
X-Received: by 2002:a17:90a:7781:: with SMTP id
 v1mr21241475pjk.57.1576914897548; 
 Fri, 20 Dec 2019 23:54:57 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.177])
 by smtp.gmail.com with ESMTPSA id i9sm15551018pfk.24.2019.12.20.23.54.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 23:54:57 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 02/11] distro_bootcmd: Add SF support
Date: Sat, 21 Dec 2019 13:24:31 +0530
Message-Id: <20191221075440.6944-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191221075440.6944-1-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_235500_006785_747C60B8 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Tom Rini <trini@konsulko.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add distro boot command support for SPI flash.

This distro boot will read the boot script at specific
location at the flash and start sourcing the same.

The common macro like BOOTENV_SHARED_FLASH would help
to extend the support for nand flash in future.

Cc: Tom Rini <trini@konsulko.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 include/config_distro_bootcmd.h | 35 +++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/include/config_distro_bootcmd.h b/include/config_distro_bootcmd.h
index fc0935fa21..d68b79e290 100644
--- a/include/config_distro_bootcmd.h
+++ b/include/config_distro_bootcmd.h
@@ -43,6 +43,22 @@
 #define BOOTENV_DEV_NAME_BLKDEV(devtypeu, devtypel, instance) \
 	#devtypel #instance " "
 
+#define BOOTENV_SHARED_SF_BODY(devtypel) \
+		"if " #devtypel " probe ${devnum}; then " \
+			"devtype=" #devtypel "; "	  \
+			"run scan_flash_for_scripts; "	  \
+		"fi\0"
+
+#define BOOTENV_SHARED_FLASH(devtypel) \
+	#devtypel "_boot=" \
+	BOOTENV_SHARED_SF_BODY(devtypel)
+
+#define BOOTENV_DEV_FLASH(devtypeu, devtypel, instance) \
+	BOOTENV_DEV_BLKDEV(devtypeu, devtypel, instance)
+
+#define BOOTENV_DEV_NAME_FLASH(devtypeu, devtypel, instance) \
+	BOOTENV_DEV_NAME_BLKDEV(devtypeu, devtypel, instance)
+
 #ifdef CONFIG_SANDBOX
 #define BOOTENV_SHARED_HOST	BOOTENV_SHARED_BLKDEV(host)
 #define BOOTENV_DEV_HOST	BOOTENV_DEV_BLKDEV
@@ -398,6 +414,18 @@
 	BOOT_TARGET_DEVICES_references_PXE_without_CONFIG_CMD_DHCP_or_PXE
 #endif
 
+#if defined(CONFIG_CMD_SF)
+#define BOOTENV_SHARED_SF	BOOTENV_SHARED_FLASH(sf)
+#define BOOTENV_DEV_SF		BOOTENV_DEV_FLASH
+#define BOOTENV_DEV_NAME_SF	BOOTENV_DEV_NAME_FLASH
+#else
+#define BOOTENV_SHARED_SF
+#define BOOTENV_DEV_SF \
+	BOOT_TARGET_DEVICES_references_SF_without_CONFIG_CMD_SF
+#define BOOTENV_DEV_NAME_SF \
+	BOOT_TARGET_DEVICES_references_SF_without_CONFIG_CMD_SF
+#endif
+
 #define BOOTENV_DEV_NAME(devtypeu, devtypel, instance) \
 	BOOTENV_DEV_NAME_##devtypeu(devtypeu, devtypel, instance)
 #define BOOTENV_BOOT_TARGETS \
@@ -412,6 +440,7 @@
 	BOOTENV_SHARED_USB \
 	BOOTENV_SHARED_SATA \
 	BOOTENV_SHARED_SCSI \
+	BOOTENV_SHARED_SF \
 	BOOTENV_SHARED_NVME \
 	BOOTENV_SHARED_IDE \
 	BOOTENV_SHARED_UBIFS \
@@ -436,6 +465,12 @@
 			"echo SCRIPT FAILED: continuing...; "             \
 		"fi\0"                                                    \
 	\
+	"scan_flash_for_scripts="                                         \
+		"${devtype} read ${scriptaddr} "                          \
+			"${script_offset_f} ${script_size_f}; "		  \
+		"source ${scriptaddr}; "				  \
+		"echo SCRIPT FAILED: continuing...\0"			  \
+	\
 	"boot_a_script="                                                  \
 		"load ${devtype} ${devnum}:${distro_bootpart} "           \
 			"${scriptaddr} ${prefix}${script}; "              \
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
