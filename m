Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3FBF62FA
	for <lists+linux-rockchip@lfdr.de>; Sun, 10 Nov 2019 03:47:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m59j2dpOYObDrOioPkKOIE0wK8mxpb2aCedGzbww3L8=; b=NieZLlH7aLxsWx
	EP71gkYga1mkWwe8bDDZ1KQnIp7lQ6pcB9ecSkHCUpxYcjU83Gu7cf6iFs2Q+L+t8NB7KhijjNMur
	QF65FN/qYMnPR5MRGQBkP+0h3pdshDX8gxhd+rJz3SQ6N/SFoQdW5kXaocv15ZbV3eSc3LEUCVFSH
	pZPJ/d+Szy0hyUASBZxdlPhCTiqFPespzW2XziTNU77ITPmdTcYvmoDi3lFa88fRznXfl3dpAjYft
	if5AA6kyGPsHBwNqn8ssk8e7Y7BnfxzSr+kaS0TAnEDf/krvw3JRem/DEvhD3mLIjuYt8YwerI2j6
	cSkmMYpoDuu8OX8wiqrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTdG8-0003nj-UC; Sun, 10 Nov 2019 02:47:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTdG5-0003mN-AK
 for linux-rockchip@lists.infradead.org; Sun, 10 Nov 2019 02:47:22 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47B7821D7E;
 Sun, 10 Nov 2019 02:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573354040;
 bh=5DLZxx+XkJtsu61XyqZjuPUSFXnrVTk7JiK1SjKEoNE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QEcro/+jEpVRvMGeSbMO5+fC5CsxfW6YLIBJK142in2IKg1GkOnAzwAzChOvpnAtO
 5Pl4bSlHybrlna6s8KFERQ8l22BjIU4NOUxEfH40qHyO1RXsx+PmNH/rF8n0G4OWyC
 SihJh0jNFQo7mPgzGJprPaF6Q0DoWLNZ0ilBvkL0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 053/109] ARM: dts: rockchip: explicitly set
 vcc_sd0 pin to gpio on rk3188-radxarock
Date: Sat,  9 Nov 2019 21:44:45 -0500
Message-Id: <20191110024541.31567-53-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024541.31567-1-sashal@kernel.org>
References: <20191110024541.31567-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_184721_385301_F4613CEC 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko@sntech.de>

[ Upstream commit a2df0984e73fd9e1dad5fc3f1c307ec3de395e30 ]

It is good practice to make the setting of gpio-pinctrls explicitly in the
devicetree, and in this case even necessary.
Rockchip boards start with iomux settings set to gpio for most pins and
while the linux pinctrl driver also implicitly sets the gpio function if
a pin is requested as gpio that is not necessarily true for other drivers.

The issue in question stems from uboot, where the sdmmc_pwr pin is set
to function 1 (sdmmc-power) by the bootrom when reading the 1st-stage
loader. The regulator controlled by the pin is active-low though, so
when the dwmmc hw-block sets its enabled bit, it actually disables the
regulator. By changing the pin back to gpio we fix that behaviour.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3188-radxarock.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rk3188-radxarock.dts b/arch/arm/boot/dts/rk3188-radxarock.dts
index 53d6fc2fdbce8..541a798d3d202 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -130,6 +130,8 @@
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		gpio = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_pwr>;
 		startup-delay-us = <100000>;
 		vin-supply = <&vcc_io>;
 	};
@@ -348,6 +350,12 @@
 		};
 	};
 
+	sd0 {
+		sdmmc_pwr: sdmmc-pwr {
+			rockchip,pins = <RK_GPIO3 1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		host_vbus_drv: host-vbus-drv {
 			rockchip,pins = <0 3 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
