Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5491786A4
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfWEofBFJhIs1+ytpgKrIpQKdYkiZc2k6+jHDoAyrhM=; b=QFRZ2bSaTu0tiB
	CQmTLb91qvXOP7vaItso1lFyhSxwZzBNGASCg6VOCTwdMtzSmr/WdULYpjGQTF/qLgy+/SirZK+wP
	d2gGTZuptYCsE/3KFvKgfYs06dioTzZoG8XT+pr5hgXPFKT5FMAiezXVFxY/v9MQlyt5ZIXdCro0k
	+2whiyNDRX/4fnzITO+0TwGvRlrK5YRrWoq9azQLvsW8/AADuVbi8A7z/K2FPZ931hFZNRkEwAfz9
	UvbBMUcxHKehFrpIDrndZ0BVW8RSu2TTU+119oSHQNN4dAkEo/c5aPAEYGbVFmNhEPWkTo4z2xHmi
	mTFaqWNNOdkId3cRNR6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0OL-00039V-Nr; Mon, 29 Jul 2019 07:48:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0OI-0002yY-3v
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:48:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id u17so27808424pgi.6
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u7szBjNEXUp4OiSeFnl8aPhRsuIeh4Tl0P1JrlmGS+4=;
 b=c7WwARmCOMC1k9yY6B799HcEcsOa42QQyjFXyDCDvq+zZ3J9psjI3ti/tvw1qYvxu9
 lnDGoCh4ONCjBZLb1ga8aUOjPN2EYJORN/iI5TlNAwIE17vqxefmcPO1UyIYWmzX8Fy5
 fqbxnIrl/8vJqLFSsxJvcRJ+vJEFxZfA9WOrI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u7szBjNEXUp4OiSeFnl8aPhRsuIeh4Tl0P1JrlmGS+4=;
 b=GLamWbLQoDtS0iD5vxUcHqbaT02PqhsqHBIvenbz2oM7QXlvFXWMm8gc/O+PAWxGk7
 dzyyiVGMOA45GIwH6g1lcjVO6cCNsTrHUyhfcQ1r9IJO8uUxJE671s4rmANV0y30iWKt
 POH1cuG1cVe1ORr3Iyf+h/q+U++E3kGIYlQRqcPDh5bw1YHGr1TGasP9uJojGLgh55FK
 EmjvAzJhuhM2DZOqkjhiGwUb65+zwXa0MSv+Hg41Ar8wBZsAfvXqsrydGFgEnQKEnP19
 nfLG/gTDpXOzjFblvmNLE73kbjZF6hnL6X/8HDzzY77I6gqs8L2EtBwwvdhLkrmRDrSf
 HK8w==
X-Gm-Message-State: APjAAAWjMUsP0xw+J3R1sSSDa8UCw8PZt/pE3g6Eil65IVZsPJrmsbmH
 fLSlXt/wwfrWeeY/942t+Uxr+Q==
X-Google-Smtp-Source: APXvYqxd7DW4FUjd7e0VL24ANUFtT0eZc4uXh1C9cfD0resPdzxTBUOgEAXqeodlU+HMvAA4q8TzVQ==
X-Received: by 2002:a65:5a44:: with SMTP id z4mr103285588pgs.41.1564386497542; 
 Mon, 29 Jul 2019 00:48:17 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.48.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:48:17 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 14/15] rockchip: rk3399: Add bootcount support
Date: Mon, 29 Jul 2019 13:17:10 +0530
Message-Id: <20190729074711.16988-15-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004818_184448_EAFD56DD 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 17f31e89f3..dd5055ed69 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -184,6 +184,8 @@ config ROCKCHIP_RK3399
 	imply TPL_CLK
 	imply TPL_TINY_MEMSET
 	imply TPL_ROCKCHIP_COMMON_BOARD
+	imply SYS_BOOTCOUNT_SINGLEWORD if BOOTCOUNT_LIMIT
+	imply CMD_BOOTCOUNT if BOOTCOUNT_LIMIT
 	help
 	  The Rockchip RK3399 is a ARM-based SoC with a dual-core Cortex-A72
 	  and quad-core Cortex-A53.
diff --git a/arch/arm/mach-rockchip/rk3399/Kconfig b/arch/arm/mach-rockchip/rk3399/Kconfig
index 6660d05349..68ac913bcb 100644
--- a/arch/arm/mach-rockchip/rk3399/Kconfig
+++ b/arch/arm/mach-rockchip/rk3399/Kconfig
@@ -91,6 +91,16 @@ config TPL_STACK
 config TPL_TEXT_BASE
         default 0xff8c2000
 
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
index 67b48e03ba..ace82928d1 100644
--- a/include/configs/rk3399_common.h
+++ b/include/configs/rk3399_common.h
@@ -70,7 +70,10 @@
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
