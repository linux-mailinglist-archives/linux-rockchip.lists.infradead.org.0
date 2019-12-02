Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DA210EC85
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Dec 2019 16:39:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k8F1Soeg6X483DgkaRFjVnl3cOkGocqDsru+ivIgdcs=; b=YToXRIRSfFWb+J
	bVYqjeWhwKDdzfHj/DWqW8RV8WwUS5UjvOSxtvODGp6ePmhZc2bc9wUZooA8BEQ4M9DEj1XJlH/Ec
	+MiI3s+wnHSWFvlQBhmqqpEYyXHLiT9X3eEnJF5ZXjgaBc7ID9Z0ggg0PLAWGsgyA0useJFrZiLH4
	/OECe4ceDOgswpnYYDVQhxfAVmjqrUpE6JnNEByS0FNbhKvT4wXoW/vASneEPaIjMRwKFlyvt0QU+
	0+n61pNQK707FBJqjAtmOh5YlktXorNL7UEUE/knurWhi51vBw2XYDr5+5lQR7Iiu3BWYjnJbKK0h
	9k0E6poICxlomqKpGrSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibnnn-0002iI-Ha; Mon, 02 Dec 2019 15:39:55 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnnl-0002gO-9a
 for linux-rockchip@bombadil.infradead.org; Mon, 02 Dec 2019 15:39:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qxhDF0663v1hbvbZByeK69uarzcMA+FhFaj7j+FZi1M=; b=eWdcSFvESkRKUa4eAMWxlCQfN0
 pTopiciCskWLc++hqE3mCzXCHLnnSh2/9ZQQWQBsIPzf20H0YiYqgwBprSr0sXVa7B6ZFzIJMAb2u
 AKuAtVTV/J9xsxmno67dhxPpOM7Hh2vdtuU9S19JkxV1RloyoGBJCKGdVz+modm6BM2cUhsQMWdvm
 61OwfWZE4/dvu137ZaMC+iX6+Xhqc7uDhfmgNAYzHd9dEUwB5n0xyQVm3QVY/tPjsBJjXME4sMKA8
 M7oMcaKuzXhjtthibO/yhwRhsfZPb+5mhKvd8qUB9bnIfHgYg6uvsx0j5VjhgJFddsfDvRwPD9Jjz
 oKntSMdQ==;
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnnZ-00014y-1o
 for linux-rockchip@lists.infradead.org; Mon, 02 Dec 2019 15:39:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1575301134;
 bh=qxhDF0663v1hbvbZByeK69uarzcMA+FhFaj7j+FZi1M=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=X39EcDwtdvb1mbB0zPxP+C+ZyfwzT/uPbezVmrJk+6gY0Kwl838ZmbHNS4eyzBtLH
 5Xbrg8xKbJ90MCH86H1eVvfaUEnVR3T0v6+LnT9gOiIb9nGyIP+6xno87v4mox4u18
 kQnUEh/ft4hqmfes/UHOgK0+glCe5yHOwQGOnUHk=
X-QQ-mid: esmtp4t1575301131t81f1i73m
Received: from Home-PC.lan (unknown [39.180.30.185])
 by esmtp4.qq.com (ESMTP) with 
 id ; Mon, 02 Dec 2019 23:38:49 +0800 (CST)
X-QQ-SSF: 0100000000000040C7101F00000000O
X-QQ-FEAT: EUGmOqWjSYKrlczS1C5GpZ8p2d1quYLjG/gMMWe9CgTsVmZYPXb7FBtwYAbDH
 B0wgDV/bUXf1oOmaOAuDJS347kNatFUsZjkHcMQIp92g7q/WDdD/7eAmRsWVK4TYJx5Dfrv
 hDs60f4EYOEM9jI+mjaKtjTgD1be5qn+jau4+ZaF1q6Lf6uycP5d04KSzv2WVdzb/EudUb/
 75M9jx2HUWY6bGlBdZrMGAMpv/j8F0g7/oeSF59eWuN5aoDiP6/7v1uwRL7pLcsnzOTt+7+
 mbtaO2RkIfF4w4kJmbHS8StZOk7irllV8QsA==
X-QQ-GoodBg: 0
From: Jack Chen <redchenjs@foxmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: Add missing cpu operating points for
 rk3288-tinker
Date: Mon,  2 Dec 2019 23:35:40 +0800
Message-Id: <20191202153540.26143-1-redchenjs@foxmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtp:foxmail.com:bgforeign:bgforeign11
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (redchenjs[at]foxmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Jack Chen <redchenjs@live.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Jack Chen <redchenjs@live.com>

The Tinker Board / S devices use a special chip variant called rk3288-c
and use different operating points with a higher max frequency.

So add the missing operating points for Tinker Board / S devices, also
increase the vdd_cpu regulator-max-microvolt to 1400000 uV so that the
cpu can operate at 1.8 GHz.

Signed-off-by: Jack Chen <redchenjs@live.com>
---
 arch/arm/boot/dts/rk3288-tinker.dtsi | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 81e4e953d4a4..09e83b3d5e7d 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -113,6 +113,17 @@
 	cpu0-supply = <&vdd_cpu>;
 };
 
+&cpu_opp_table {
+	opp-1704000000 {
+		opp-hz = /bits/ 64 <1704000000>;
+		opp-microvolt = <1350000>;
+	};
+	opp-1800000000 {
+		opp-hz = /bits/ 64 <1800000000>;
+		opp-microvolt = <1400000>;
+	};
+};
+
 &gmac {
 	assigned-clocks = <&cru SCLK_MAC>;
 	assigned-clock-parents = <&ext_gmac>;
@@ -175,7 +186,7 @@
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <1350000>;
+				regulator-max-microvolt = <1400000>;
 				regulator-name = "vdd_arm";
 				regulator-ramp-delay = <6000>;
 				regulator-state-mem {
-- 
2.24.0




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
