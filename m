Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DEC1354D2
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 09:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ozz9cMV9dm3HqtUIkUq+vYTj6zP6gzf4l4mNGWGiCfE=; b=j1F8uaV/NqVXa7
	TIT9DCuyCRD4Zsv70sK08SE8gfcIDQqfvSVe7aaxD0lzS+ed9Jvo5QwaiKp0Os5JZMHfBWc5jACl1
	4lvqZos3OM16neuIjODbTYg5TZmfgvw6rUKgE/k+Ze8fzcIHX97eIe+QvgarlUpRgL/pdZzy0T0sE
	Zk/2lQVlCJLy3LoC0zBplPEnR8NhUcQBIMGWyZqXtDNe1qUk8z8ccXjI0dVYhH936AfaMIcixTown
	jXy5tRdLGx/bmloM+1ZMcIWMbhrfk2jRwo3s24HdglFGjU/Txomw8sFVgA8ZmQOrTwZQKdXZ4stfZ
	f5lsKcAZMmP2yrTo0Q2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTYx-0006OE-R2; Thu, 09 Jan 2020 08:53:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTYn-00068k-0k
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 08:52:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id k25so2895144pgt.7
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 00:52:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oRKgs2PetZDvzDu1FBC+Mjjc1xHu28pIwI8pYrZq3es=;
 b=iywMJA+Qp8etlYyUsVRGlzdkZJr9d5L8s3C1uWZMMyCMPTho7EX9CDw1b/RFC59Jt1
 qIdXuodySDTu0QXTDtmgXr0615PXaSM1YFzVe3krpAMjupnXVh5kk4HYvIxyoXJuurDD
 RBHrVLrh7cCb231rKFbg0d1EKTVrQdb0sg5uM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oRKgs2PetZDvzDu1FBC+Mjjc1xHu28pIwI8pYrZq3es=;
 b=KlKNc/d1MwTN9BPyLeKhP901yOWYHCyfYIu+X2dKC+zeSbn1EI1G8D7hqNW7f2TM6I
 drAROl0j7Zfb84nmBzl8tgSGCcuAelqkCDHsELd9CqjYKAo23HTeSRqvEW9vc33ZlUSv
 R96BVaJauzkyi4NmdvDhu35Ja8d9OdlmyDhQh0Uj0vNhGCOWkBz/trErVbJz03rkBDKk
 G0QQUgFIRbhXmYDOITWzEdGPXyAB46wcKOrI/yo58BhZubkUk266EIX1LRG/EXHJLyBu
 eRIW257Guk62hTLoxLyWBmPmUrTxUXztezO23i6psZFYjrbUCLletkmKo/olKx+MkZWW
 XHcQ==
X-Gm-Message-State: APjAAAUFPrmOAlPl6ccLHoeUwL3/zchEfAVw7Iwa3e3zYNEidIrVo6ZG
 xGnwIPmhXtF1Fl4aWcMhooqKkw==
X-Google-Smtp-Source: APXvYqxQd6qn/IWpn64hVmGxsTowpWIXJcbZlmF9NSFS0MhhUyCjXxfjNibcDCJ1EP62DL+mYpKfqQ==
X-Received: by 2002:a63:2949:: with SMTP id p70mr10177435pgp.191.1578559975335; 
 Thu, 09 Jan 2020 00:52:55 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d888:9871:544a:b516])
 by smtp.gmail.com with ESMTPSA id o17sm2139121pjq.1.2020.01.09.00.52.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 00:52:54 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 5/8] rockchip: rk3399: Add bootcount support
Date: Thu,  9 Jan 2020 14:22:19 +0530
Message-Id: <20200109085222.22670-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109085222.22670-1-jagan@amarulasolutions.com>
References: <20200109085222.22670-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_005257_103090_239F3A22 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
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

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
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
