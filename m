Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03288106B67
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 Nov 2019 11:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GiwHqh7yH4j1mdIs8vS6pFHeRcryOVnq03PPBO/VzY0=; b=irt+pRsN5Jrwec
	9nMxUu0Tmn/CkOJZcLSepCe83A73K3zYRNjdXrwLz/Bfqowmy6Yp28b39dYyRWu8ueIHSfnP51gav
	Z28Un2pnK0aU5TyXAXBW+PRtoESlxGroG03vfpCuiEGJ9gV01z//Pzs1NtQKKGUwOZn89sa09UNuj
	C/kdsUwGca32uIWSHibi2qVG/yakPYdRnT9RclRcBWOtcWpqTCmwnpQBvUw0E5PX49mmzXpLP5i+5
	cFORQX2Fvg/32VoCERMDuf/97lRX+suzGJQCD1jwdLfVjV/AiTRSd51jaMUXtq0qe79i/Q0JbCCHa
	plxr8wIeTzH/iofxbugA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6QR-00060S-3T; Fri, 22 Nov 2019 10:44:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6QO-000608-OP
 for linux-rockchip@lists.infradead.org; Fri, 22 Nov 2019 10:44:30 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D352820715;
 Fri, 22 Nov 2019 10:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574419468;
 bh=FQ0vCQXPL083ioe8KY+j+YwWNQrwcnxBwoqJ1vEg9Fw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=stUPIqvgDSyP/D0Wbkb3iOGA8hfTirUCRXOpjSI8qmJfHLLJ8wb1k/PS9XAZu0MMH
 71tS+Czh+uvASRy/hPLdU/e1igtkmBNQcGBIbxZgcT7MHdAOoh8zynk077ntdtFfvr
 kuGuI+PIIc7l09Ejojp6uF2+mAGOdS8czofEkUxs=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.9 078/222] ARM: dts: rockchip: Fix erroneous SPI bus dtc
 warnings on rk3036
Date: Fri, 22 Nov 2019 11:26:58 +0100
Message-Id: <20191122100909.019001611@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122100830.874290814@linuxfoundation.org>
References: <20191122100830.874290814@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024428_809024_DEE013BD 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Rob Herring <robh@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Rob Herring <robh@kernel.org>

[ Upstream commit 131c3eb428ccd5f0c784b9edb4f72ec296a045d2 ]

dtc has new checks for SPI buses. The rk3036 dts file has a node named
spi' which causes false positive warnings. As the node is a pinctrl child
node, change the node name to be 'spi-pins' to fix the warnings.

arch/arm/boot/dts/rk3036-evb.dtb: Warning (spi_bus_bridge): /pinctrl/spi: incorrect #address-cells for SPI bus
arch/arm/boot/dts/rk3036-kylin.dtb: Warning (spi_bus_bridge): /pinctrl/spi: incorrect #address-cells for SPI bus
arch/arm/boot/dts/rk3036-evb.dtb: Warning (spi_bus_bridge): /pinctrl/spi: incorrect #size-cells for SPI bus
arch/arm/boot/dts/rk3036-kylin.dtb: Warning (spi_bus_bridge): /pinctrl/spi: incorrect #size-cells for SPI bus

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index a935523a1eb85..147c73f68f1d9 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -744,7 +744,7 @@
 			/* no rts / cts for uart2 */
 		};
 
-		spi {
+		spi-pins {
 			spi_txd:spi-txd {
 				rockchip,pins = <1 29 RK_FUNC_3 &pcfg_pull_default>;
 			};
-- 
2.20.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
