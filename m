Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E3412C609
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Dec 2019 18:48:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=h/tlaD0jfJm7E6teEl1WnI/fEhbizO73/cj3Z2fSESc=; b=Ayt
	fi6e9QzGjgIwY/AKHptoFwOKABeoJMKIJDImFztIFyQYUW5kQg9HcPtMGbU+M2RlDXMmC4uCrUYqD
	SPvKwCDrw0ZSPec8ptikPk96ksYDDIp+1nkh1FW2hOAEScgl+exiQol9PWAd701X6VZpSB+hRGN+W
	+8CBRw3AUbHEPqbmXmv8EVUr3pKjRO5sHBDjOBDsYuar/kfC8K9MvzclMCzfRnMLsDzh0DjkRu+DQ
	/dJ901Ys4pj9sF/Z79cSk6PDUtiyLC3Z4TqJOWvPXooo7TQYFMDSA1wm+NLly7Thpbgi7obd80qPj
	KmX6VpNyzWQDw0dFyndex7ZMz+IOT/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilcfy-0008Bc-MY; Sun, 29 Dec 2019 17:48:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilcfo-00084o-S8; Sun, 29 Dec 2019 17:48:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6AD5931B;
 Sun, 29 Dec 2019 09:48:11 -0800 (PST)
Received: from DESKTOP-VLO843J.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BB4813F703;
 Sun, 29 Dec 2019 09:48:10 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: Fix IR on Beelink A1
Date: Sun, 29 Dec 2019 17:48:05 +0000
Message-Id: <44269c08e2a5d75b03ded87d2eb11621762d8249.1577636223.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_094816_952635_55FFA354 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Apparently I wasn't paying enough attention... And nor is the lazy
test of `cat /dev/lirc0` sufficiently blunder-proof. Oh well, with
the correct polarity, let's also hook up a keymap now that one for
the standard Beelink remote has handily appeared.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index 76b49f573101..16f1656d5203 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -49,7 +49,8 @@
 
 	ir-receiver {
 		compatible = "gpio-ir-receiver";
-		gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
+		linux,rc-map-name = "rc-beelink-gs1";
 	};
 };
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
