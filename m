Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDC4E9FA9
	for <lists+linux-rockchip@lfdr.de>; Wed, 30 Oct 2019 16:51:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kThKLILHqyHw8fnO5YLkxPEgJGvp/ZV0kRvrlWufBK0=; b=eL9VLo3LuVu8jn
	6SpRUP1ExRMzYe0aJFjKlogENpdUaJNvOtX9oKtsxyxzjTccvjqJ7pNKO3POlh97MnIBmfeUPafBU
	qsMXbr5Hm2UWpdB6tLesaZgCoCIORCIChYMm/Zu+dmNHIvIdnzbU+hIRXW+bl8tzdQvnhpKELQPZw
	S70LM2vxJLpq79Qb1AtXYAqmA3bCzkr9V1723XJ7AzHfI+eDyAE+bUmdms6IQ2a+4Saa+3jJqYiP1
	vpoosktZJ1jhn6PQc0/IrMiBFI6n6UdlRoTH4J84BOP3CKvu+0g5Oom1vt1Pb88y2GrimvOu5iOlJ
	mRkqmUGIXb49L02+vRcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPqFp-00024o-9s; Wed, 30 Oct 2019 15:51:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqFl-00023D-NY
 for linux-rockchip@lists.infradead.org; Wed, 30 Oct 2019 15:51:23 +0000
Received: from sasha-vm.mshome.net (100.50.158.77.rev.sfr.net [77.158.50.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EABA1208E3;
 Wed, 30 Oct 2019 15:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572450681;
 bh=j0dq07s5gcJmAjlTqbRFwDv0S35OH9GkUrQKdW+7wE0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MTvuGCLd5CaTAxK3/sPmdL461wXtFo2GqwAwBjK4cqrdgPoQNpB+X+aRJWNGRMGyS
 DhBXQngevvRpJrM+GuY4sLIKRnuboNWetptSGKi21MZwRq7NOfuRDUlqp2mM9Qujcd
 bUqCIfq9tVZ8eIU3tsmFEwmERyjUmT1xxRJu8DsE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 23/81] arm64: dts: rockchip: fix Rockpro64 RK808
 interrupt line
Date: Wed, 30 Oct 2019 11:48:29 -0400
Message-Id: <20191030154928.9432-23-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191030154928.9432-1-sashal@kernel.org>
References: <20191030154928.9432-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_085121_788506_9658D14F 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Hugh Cole-Baker <sigmaris@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Hugh Cole-Baker <sigmaris@gmail.com>

[ Upstream commit deea9f5fc32040fd6f6132f2260ba410fb5cf98c ]

Fix the pinctrl and interrupt specifier for RK808 to use GPIO3_B2. On the
Rockpro64 schematic [1] page 16, it shows GPIO3_B2 used for the interrupt
line PMIC_INT_L from the RK808, and there's a note which translates as:
"PMU termination GPIO1_C5 changed to this".

Tested by setting an RTC wakealarm and checking /proc/interrupts counters.
Without this patch, neither the rockchip_gpio_irq counter for the RK808,
nor the RTC alarm counter increment when the alarm time is reached.
With this patch, both interrupt counters increment by 1 as expected.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
Link: https://lore.kernel.org/r/20190921131457.36258-1-sigmaris@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index eb55940620060..5818b85255123 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -240,8 +240,8 @@
 	rk808: pmic@1b {
 		compatible = "rockchip,rk808";
 		reg = <0x1b>;
-		interrupt-parent = <&gpio1>;
-		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
@@ -567,7 +567,7 @@
 
 	pmic {
 		pmic_int_l: pmic-int-l {
-			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
 		vsel1_gpio: vsel1-gpio {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
