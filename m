Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 905F51014A4
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 06:36:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85CKHprGNfOvsMx/yb+Kpn54Djh33GjEBaNAH4ciwrs=; b=OfnkfdOj9poITp
	dy9vemVS1Q6ShlDYrYPQRE8ECqWPhRO3WUn1Gu6yxLzqNI4RdlyF2gymHWWVeMvZsCsfWEYCb8HMe
	qRnWeRPPslkUYe+/8ux4hcNuUGOf11jkcoppuGOoIuBovb1TI2GR6d964fAhYZHxUKfzWBat/G4D2
	xL6e6OcqQrPUWF3eOzqoc1GXEVO/p9EViOgeONWIi9VsYCXV0TGhYOzPRGowEJ+4hr7Ol3azwBp2N
	RnkY9jssxvA4V3WwE1ntnemLre2V3ER7sESVahPYdzSbkl9QGfU/acyciSTitXEudCX8zcpl+Xhur
	u/F1liMd5ieghX6NiIZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWwBJ-00070B-Kz; Tue, 19 Nov 2019 05:36:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWwBE-0006yc-1f
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 05:36:04 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 393CB20672;
 Tue, 19 Nov 2019 05:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574141759;
 bh=hF3+0/awYwGTiTMznroF4fqR9vXqdkxIXXDkxWqji8s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=En0wh7odoUIxKO5TgjNH+TqDQeg6JAbE2ODAh3XNbIkMAvXfW+On2FGULtE2+Gtrr
 3Y3UyM4dg1qP0xnygfwYftbyToML4Ny818egLeyB5in4imbGGgtlTJC8jB3r6Ru42x
 VOfMZM21WN4P7ad5nT/C4CpGOP26mYMO4PrlUGHI=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.19 231/422] arm64: dts: rockchip: Fix I2C bus unit-address
 error on rk3399-puma-haikou
Date: Tue, 19 Nov 2019 06:17:08 +0100
Message-Id: <20191119051414.015045393@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119051400.261610025@linuxfoundation.org>
References: <20191119051400.261610025@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_213600_104953_AFC8ECEB 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

[ Upstream commit 501500e65fa96f899230d66153fefd780f08dd34 ]

dtc has new checks for I2C buses. Fix the warnings in unit-addresses.

arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dtb: Warning (i2c_bus_reg): /i2c@ff3d0000/codec@0a: I2C bus unit address format error, expected "a"

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 8ce4a79d9360f..1e6a71066c163 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -131,7 +131,7 @@
 	status = "okay";
 	clock-frequency = <400000>;
 
-	sgtl5000: codec@0a {
+	sgtl5000: codec@a {
 		compatible = "fsl,sgtl5000";
 		reg = <0x0a>;
 		clocks = <&sgtl5000_clk>;
-- 
2.20.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
