Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2FC33241
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 16:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2nLW/CmWEdtMZmAGwVkYZQVjzrn1XVVwVx97FUiboXk=; b=ZixMZqllJ4WU8w
	Zb8KhWwDqm/KgTQMmsGCOeiFNsOs+CcidGRB3bzitG3hpkrgipe56hsmBgCQnsSddsJwx1epz14HS
	8wEfhwyvFMU8bDKAHjBdfhxVw2ERbFa8Iieq3obppFRVUHjTpjV9qHNqXgbqOPW58T+ue+Sb0H/tE
	OAsqSVzjR8IU6KsOZB+1+7lyhRgoZUzfP/7L5QlIfd7R4GPP2Rk0aou1Xzlo1n5WvE8SkmEISStfX
	Nk/u98LG5+fWD4AoTmfaVLI+1FEY9+Y67LBidxJCmzUV3+TZREf83zappAKlLQQ2leG5FF+/eFvLP
	UtByMINEKYZMzSDGoEBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXo3Q-0001LV-BI; Mon, 03 Jun 2019 14:35:16 +0000
Received: from dougal.metanate.com ([90.155.101.14] helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXo3H-0000JN-RW; Mon, 03 Jun 2019 14:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=simple/simple; d=metanate.com; 
 s=stronger;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KwXOw6D+PifrOhhzVpHEIk44UYwy88ZEYVhtS09tqb0=; b=G9yEb/3jIztR2oA6w7Ars3Y0v1
 tObJnuP8TwFbdm2XReASnLcjeM9daQp7E/KRTDE5I+kRsxnxSiwzQYAB9eVRGg5lUijEOCilygqJ4
 ZXGO/l2ZJ9nvofchpOwVFHitt9V2X5judOGLLakIKpSakEzVp/AEAFDFlcrB1XxfIG8Z4oa1kJ5/3
 wPNIGjbTHldMhq9RsnYsnXNjQVq4hJXyT2MJ7SZCJrdwdfv7P865P/f6KmZPRuWgS5GzFlemT9xAq
 V5AHtLm4/hdxW6vcFroWjdhqORkFXHNaX+Vwf49sXmRb5c3ITSrIuYbpMXKpW4uAmWFCD4NHes3T6
 FKDvoc9A==;
Received: from dougal.metanate.com ([192.168.88.1] helo=localhost.localdomain)
 by shrek.metanate.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <john@metanate.com>)
 id 1hXo3C-0000G9-VD; Mon, 03 Jun 2019 15:35:03 +0100
From: John Keeping <john@metanate.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: fix pwm-cells for rk3288's pwm3
Date: Mon,  3 Jun 2019 15:34:35 +0100
Message-Id: <20190603143435.23352-1-john@metanate.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_073508_034876_5BF1B9CE 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, John Keeping <john@metanate.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is the same as the other PWMs on this SoC and uses 3 cells.

Signed-off-by: John Keeping <john@metanate.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 159d91180cee..766d1cf51a5b 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -710,7 +710,7 @@
 	pwm3: pwm@ff680030 {
 		compatible = "rockchip,rk3288-pwm";
 		reg = <0x0 0xff680030 0x0 0x10>;
-		#pwm-cells = <2>;
+		#pwm-cells = <3>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm3_pin>;
 		clocks = <&cru PCLK_RKPWM>;
-- 
2.21.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
