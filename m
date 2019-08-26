Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3B69D5C0
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqaxZzf3Y3yQlDdXKzCVk4YUXXfH2OtmDK5KxHhI804=; b=tm8467C3PIiYgx
	EJAOv6OojXZFr3TbhytIZpa80UiiM31kzj0Fp0m0komaI34tQwEey1uPl56Fdpe5haNTDQmc1sIvk
	j+3K21Iv9GQsC9ObWoDxpyNlHjpC8iBL2QON5ypghOJymNQvhWFHLzj35FHnrQzcF4Ry8xcW1rLqd
	fyF05F4gBZCTDYk9G0lJqVTcmUhrptI1lTuFzRIdQMGSQEJKJReukcZg1Nj7cea5Khg7Us8lad5sn
	ArQKtfBcXBE72NxzMIOoenmDpiv2S7fk18xa3hrq/PlB6v5xHF4tr4VkgEEDAcTWYFt7rsmZaety3
	ZbXYDDbW4gbHoOAIw21w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jcw-0001vZ-Ld; Mon, 26 Aug 2019 18:22:02 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcY-0001YP-A8
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:39 +0000
Received: by mail-oi1-x241.google.com with SMTP id y8so12856439oih.10
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E/qBc6mh0Js+GUAR+QXICXFI1nahJkV/JF00fmFnkqo=;
 b=MOXXMFw6DQ1VyLS7ZMcvI3YqTrVV8oPZPzuLEW5mCWMprrc2NlyxTBSgpMasTf4mZ1
 YO3sFnUDj9GYn0w2eLS/zJ2OAh53OPWwTR7CtfIEuJm8nBchlZNZ1wqBN8hNejK752s7
 IkvLOP2Sn2NhooYYGCVfxNuyo/18HQ/RjTWqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E/qBc6mh0Js+GUAR+QXICXFI1nahJkV/JF00fmFnkqo=;
 b=VHo/F6LE7rZrGyIRRvuY1yT4bjn6MuDpYtmvDO2EP2ZZQ1BXke3ZaIGzw0ngL/TazI
 /2a80U5tx5EZdrnlLWZzAp075zGbkcGLIgZwP1rY72Eer4ccVnGvrdQSapP5B9ydI0Aq
 iSDnRxPIgieacSlOQlAW5+Ri3M+Q/7uSbRfShn5d8cPbwsfWfev58pv9fOdPPIE2MteI
 MMj/q7w0gKc5rueDLSLD+MRKKuwTUXlzuHjv1iJhDEUnpFL3IJY96PQ0klE4YZTPRvGR
 RMzQN0tiCH3EaaL/WF82/J4kvMDkwEUY07ZMTjWElWtWnljQc8Srl5wLJK8lvOtlFYPY
 awaQ==
X-Gm-Message-State: APjAAAXhE8XYOgoVGANHcMERaZ32GXKqnsWGHlzShVCPfc45YtARJGq1
 0b1yR/3iccrjQKY//O7JoQFT9Q==
X-Google-Smtp-Source: APXvYqxlaDirj6lxQij2alBMCk84MhbFfRlSW0g1MhvDp1vpZs6FfNjYSfxggeCN0Hza1qWVNdbjmQ==
X-Received: by 2002:aca:1104:: with SMTP id 4mr8967503oir.65.1566843697673;
 Mon, 26 Aug 2019 11:21:37 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 15/16] rockchip: rk3399: Add bootcount support
Date: Mon, 26 Aug 2019 23:51:10 +0530
Message-Id: <20190826182111.30999-16-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112138_483948_AEC60ADA 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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
index f5a80b4f0c..f3e4d72203 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -197,6 +197,8 @@ config ROCKCHIP_RK3399
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
index a5e69b26ad..724ea4cbfc 100644
--- a/include/configs/rk3399_common.h
+++ b/include/configs/rk3399_common.h
@@ -64,7 +64,10 @@
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
