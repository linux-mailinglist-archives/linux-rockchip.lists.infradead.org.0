Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C499D14F541
	for <lists+linux-rockchip@lfdr.de>; Sat,  1 Feb 2020 00:39:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/18Hly+K6hIyAkhMuVj38Qyf3/I2T1TVrXYfyUmzt7w=; b=sVrm1Hw9SeVhTZ
	tWii91irrSEtfnSzgIwTFPbkSIVARgyFZHHFsAnzRYp6G44iPeioGK4Fl/S8LE0tHyy8P5/Jwm5kf
	+wGhN78h7WbWfOSOnTSpmTLPxIMtREDcAMpukHPYqUyBVEx3A2ug1P5hlBhRayuS0bI2+PWbUA0dF
	HXKBgBA87gIUD04jmJ+fvWIxXtuAG2swIkUKBpn2E3yBzVfnWFeT+081kIi7W1nO4zfiUAblBSgYI
	IZd1d/zsXqfGp5hrZFtvFV6B4R3vooD1kH6/YPh4DhdAAqR97R9jY7cYSW5PAZiv/eI0xeH15FJ1b
	nD0hr5X0aHRrH/HZ6ZpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixfsI-0008Ln-NE; Fri, 31 Jan 2020 23:38:58 +0000
Received: from mail2.vany.ca ([142.54.190.254])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixfs7-0008DU-5M; Fri, 31 Jan 2020 23:38:48 +0000
Received: from wintermute (unknown [192.159.180.39])
 by mail2.vany.ca (Postfix) with ESMTPSA id 1B1C1AC01D1;
 Fri, 31 Jan 2020 17:38:40 -0600 (CST)
From: Adam Van Ymeren <adam@vany.ca>
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
Date: Fri, 31 Jan 2020 18:38:38 -0500
Message-ID: <87imkryz5t.fsf@vany.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_153847_239430_49609B48 
X-CRM114-Status: UNSURE (   4.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

With this change the kernel successfully finds the SD Card and can load
a rootfs from it.  Tested on hardware.

Signed-off-by: Adam Van Ymeren <adam@vany.ca>

diff -uprN -X linux-5.5/Documentation/dontdiff linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
--- linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts	2020-01-26 19:23:03.000000000 -0500
+++ linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts	2020-01-31 16:26:35.377075419 -0500
@@ -44,7 +44,7 @@
 
 	vcc_sdio: sdmmcio-regulator {
 		compatible = "regulator-gpio";
-		gpios = <&grf_gpio 0 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio0 RK_PD1 GPIO_ACTIVE_HIGH>;
 		states = <1800000 0x1
 			  3300000 0x0>;
 		regulator-name = "vcc_sdio";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
