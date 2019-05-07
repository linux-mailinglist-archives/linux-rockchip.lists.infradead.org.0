Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB6816A0F
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxyrHuxaACrIiOJLsBaA9M2c49UtNeA8Qw8w6Mrrpjc=; b=aN2ZiNjasxQBhE
	7Ufk5WHohVWCYCIeDjzXDTuWacWgZ76fAVlrXViFNdLBvPSa74vAegPqiCGTjUk1IyVPB5xPfBodC
	oTre/TDso+vrmlFkElXUtoV+hE53fZ/BNgcBpbV00od0sJfvZtm1cN/AVWGc0ib2uoehCoK+a1jOJ
	ajKapyNLYcpB85RJnKmqwJqdcUFylHztLni3U5z3A/+kdRPKsED4zdhltRMY16zGTiK61vQI3RgzW
	xm/aXG1a6eZEwtEppMKkBGRxfazAasYSn64kUgZ1Q33hM18o6Jl4G0khUZM2YXjtg48qiq/4wcvn6
	0aQCqIc8DKwFtHX3uzDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4jK-00031V-B2; Tue, 07 May 2019 18:22:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4jH-00030G-E8
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:22:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id z26so9075018pfg.6
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dWqy5cYXZHO1RCk8XLzza01Y9+Eq8ruW2tx9Pp/Tl7c=;
 b=Owbehs7jTP9Q/11j5vCY0adhHzR8UzUYkM4vZIxbR1cCtmPpEPdtMXgEcRxx+m1PYw
 G+RVFieLaFB4z3/d+r2XPIHIJrDt4N61MmReTJfIp4bMYb2T/PDzEP6tWk9NZulm3/FF
 tlz1QwpFwwf3wQ7GJVQpS45k/1z5zNiXO4qVg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dWqy5cYXZHO1RCk8XLzza01Y9+Eq8ruW2tx9Pp/Tl7c=;
 b=oT6i9Z9LewA57V9VyKrs30sQn/UIw5PULxTH3VFSi+PJpAhpk1ehgznAEZ3xPW3aO1
 cInngs3ulS+BbzxtJgRS2pV7atFmU0CzY8W8SdEez/zL9zstVgOC+5+1mD4tl4bXJfJw
 MK1ttDGTjcifIzkrVWeIev0Ixk7McrVQ5tTMMPtMXMzqfjoqZ9/YM2MxzfKYu1pjt8G2
 qM5/+92qaXYwbfuQITWozjYFfHTCq5gaQMWqG4vq0kj25jCRbr/pkycj/xFkalHv8ZXe
 XAUdebtCFVAPuKBVBb8i7nzWrVAE2hn1drCDPw90Er0BurvVsp338X5ZiZ/4czieHF7Y
 C1yA==
X-Gm-Message-State: APjAAAUCHFsPs0U5uWHQjMteTYL2t/0PkMaguLkbEIXB+2w/iyzoNSU1
 ju4sCMoe4K8ntlUByIgS1XA3Tw==
X-Google-Smtp-Source: APXvYqztWpzrEfr4RW8ADfAVBcu32OHoQotgHyl2IRiazWy8zkD/4cT6I15Zak8LGa66IUZmpG++5w==
X-Received: by 2002:a63:2c4a:: with SMTP id s71mr40634996pgs.373.1557253334499; 
 Tue, 07 May 2019 11:22:14 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id d15sm18491568pfr.179.2019.05.07.11.22.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:22:13 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v7 1/4] dts: Makefile: Build rockchip dtbs based on SoC types
Date: Tue,  7 May 2019 23:51:49 +0530
Message-Id: <20190507182152.4254-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507182152.4254-1-jagan@amarulasolutions.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_112215_474464_38E95946 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

- Sometimes u-boot specific dtsi files are included
  automatically which would build for entire rockchip SoC,
  even-though the respective dtsi should used it for specific
  family of rockchip SoC.
- Sometimes u-boot specific dts nodes or properties can use
  config macros from respective rockchip family include/configs
  files, example CONFIG_SPL_PAD_TO.

So, it's better to compile the dtbs based on the respective
rockchip family types rather than rockchip itself to avoid
compilation issues.

This patch organize the existing dtb's based on the rockchip
family types.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/Makefile | 35 ++++++++++++++++++++++++++---------
 1 file changed, 26 insertions(+), 9 deletions(-)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 8e082f2840..35cbbfabd0 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -65,16 +65,23 @@ dtb-$(CONFIG_KIRKWOOD) += \
 dtb-$(CONFIG_ARCH_OWL) += \
 	bubblegum_96.dtb
 
-dtb-$(CONFIG_ARCH_ROCKCHIP) += \
-	rk3036-sdk.dtb \
-	rk3128-evb.dtb \
-	rk3188-radxarock.dtb \
-	rk3229-evb.dtb \
+dtb-$(CONFIG_ROCKCHIP_RK3036) += \
+	rk3036-sdk.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3128) += \
+	rk3128-evb.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3188) += \
+	rk3188-radxarock.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK322X) += \
+	rk3229-evb.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3288) += \
 	rk3288-evb.dtb \
 	rk3288-fennec.dtb \
 	rk3288-firefly.dtb \
 	rk3288-miqi.dtb \
-	rk3399-orangepi.dtb \
 	rk3288-phycore-rdk.dtb \
 	rk3288-popmetal.dtb \
 	rk3288-rock2-square.dtb \
@@ -83,22 +90,32 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3288-veyron-mickey.dtb \
 	rk3288-veyron-minnie.dtb \
 	rk3288-veyron-speedy.dtb \
-	rk3288-vyasa.dtb \
-	rk3328-evb.dtb \
-	rk3399-ficus.dtb \
+	rk3288-vyasa.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3328) += \
+	rk3328-evb.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3368) += \
 	rk3368-lion.dtb \
 	rk3368-sheep.dtb \
 	rk3368-geekbox.dtb \
 	rk3368-px5-evb.dtb \
+
+dtb-$(CONFIG_ROCKCHIP_RK3399) += \
 	rk3399-evb.dtb \
+	rk3399-ficus.dtb \
 	rk3399-firefly.dtb \
 	rk3399-gru-bob.dtb \
+	rk3399-orangepi.dtb \
 	rk3399-puma-ddr1333.dtb \
 	rk3399-puma-ddr1600.dtb \
 	rk3399-puma-ddr1866.dtb \
 	rk3399-rock960.dtb \
+
+dtb-$(CONFIG_ROCKCHIP_RV1108) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb
+
 dtb-$(CONFIG_ARCH_MESON) += \
 	meson-gxbb-nanopi-k2.dtb \
 	meson-gxbb-odroidc2.dtb \
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
