Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6405E9FB5
	for <lists+linux-rockchip@lfdr.de>; Wed, 30 Oct 2019 16:51:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkqIq5lPOaTHbYhLkDAYMDxBZD8Nz6bwVvIUIv44vCc=; b=IZQGCM5Zscn52h
	uDYGSTE937e2Z3bVI6UvIZSh0inQl0ruHT2fJi6LsNsJFlPm65JLUbTCMApXQSwD27EeQZ45TtoN6
	i2holnGbjFC1zhMvoWhXkNvUzAkF/K5rIP/2qGvvApJBQX9+0EHCZm0TGA1YoHgorS+1MCG1dh4fC
	UqwfRnaTfZP+9RX4PRY1YcA3mXkgTTIHKwas1X0K+3osy68quImSIuN729V2av/5e+JgWswNy08cD
	n/1gkYVYVEKCZR+a2Bk22e/V4Ruv7hwEc5WPkt+R7B4QmNTIquYh254tUeEMpeVHWD3sA9Yq3wW3J
	gA4ZTyO1f4RZ/7/490nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPqFt-00027m-U6; Wed, 30 Oct 2019 15:51:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqFr-00026j-8L
 for linux-rockchip@lists.infradead.org; Wed, 30 Oct 2019 15:51:28 +0000
Received: from sasha-vm.mshome.net (100.50.158.77.rev.sfr.net [77.158.50.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74C06208C0;
 Wed, 30 Oct 2019 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572450686;
 bh=Jcb41jK/gNTOcohgptRyqBDiCEXmFksh7t2MhPz/fk8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mMRBS3LFbJsx2GZwh1IkIuNYtVwBWNjmA8TLDfo+umrZ5//lsyLd6e4Kilwkrx1Fw
 dZHV0D22BNNn//xXX+xR0iibX2gY6EA+I7PetQQV2FIt9RbaM083UDU7eJCQpGzDtH
 qvhfj1tSU7E5ptXm1H2MX0rwEZ38kACyPvoUGSgU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 25/81] arm64: dts: rockchip: fix RockPro64 vdd-log
 regulator settings
Date: Wed, 30 Oct 2019 11:48:31 -0400
Message-Id: <20191030154928.9432-25-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191030154928.9432-1-sashal@kernel.org>
References: <20191030154928.9432-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_085127_316063_B8942875 
X-CRM114-Status: GOOD (  11.70  )
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
 Soeren Moch <smoch@web.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Soeren Moch <smoch@web.de>

[ Upstream commit 0990c5e7573098117c69651821647c228483e31b ]

The RockPro64 schematic [1] page 18 states a min voltage of 0.8V and a
max voltage of 1.4V for the VDD_LOG pwm regulator. However, there is an
additional note that the pwm parameter needs to be modified.
From the schematics a voltage range of 0.8V to 1.7V can be calculated.
Additional voltage measurements on the board show that this fix indeed
leads to the correct voltage, while without this fix the voltage was set
too high.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
Signed-off-by: Soeren Moch <smoch@web.de>
Link: https://lore.kernel.org/r/20191003215036.15023-1-smoch@web.de
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 5818b85255123..cad314f708300 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -166,7 +166,7 @@
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
-		regulator-max-microvolt = <1400000>;
+		regulator-max-microvolt = <1700000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
