Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D7FE7857
	for <lists+linux-rockchip@lfdr.de>; Mon, 28 Oct 2019 19:23:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duoNHU0VDJ9BUDPLryTMxl+giqlEks60z/4q5qjSVSo=; b=UpLLe3OnN0DbnB
	4bjsRJxaKjNsV8Ml28yvH4wihNwjs4RDHRXTI6lLSYuw0FlB8Z7ROzQ5xVC+0Y0ETxifmNnvR1FYX
	eBUKICwG3iiuM8uy03kMj1ccM2wjao1dltw/BYyPSJJhk2gjYZ55jJbJFzOXn26WGsFnywQR2LBSA
	DGjLJ1Ja4wIe8dACOU8CHYZxU5/hsTU4r7q87kgrbLFidEDxYkgc0QfDrxCkL/Re5bK2rhUGVr6UC
	S5N/JhCqu75jos/YuqNStkqjI2U1M6SSwu4RkjLI71Q8SFUDCk59qwRbySnlM1fy4n+RA5Xxa7oZ0
	/5Ydb38TGKNYF3rtmLtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP9fu-0001Yj-2K; Mon, 28 Oct 2019 18:23:30 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP9fn-0001Td-So
 for linux-rockchip@lists.infradead.org; Mon, 28 Oct 2019 18:23:25 +0000
Received: by mail-qt1-x844.google.com with SMTP id g50so16008688qtb.4
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Oct 2019 11:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bYdyfTTVAmyGW21ZGGqnnoD86zc6/IpuGIb/U04K8uI=;
 b=L15uAcXSF7j0iLmVzieZstNJpuLMz+ce+dovme+wlNu8+hx6J5j44mW5uNS+kUSiHK
 w29wSEu8ajENkKxD+B9Jtr8KDrzC4XdTscr0wriajfadOd1vlAkNIgVnf3bgXmDXELfS
 J//jn0gjTr2OFOtXrXAnYgs9mIYPy8ANRLl/hLbC0U9SPNmn5mYp9qqmn3T0TWFzpTp/
 A1ParnpqahmjKuGq7aXvleStxg2D804t3/3fozxJ4gDClZWIsTnepxr5N+sgpt3kGngD
 mPFBA5oDkJrzgtX9psmuFe1Yy7Sqfo+cw1DhLCTWsUUyZJ+C0PuvAbth7YZxn17Sy4MM
 tLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bYdyfTTVAmyGW21ZGGqnnoD86zc6/IpuGIb/U04K8uI=;
 b=mt6nrNZwWXm8hvsjdlxMTC6xG3qDW0WLzLOjgy2daj5FRi28qvEWpRpUK9NIEFusyI
 rJrctnF+/WgYqq0ziFJEcW35zMbznx8iaJv28dX4kyUb+q5N62sIbNvCYT+3CFneAW+S
 4l5/gazrMIL3ClmZty5huVWKWZwTCIFl634JOPBqWV6DsgBguIaSnMGGmk1NdYgRhoMc
 3HL3C28lryOAmaTZu+CVvJ5VVk8MSA+Rv8PHEKl25QgU223aO6oRrSZA63V4zoEzz/DD
 EK1nE7vA2IowMYN+0gusFShu8Yo0QnXmkLtUpLdvx4nnrTTvag/obcJH2Tmh+hEL9YjG
 jmmQ==
X-Gm-Message-State: APjAAAUBS7croOCCLRQlIVTs1WVxyOysp187w/DIWF5TPFlikMepYCoj
 wBGpYvRiFkeBQAoYK318CqY=
X-Google-Smtp-Source: APXvYqyBALN0xL62K4rkfFWmGboru7kCh/giq31JFj9yvizQqCE9Z5w702lsedNOszgfmlv2cY7gWQ==
X-Received: by 2002:aed:3baf:: with SMTP id r44mr16827909qte.255.1572287002822; 
 Mon, 28 Oct 2019 11:23:22 -0700 (PDT)
Received: from firefly.sparksnet ([2601:153:900:a52:6f12:874c:d2b2:a9d0])
 by smtp.gmail.com with ESMTPSA id x9sm5808631qkl.75.2019.10.28.11.23.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 11:23:21 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 4/5] arm64: dts: rockchip: add usb3 to rk3328 devicetree
Date: Mon, 28 Oct 2019 18:22:53 +0000
Message-Id: <20191028182254.30739-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028182254.30739-1-pgwipeout@gmail.com>
References: <20191028182254.30739-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_112323_938979_F1965D36 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, robin.murphy@arm.com,
 Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Now that we have a proper phy driver, we can add the requisite bits to the
rk3328 device tree.
Added the u3drd and u3phy nodes.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 72 ++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 31cc1541f1f5..072e988ad655 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -805,6 +805,47 @@
 		};
 	};
 
+	usb3phy_grf: syscon@ff460000 {
+		compatible = "rockchip,usb3phy-grf", "syscon";
+		reg = <0x0 0xff460000 0x0 0x1000>;
+	};
+
+	u3phy: usb3-phy@ff470000 {
+		compatible = "rockchip,rk3328-u3phy";
+		reg = <0x0 0xff470000 0x0 0x0>;
+		rockchip,u3phygrf = <&usb3phy_grf>;
+		rockchip,grf = <&grf>;
+		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "linestate";
+		clocks = <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
+		clock-names = "u3phy-otg", "u3phy-pipe";
+		resets = <&cru SRST_USB3PHY_U2>,
+			 <&cru SRST_USB3PHY_U3>,
+			 <&cru SRST_USB3PHY_PIPE>,
+			 <&cru SRST_USB3OTG_UTMI>,
+			 <&cru SRST_USB3PHY_OTG_P>,
+			 <&cru SRST_USB3PHY_PIPE_P>;
+		reset-names = "u3phy-u2-por", "u3phy-u3-por",
+			      "u3phy-pipe-mac", "u3phy-utmi-mac",
+			      "u3phy-utmi-apb", "u3phy-pipe-apb";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		status = "disabled";
+
+		u3phy_utmi: utmi@ff470000 {
+			reg = <0x0 0xff470000 0x0 0x8000>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		u3phy_pipe: pipe@ff478000 {
+			reg = <0x0 0xff478000 0x0 0x8000>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+	};
+
 	sdmmc: dwmmc@ff500000 {
 		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff500000 0x0 0x4000>;
@@ -936,6 +977,37 @@
 		status = "disabled";
 	};
 
+	usbdrd3: usb@ff600000 {
+		compatible = "rockchip,rk3328-dwc3", "rockchip,rk3399-dwc3";
+		clocks = <&cru SCLK_USB3OTG_REF>, <&cru ACLK_USB3OTG>,
+			 <&cru SCLK_USB3OTG_SUSPEND>;
+		clock-names = "ref", "bus_early",
+			      "suspend";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		clock-ranges;
+		status = "disabled";
+
+		usbdrd_dwc3: dwc3@ff600000 {
+			compatible = "snps,dwc3";
+			reg = <0x0 0xff600000 0x0 0x100000>;
+			interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+			dr_mode = "otg";
+			phys = <&u3phy_utmi>, <&u3phy_pipe>;
+			phy-names = "usb2-phy", "usb3-phy";
+			phy_type = "utmi_wide";
+			snps,dis_enblslpm_quirk;
+			snps,dis-u2-freeclk-exists-quirk;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_u3_susphy_quirk;
+			snps,dis-del-phy-power-chg-quirk;
+			snps,dis-tx-ipgap-linecheck-quirk;
+			snps,xhci-trb-ent-quirk;
+			status = "disabled";
+		};
+	};
+
 	gic: interrupt-controller@ff811000 {
 		compatible = "arm,gic-400";
 		#interrupt-cells = <3>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
