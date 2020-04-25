Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E331B85D1
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 12:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8P7GE46LTJRP8MRcnqtNmF4R+2DX/veLIRoWXHcWgjQ=; b=iFkJ78H8TpZMUNJh7dlqPdE7hg
	b13IHcYtM7uGovzFpUOVL85kGAGydGP4XccsjNY3rFHI2la2s9F/RIFlvts9h1Bbc4Hbm0NXTvhXx
	eAbst0RK8qYLOX0zvkpm7KchJ0wZs4gD5j/p3LNw8OeFPlkO4qwDyXcITew+8Lfw8FhjVxiO6vdVd
	lWo+e23Xp8tRPcKBQdkYf14VUVagAPGTO+ePT2WqUbAsMUaOmza7uy7ocj/STMZb2inNbmK5fa/S3
	xVoYBoqp8S1l12tif38IAzJEz+ZIQ22+HOsAOMFbmn6O+47+HcP3tLIyJ3tNrVxJEWR+TmufCIDdS
	A9o/SCqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIRK-0007ts-Dw; Sat, 25 Apr 2020 10:53:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIRH-0007s9-Lt
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 10:53:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id o15so5939673pgi.1
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 03:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ozu7uNkxnfT3pFaKwz1ZBLbmh39OTUtagkK2pMdFdIA=;
 b=Oz5IZptXg6snmD/T9u2QwtK8sPSoked2lDQe3AV1m3gn41ogh3N+MUJ5wq2VPFpNwd
 HkiTeUjsbpBuT1Qk2L9y6YlV4o0yh3kfviG5+zxOknUO4TEdWe8VZ4NqPev8sDjVTuFJ
 5WGnlRg4gOpEJ8aGnE3RgISFJd2E/He93QF0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ozu7uNkxnfT3pFaKwz1ZBLbmh39OTUtagkK2pMdFdIA=;
 b=TAZo9sLonREVP7FEBoguLQ+CcDpHTv9YZ3xZmunvJ6dralXrLsg5h+iQtFlnHiWjb+
 scquLEdMM+FA7twj+KJ+bLUZKQpy78APE6/HNRS45BJiXJTBXOqTkYbqrJhw4IzjhRvt
 T3RtN9VpxOJWheoGXmy7ioVuBMZRvpOK+wOq9WP7os5R8u/vzmCLQ7rcqfHUgTpm+xmD
 7grfpM5E8xV5RnMOHb7dkAvUl1PlFNV25zb5q40lrK9g7Q3CVnF1nDSUxR/RrrCyz2+2
 TwLsgQi1u0AQSPhNd5Th9fCfSlAdjfcpkPnB7o3giTewUfQ5UF7Fbv5LeNvfTOjryFSA
 rJ3w==
X-Gm-Message-State: AGi0PuZqORwJjDNyhhj9Zjr43sMclItUMtjuOxVA1PLT346I6M5JgF8Y
 CIj4nXvMpTS59Sosvao8Iaf/CQ==
X-Google-Smtp-Source: APiQypJGQ1l88BqPLWXKnKMxlSWgKElqIDF5s+YVqymDpILkaKBAn/3guY57/ZKsSd+01WQA7ThiZg==
X-Received: by 2002:a62:e211:: with SMTP id a17mr13803265pfi.250.1587812019217; 
 Sat, 25 Apr 2020 03:53:39 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 u188sm7996303pfu.33.2020.04.25.03.53.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 03:53:38 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 2/6] arm64: dts: rk3399-evb: Move u-boot properties into
 -u-boot.dtsi
Date: Sat, 25 Apr 2020 16:23:15 +0530
Message-Id: <20200425105319.12009-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200425105319.12009-1-jagan@amarulasolutions.com>
References: <20200425105319.12009-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_035339_714400_4089BAC8 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Move U-Boot specific properties into rk3399-evb u-boot
specific dtsi file.

This would help to sync the devicetrees from Linux whenever
required instead of adding specific nodes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-evb-u-boot.dtsi | 8 ++++++++
 arch/arm/dts/rk3399-evb.dts         | 2 --
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
index ccb33d34d1..a4d68f3b98 100644
--- a/arch/arm/dts/rk3399-evb-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
@@ -11,3 +11,11 @@
 		u-boot,spl-boot-order = &sdhci, &sdmmc;
 	};
 };
+
+&i2c0 {
+	u-boot,dm-pre-reloc;
+};
+
+&rk808 {
+	u-boot,dm-pre-reloc;
+};
diff --git a/arch/arm/dts/rk3399-evb.dts b/arch/arm/dts/rk3399-evb.dts
index 4129e902a8..c72719c0d3 100644
--- a/arch/arm/dts/rk3399-evb.dts
+++ b/arch/arm/dts/rk3399-evb.dts
@@ -199,7 +199,6 @@
 	clock-frequency = <400000>;
 	i2c-scl-falling-time-ns = <50>;
 	i2c-scl-rising-time-ns = <100>;
-	u-boot,dm-pre-reloc;
 
 	rk808: pmic@1b {
 		compatible = "rockchip,rk808";
@@ -211,7 +210,6 @@
 		reg = <0x1b>;
 		rockchip,system-power-controller;
 		#clock-cells = <1>;
-		u-boot,dm-pre-reloc;
 		status = "okay";
 
 		vcc12-supply = <&vcc3v3_sys>;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
