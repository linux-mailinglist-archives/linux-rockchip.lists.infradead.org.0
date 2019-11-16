Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89163FEB8B
	for <lists+linux-rockchip@lfdr.de>; Sat, 16 Nov 2019 10:52:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T5dIyqf7GGaIeP0sroDKHRuFWwrKzCE3CHmGOJ9iinI=; b=YlvCwt4/1wcMhp
	OJMqYi64tlsFcdmpN89T2W6V8bjfB/9YkhtDH/QliRYZjt28Rhn1xHiEDA/XFVysylcIOrPRKxm1o
	220QUMs8Ff8XugT02AkZCWKYw6EJBGUUVqvJ3BlQ6XM3o2OIoLJ3jmeTelFftQgm2WafmMrJFXVj/
	0RvxbGTKEaOTYnFmsRq9lBD6uT2qSjYU35TXMZe1qmanlKoTM7ZRPinC4efg+ZQbYDN/sn2uIgOX7
	qybWutb52S4bP78JP3gnAqkTKj5jk0Z7e0I/yIcL9ivWDdGNJ35lR1HECDhXqNHVCvObA5Vqi5yH8
	Kj7+alTv7tUCsw1PJdQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVukx-0003ix-KM; Sat, 16 Nov 2019 09:52:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVuku-0003iH-JD; Sat, 16 Nov 2019 09:52:37 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iVuko-0004bM-Sh; Sat, 16 Nov 2019 10:52:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: remove 408MHz operating point from px30
Date: Sat, 16 Nov 2019 10:52:20 +0100
Message-Id: <20191116095220.31122-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_015236_780486_30A2FD8D 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 kever.yang@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, cl@rock-chips.com,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

It looks like the px30 is running unstable at this 408MHz operating point.
This shows in stalled threads and other big numbers of kernel exception.

At 600MHz and above it instead works stable and as expected. As the 408MHz
point doesn't even decrease the voltage compared to 600MHz, just drop this
408MHz operating point for now.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index c68d6fede53d..ff53cc56f80f 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -114,16 +114,11 @@
 		compatible = "operating-points-v2";
 		opp-shared;
 
-		opp-408000000 {
-			opp-hz = /bits/ 64 <408000000>;
-			opp-microvolt = <950000 950000 1350000>;
-			clock-latency-ns = <40000>;
-			opp-suspend;
-		};
 		opp-600000000 {
 			opp-hz = /bits/ 64 <600000000>;
 			opp-microvolt = <950000 950000 1350000>;
 			clock-latency-ns = <40000>;
+			opp-suspend;
 		};
 		opp-816000000 {
 			opp-hz = /bits/ 64 <816000000>;
-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
