Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF3112CA8D
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Dec 2019 20:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSZK1zONXrd5ZnEnqjJGkOTVgs2R41cpmhjqYQ03rnA=; b=a6lQYW1QfDLMuW
	25FLodppFK9vUfabe6uRPGBq/DK6qWKHXUciCGjjDQZC8WJT8UbXiIF7kq6I4vSQ6xAkjMvk7PB5l
	YwvdOvp8oQHwn7dUNFMMsTO+CkKqXiSnHrxcsxt5xJFFTkv75Y5nRXipH3YXAJj7UjwESLTYLhRRZ
	2Ub9I9I2GpOlsgaiT9Ap2zdQNDk2YJzwHwMHGG0guOO8ZU9xdww2zxkPkkq8pyU0NqfmOsfJfX9Cs
	pNm5GnD5dxnFdRsHBdB1UnMRNldyRqHrpzK9fH8esO6dYX8QLee1+YsCPlq4HckQ6GXSLs+tGuofA
	buPv/8eCQ9XKT+1oUa+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilduz-0003dz-10; Sun, 29 Dec 2019 19:08:01 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilduu-0003aQ-95
 for linux-rockchip@lists.infradead.org; Sun, 29 Dec 2019 19:07:58 +0000
Received: by mail-pg1-x541.google.com with SMTP id k197so17013844pga.10
 for <linux-rockchip@lists.infradead.org>; Sun, 29 Dec 2019 11:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OclQb8nXU/5Z2kX6g2jXsNVbgd5mlQqGTFLV3uaUurg=;
 b=L+5VnKGdICoeS9iCJsEgScBesMxQcErBB6yRCF+YoaHP5liMaWMAXapIUZBWv6FJA3
 /srvB1k+f05V4gyJBO0mMhNswfjvDHS00Oa05YdTuHqoaSjaqvmvXZ1mmevMVqISTazE
 mFSB3b0kB6Xj1eHspHjn0iUBSu7JTMHIeyupU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OclQb8nXU/5Z2kX6g2jXsNVbgd5mlQqGTFLV3uaUurg=;
 b=qoWC66pPvBDBWR7AJZuq8VVIi/ixUvmahMvx6BLtonw7kGPemhjpjffGMiEIGJttQq
 oFEbq65cvudnKTPx54Jxvownwa+X60gYQZZ8S18Wimz2TMb15scCOLX2hT7OZ7JSSBT2
 GpZ+JSVGUyDz8Z1zcikVRSzj2p3ZwOwzQ3cUJHKwnjvGxcV1lSFx0vHHVTu7OwU6EOgg
 8AuCi2VOkfbdS5nBFRgBP9Z8mpaZWOBkQzirpal0N/0Plh/MqrrMkebDO9MgeEPJnmoy
 yicH8xwLJ0xeulmGapLXO59SjIcWQ0fJWttTr4kfZdIaeaiRjbx10Gf0lYDaSlA9+xRS
 IHNg==
X-Gm-Message-State: APjAAAXvaxZK2y3iATORkoVpYmKP8wHEElrrCG6yDNeiQ4BGz+V36wLs
 ZEAUytTfnrIn1LdDp3do2v58Qg==
X-Google-Smtp-Source: APXvYqxNwrogJIG82TM6agrEseHFlywO6hMgUfd/5RZlYuyNbneMSJbAO7D1fMk10cWtNg64JaU8Kw==
X-Received: by 2002:a65:4381:: with SMTP id m1mr68859912pgp.68.1577646475724; 
 Sun, 29 Dec 2019 11:07:55 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:f590:ce0e:1ce1:c326])
 by smtp.gmail.com with ESMTPSA id u10sm44879700pgg.41.2019.12.29.11.07.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 11:07:55 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 5/5] rockchip: rk3399: Add bootcount support
Date: Mon, 30 Dec 2019 00:37:26 +0530
Message-Id: <20191229190726.29266-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191229190726.29266-1-jagan@amarulasolutions.com>
References: <20191229190726.29266-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_110756_330375_EA7EA10F 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add bootcount support for Rockchip rk3399.

The bootcount value is preserved in PMU_SYS_REG0 register,
this would help to support redundent boot.

Once the redundant boot triggers, the altboot command
will look for extlinux-rollback.conf on particular
bootable partition which supposed to be a recovery
partition where redundant boot required.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Kconfig        |  2 ++
 arch/arm/mach-rockchip/rk3399/Kconfig | 10 ++++++++++
 include/configs/rk3399_common.h       |  5 ++++-
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index d8d68ba447..9a3c65ec58 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -244,6 +244,8 @@ config ROCKCHIP_RK3399
 	imply TPL_CLK
 	imply TPL_TINY_MEMSET
 	imply TPL_ROCKCHIP_COMMON_BOARD
+	imply SYS_BOOTCOUNT_SINGLEWORD if BOOTCOUNT_LIMIT
+	imply CMD_BOOTCOUNT if BOOTCOUNT_LIMIT
 	help
 	  The Rockchip RK3399 is a ARM-based SoC with a dual-core Cortex-A72
 	  and quad-core Cortex-A53.
diff --git a/arch/arm/mach-rockchip/rk3399/Kconfig b/arch/arm/mach-rockchip/rk3399/Kconfig
index 868e85fc2a..f994152803 100644
--- a/arch/arm/mach-rockchip/rk3399/Kconfig
+++ b/arch/arm/mach-rockchip/rk3399/Kconfig
@@ -113,6 +113,16 @@ config TPL_TEXT_BASE
 config SPL_STACK_R_ADDR
 	default 0x04000000
 
+if BOOTCOUNT_LIMIT
+
+config BOOTCOUNT_BOOTLIMIT
+	default 3
+
+config SYS_BOOTCOUNT_ADDR
+	default 0xff3100f0	# PMU_SYS_REG0
+
+endif # BOOTCOUNT_LIMIT
+
 source "board/rockchip/evb_rk3399/Kconfig"
 source "board/theobroma-systems/puma_rk3399/Kconfig"
 source "board/vamrs/rock960_rk3399/Kconfig"
diff --git a/include/configs/rk3399_common.h b/include/configs/rk3399_common.h
index 127ca1f09c..89a8a44bbe 100644
--- a/include/configs/rk3399_common.h
+++ b/include/configs/rk3399_common.h
@@ -63,7 +63,10 @@
 	"fdtfile=" CONFIG_DEFAULT_FDT_FILE "\0" \
 	"partitions=" PARTS_DEFAULT \
 	ROCKCHIP_DEVICE_SETTINGS \
-	BOOTENV
+	BOOTENV \
+	"altbootcmd=" \
+		"setenv boot_syslinux_conf extlinux/extlinux-rollback.conf;" \
+		"run distro_bootcmd\0"
 
 #endif
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
