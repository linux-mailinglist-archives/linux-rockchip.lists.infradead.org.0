Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8182512CDA7
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 09:28:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMGF8mBkBMYchI00YGwHS4i9XqdpkXBqKlbpRwgpyCQ=; b=W+3FR45/+niKH/
	azDoAOAS+g3E2zQlO8jdYRTdu93qs357+5LRXuRKT+Jf0yRNFyh7gxPMyi4AGmD8M9QP/pdiZ4F2x
	EEvWOI5bhBOBRmvTnt9chWvKesXKe2isQPJIJju/fU9lM7UQYe9rtjImIhkK+ft35O2S5VV5J4g5L
	SSHEU5WeB7VmepPIXHkXsfzo0bXoBYD+1/hFXvTHLgifcxEPZwIyTIykp5XAYj5eb0x9ViqldnJ+Y
	6jR3i7ydAtOhfQxae0V/cJ2qXSiTrX5iNstFtX3sKA+4Yfg2Vs+UC66grgNN0hA1q29JQTji/y3e+
	VLqcovdV6M0DLPECmEMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqPp-0006Mf-QF; Mon, 30 Dec 2019 08:28:41 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqPj-0006KK-0h
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 08:28:37 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so14337844pll.13
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 00:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MdVD38WP8mrB9cxL9ngtMTtlvhd/lrRFS5qqLyy/3UM=;
 b=MlZE2DM0wOsol+YoYqPuhAkBrVnIBVE+xAL9bgj8s43TrIDVak7oMVANwNBafAwr/8
 7AvwSfBjf2UQCuY9qb5frM0fg2FV/DI7zyGu9qe9q0xlc5snHQfMgW/afHqksx4B/XB3
 hnW3nTneAHvh90yyYwa31PlzFBx7VkJjVjFHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MdVD38WP8mrB9cxL9ngtMTtlvhd/lrRFS5qqLyy/3UM=;
 b=OWwiGMxOmfHpCt1jBw+qUlg00RYvIjpfU3qLC5++tKGktRYy30SfPMZsksTzhJpXLG
 JcLOlg3u82Si5xO3/JjA29nc0ZAHgcptpDl95I3aYIlnXiu88vNiGwY0AO6qpoAvTPR+
 y+JuLJ6iBeCB7DwmD/zmHbH8SJMwR8iH7RlIOQFQ9lV5GkHyZomMfHxvsIceBDo5EffG
 A1Rmoq6igyAHsyTkxbAzJTqtva4uRVeF/pEnhk27akotsfMK4WLDH4G0IBM6XqepHFJb
 Kt+qLRWKlND8YYPsvRWuC3XRwm/ccwJtsecxpNetocS+zdU9+//4O5ySennNyjVtSJX4
 js7Q==
X-Gm-Message-State: APjAAAWtPVYsN0Bmt+prxtfKP06MM2UTyVDcgLMncD1NwPuIBRrCoa+I
 7vFPR9xfi+bxeoQtSDKjg2qsJw==
X-Google-Smtp-Source: APXvYqzBsaFR/18vva8NG8DE0nNHDhMQUBZ8yU153dDt1ssUVLHJ1i6qWpyvprYG4dHz449LtvHx1Q==
X-Received: by 2002:a17:90a:8a98:: with SMTP id
 x24mr46130229pjn.113.1577694514556; 
 Mon, 30 Dec 2019 00:28:34 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.131])
 by smtp.gmail.com with ESMTPSA id s1sm46240652pgv.87.2019.12.30.00.28.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 00:28:33 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v5 2/7] Makefile: rockchip: Suffix platform type with tpl name
Date: Mon, 30 Dec 2019 13:58:14 +0530
Message-Id: <20191230082819.30191-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191230082819.30191-1-jagan@amarulasolutions.com>
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_002835_110892_DFBCA602 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Most of the platforms uses the platform type on their boot
stage image naming conventions in makefile like,

u-boot-x86-start16-tpl.bin - x86 start16 TPL bin
u-boot-spl-mtk.bin - Mediatek SPL bin

This would help to understand the users to what that
particular image belongs to? and less confused.

On that note, suffix platform type rockchip for existing
u-boot-tpl.img so now it become u-boot-tpl-rockchip.bin

Also, bin is more conventional way to include it on tools
like binman, pad_cat etc in future patches.

Note: usage of platform type doesn't follow consistent order
as of now.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 9998d238f3..e519103be4 100644
--- a/Makefile
+++ b/Makefile
@@ -1382,10 +1382,10 @@ else
 ROCKCHIP_IMG_TYPE := rksd
 endif
 
-MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
-tpl/u-boot-tpl.img: tpl/u-boot-tpl.bin FORCE
+MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
+tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
-idbloader.img: tpl/u-boot-tpl.img spl/u-boot-spl.bin FORCE
+idbloader.img: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
 	$(call if_changed,cat)
 endif
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
