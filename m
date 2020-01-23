Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409D8146E6F
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 17:29:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+u2/tI0o4SC0qo9MimmswktYgGfJXdjeKgoro4WyMc=; b=ezR+5wD6A/IVuT
	3oPnRrggoG60+U76ilNonND4YDvrqdurm81+cjRDFTGEBgyNRu2SUEEeZ7C/ILK7FDI7u5kuz7jXg
	WJDX33Gls0yaAq7HivVdoM/AOoV0ygxEUXoXTN5D8ECoz01Rd1YivFxgeeynbH3Y0RiQP0rn+ufMo
	lEnjfU/e5EYOe1EXGTXJ6JAZBHG7iNlsuEjUIsO03WDlrJHEaCkfn8QkWOMlUvo6FXCsBNNLt3UyX
	6UHGHdC5iUdyFrUbLJ43qvgZKSPfEVaaEBe3D616/TJtoCZHmLSFHtNT4F1EUS8Cnt2PY7UI6kqm2
	trMj/xcI4W5kko4mjw+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iufM9-0007XR-Cv; Thu, 23 Jan 2020 16:29:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iufM5-0007Vb-Vi
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 16:29:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so1637459pgk.2
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 08:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JZjaZueugpYt326WNoZ6QPw0PlT7W0gDge9nb36q0kk=;
 b=Bwp7pmpfPD/Mxq1lEGsA48YFBTsbkbHjvlDaHOOQUSlDRgY9wonkoIj0aHSG5ejhwK
 6dmboDyfunpERJYsDFeZmhbYTJyKZSbUaR5ZiEyBI2RGmrggKJv8+AA6ijCHDGX9gPQn
 CMVgGuI2mnW67zDyKz9IEHgTVVa5uEgEmUjgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JZjaZueugpYt326WNoZ6QPw0PlT7W0gDge9nb36q0kk=;
 b=c65bmJxRKrK4KcNbK06z7D5cxWIH5dJW7pVdhYNg5kobwxur/8yjsj9KsAq3OZpChP
 yi/48afxERmsCsjl0K76fweda/I4xuzvd5bzd/bGSj3vnxWzQJqIfHabFCNjgK8kLPRn
 qGCUYZSAKg6y5Nle9i+ZuuNH445SJ78r2zbZ02jKrJMttz8LnT2VeuXyMVHgj+656muS
 XtgYSDVjlItfYbBHyIdDHOz6XJCnpVWoC074BGqwc/InLBrTErSwNL9y2GVlOB/UPoWa
 jftnko7W4+sY5AWLAbCraM3uzurgVatYQl9d9yA8b1JvAXCZqwL4IYinx0LJvmJN24d8
 nVKw==
X-Gm-Message-State: APjAAAU37eCi+RttF7Oh+ixp1tpnmQIEVg8UBM5hwWywzO3xo6zVnD6r
 7jvCtLKZ0Mbbt3ckFSHkzG8t6A==
X-Google-Smtp-Source: APXvYqyce9PeWozpWCrtVKI0W1jysz8OP288Njlo7DtHo+8/nnxufNXkNLV2nyfqxJp8u3P1FCTvmA==
X-Received: by 2002:aa7:86ce:: with SMTP id h14mr8285366pfo.31.1579796957206; 
 Thu, 23 Jan 2020 08:29:17 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id u1sm3188909pfn.133.2020.01.23.08.29.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 08:29:16 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 2/4] video: rockchip: Fix vop modes for rk3399
Date: Thu, 23 Jan 2020 21:58:43 +0530
Message-Id: <20200123162845.10651-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200123162845.10651-1-jagan@amarulasolutions.com>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_082918_025420_D2DBDB54 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
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
index b56c3f336c..bdb790a0c5 100644
--- a/drivers/video/rockchip/rk_vop.c
+++ b/drivers/video/rockchip/rk_vop.c
@@ -117,10 +117,12 @@ static void rkvop_enable_output(struct udevice *dev, enum vop_modes mode)
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
@@ -312,7 +314,9 @@ static int rk_display_init(struct udevice *dev, ulong fbbase, ofnode ep_node)
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
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
