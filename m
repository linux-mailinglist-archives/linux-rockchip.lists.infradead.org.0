Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B1C198333
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 20:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=egFAtdxiykDY59Owz2WGb3OGXkVl6UQjF32yRDDbev0=; b=A7iRyj9MHHECLXC4EYk9vtZnhI
	l09R4jbz3Va9xWpbxn4oYa/Ok8eqA0TrCe4rE/z8GT5iSEO+gU94+eyU8cFmiNrRl26OSHk7o+XO+
	WLI0kjAPAkWM35kub6Oy2EcoazQWSEUtUiMJ0FHY7nNu937BJe8Nysuun2nTEQqgumtmqpVYY5vJ0
	AxXuDhPFLrEF0KsH0q5QDnYrcJInI2Z9zJBhM98nm6JofDoAKLdT4K2TpSpq3jdvhY+DYk/MxL/CV
	VZZSnX8iIjlUPUD4J7mQdyR8pdMvXamXejL8vPixmvsPIdCZaN9xH6g+Gad99PtnmVT+rJD2cOf6T
	uFWj2t1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyxp-00028J-Fv; Mon, 30 Mar 2020 18:16:45 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyxd-0001xS-H2
 for linux-rockchip@lists.infradead.org; Mon, 30 Mar 2020 18:16:35 +0000
Received: by mail-pl1-x644.google.com with SMTP id d24so3215756pll.8
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2020 11:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OoGn8QBGSdBeVcx7ww2exfrAU8/niS0AWwlQNFH0BPE=;
 b=Jpdl8vLXku2sulzji02Oum+5H+2gXoCQn92MnsFNLbgmE/YPvTN5xF8qhJudGtXi+s
 WRma9nUERdWqCqevyBr0vuuf1KppzZ/NnOZ0MuXuySK0GLeV0Pp3mkIngYXcTy53sDO3
 OEyjYKnvndnvzIYnWsWnL9yx/XzUPn9enpXbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OoGn8QBGSdBeVcx7ww2exfrAU8/niS0AWwlQNFH0BPE=;
 b=MjwSiSM2WiqM6yyzeZ8zjpQAyHJOcbbosu77zv/7eIV/QFG073l0NHSR7ZGqGP+HSi
 5pIbAP7t6Xs6xK+NPZxaiG7l6GED5ukiIQkb7w1NjyVdyq35VhnqqRkZ6+kiIszxiUlB
 VMldyHfwZycmjwV6S3AkPsrQSVKZ3l2xt0N/zgtn+ntnU7RVkMHRHe/VljiSWaPm3LCv
 bX1CyzTTxpIkpZHaZUq2taIgd0iiRi+uc2GF6EAJk2DqBdOGnZagookahbTKeioK2QPB
 6Ipc/N8QccQajkvITxQIwEzlGO9R/9mSIPB3Z9jK09qPolNDTVNhuOxnqPVHVKvaO26E
 HZLg==
X-Gm-Message-State: AGi0PuaCykxQaeEMjVrnDFV8XE6vLVHGQRn8b87S6VTvZC0DzBNl7wTX
 wPfa/YwP4hNuSQiqKesEgUN8yA==
X-Google-Smtp-Source: APiQypJKLAQVgCV8my6PcOtRg7tGPr8datyH5PpivDiTS9dCxGE/70j3LrYDr153q7p3kqn47JhVhg==
X-Received: by 2002:a17:90a:faa:: with SMTP id 39mr441309pjz.190.1585592192279; 
 Mon, 30 Mar 2020 11:16:32 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b95e:3742:c972:389e])
 by smtp.gmail.com with ESMTPSA id p7sm207452pjp.1.2020.03.30.11.16.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 11:16:31 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
Subject: [PATCH v2 2/4] video: rockchip: Fix vop modes for rk3399
Date: Mon, 30 Mar 2020 23:46:11 +0530
Message-Id: <20200330181613.29462-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200330181613.29462-1-jagan@amarulasolutions.com>
References: <20200330181613.29462-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111633_688903_6677C1DE 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VOP display endpoint pipeline configuration is differs
between rk3288 vs rk3399.

These VOP pipeline configuration depends on how the
different display interfaces connected in sequence to
IN and OUT ports like for,

RK3288:

vopb_out: port {
	#address-cells = <1>;
	#size-cells = <0>;
	vopb_out_edp: endpoint@0 {
		reg = <0>;
		remote-endpoint = <&edp_in_vopb>;
	};
	vopb_out_hdmi: endpoint@1 {
		reg = <1>;
                remote-endpoint = <&hdmi_in_vopb>;
        };
        vopb_out_lvds: endpoint@2 {
                reg = <2>;
                remote-endpoint = <&lvds_in_vopb>;
        };
        vopb_out_mipi: endpoint@3 {
                reg = <3>;
                remote-endpoint = <&mipi_in_vopb>;
        };
};

RK3399:

vopb_out: port {
         #address-cells = <1>;
         #size-cells = <0>;
         vopb_out_edp: endpoint@0 {
                reg = <0>;
                remote-endpoint = <&edp_in_vopb>;
         };
         vopb_out_mipi: endpoint@1 {
                reg = <1>;
                remote-endpoint = <&mipi_in_vopb>;
         };
         vopb_out_hdmi: endpoint@2 {
                reg = <2>;
                remote-endpoint = <&hdmi_in_vopb>;
         };
         vopb_out_mipi1: endpoint@3 {
                reg = <3>;
                remote-endpoint = <&mipi1_in_vopb>;
         };
         vopb_out_dp: endpoint@4 {
                reg = <4>;
                remote-endpoint = <&dp_in_vopb>;
         };
};

here, HDMI interface has endpoint 1 in rk3288 and 2 in rk3399.

The rockchip vop driver often depends on this determined endpoint
number and stored in vop_mode. So based on this vop_mode the bpp
and pin polarity would configure on detected display interface.

Since, the existing driver using rk3288 vop mode settings enabling
the same will result wrong display interface configuration for rk3399.

Add the patch for fixing these vop modes for rk3399.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 arch/arm/include/asm/arch-rockchip/vop_rk3288.h | 11 +++++++++++
 drivers/video/rockchip/rk3399_vop.c             |  2 --
 drivers/video/rockchip/rk_vop.c                 |  4 ++++
 3 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/vop_rk3288.h b/arch/arm/include/asm/arch-rockchip/vop_rk3288.h
index 8398249509..872a158b71 100644
--- a/arch/arm/include/asm/arch-rockchip/vop_rk3288.h
+++ b/arch/arm/include/asm/arch-rockchip/vop_rk3288.h
@@ -85,6 +85,16 @@ enum {
 	LB_RGB_1280X8 = 0x5
 };
 
+#if defined(CONFIG_ROCKCHIP_RK3399)
+enum vop_modes {
+	VOP_MODE_EDP = 0,
+	VOP_MODE_MIPI,
+	VOP_MODE_HDMI,
+	VOP_MODE_MIPI1,
+	VOP_MODE_DP,
+	VOP_MODE_NONE,
+};
+#else
 enum vop_modes {
 	VOP_MODE_EDP = 0,
 	VOP_MODE_HDMI,
@@ -94,6 +104,7 @@ enum vop_modes {
 	VOP_MODE_AUTO_DETECT,
 	VOP_MODE_UNKNOWN,
 };
+#endif
 
 /* VOP_VERSION_INFO */
 #define M_FPGA_VERSION (0xffff << 16)
diff --git a/drivers/video/rockchip/rk3399_vop.c b/drivers/video/rockchip/rk3399_vop.c
index 81c122d7a9..1d5b3931a6 100644
--- a/drivers/video/rockchip/rk3399_vop.c
+++ b/drivers/video/rockchip/rk3399_vop.c
@@ -45,8 +45,6 @@ static void rk3399_set_pin_polarity(struct udevice *dev,
 				V_RK3399_DSP_MIPI_POL(polarity));
 		break;
 
-	case VOP_MODE_LVDS:
-		/* The RK3399 has neither parallel RGB nor LVDS output. */
 	default:
 		debug("%s: unsupported output mode %x\n", __func__, mode);
 	}
diff --git a/drivers/video/rockchip/rk_vop.c b/drivers/video/rockchip/rk_vop.c
index e91d4dfa7f..e1bd656bee 100644
--- a/drivers/video/rockchip/rk_vop.c
+++ b/drivers/video/rockchip/rk_vop.c
@@ -118,10 +118,12 @@ static void rkvop_enable_output(struct udevice *dev, enum vop_modes mode)
 				V_EDP_OUT_EN(1));
 		break;
 
+#if defined(CONFIG_ROCKCHIP_RK3288)
 	case VOP_MODE_LVDS:
 		clrsetbits_le32(&regs->sys_ctrl, M_ALL_OUT_EN,
 				V_RGB_OUT_EN(1));
 		break;
+#endif
 
 	case VOP_MODE_MIPI:
 		clrsetbits_le32(&regs->sys_ctrl, M_ALL_OUT_EN,
@@ -313,7 +315,9 @@ static int rk_display_init(struct udevice *dev, ulong fbbase, ofnode ep_node)
 	/* Set bitwidth for vop display according to vop mode */
 	switch (vop_id) {
 	case VOP_MODE_EDP:
+#if defined(CONFIG_ROCKCHIP_RK3288)
 	case VOP_MODE_LVDS:
+#endif
 		l2bpp = VIDEO_BPP16;
 		break;
 	case VOP_MODE_HDMI:
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
