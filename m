Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1748177947
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Jul 2019 16:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YW9tNgr5OHN0IgIZYsVKIG3vEhmdswrvgJKGPh/ecqk=; b=ESqQV+M6d1tdWoNIgLoyAGvxgR
	3EBOkXueiHZU22/wLXICM+hBF8wR5eFW95GwxnRYbl8Y/02UKI4ZRGCTT6QVXKXHXc8tEmPetnMbF
	GM202d8N1r+ovrpyuHBMYM4B8Vuvf8DAlAkQM7tiLCumED1L8dmNZCjlulNHooBm/JRKAaFgie8BH
	pvQANfAGbPUXnvP1f8A6O6AKtip3Ee4TPvXmL0nIlAju5urIu/8qFlr47+C+HjOxb/t3HK9JHpLcI
	FaKgHE0snO0G2Es+RkkvoCegh2Co7Zleh1I0UMqib4shg6tZgVy1lWuTpeQe4Cdy6UiHZuzj9j9Wq
	LhPyn+kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrNhN-0000Ud-Lz; Sat, 27 Jul 2019 14:29:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrNgA-0008AS-9k; Sat, 27 Jul 2019 14:28:15 +0000
Received: from localhost.localdomain (unknown [194.230.155.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBDBC2084C;
 Sat, 27 Jul 2019 14:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564237689;
 bh=bYISLdJ+F7qw2nctD3/WBahrNFRy0w70PfyOPJ7kIy8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Zi02F05HUej5+7FkK/HByH0RM+B3tXPISFtSAD6Y8J/ZiKzVC5RFYNR0uLuAacgMB
 5fDnwcjtZQD4B/NdA0Tp2T7ZQWUVtqW9OrhQBNQNQktfyFykpEDLztksIPPiP5tp8y
 XAD64mtDOd/J2/SUE6t6B1/axxrZeXCsHK1Gxo2o=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: rockchip: Add missing unit address to memory
 node on rk3288-veyron
Date: Sat, 27 Jul 2019 16:27:36 +0200
Message-Id: <20190727142736.23188-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190727142736.23188-1-krzk@kernel.org>
References: <20190727142736.23188-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_072811_600994_FC4B1590 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Fix DTC warning:

    arch/arm/boot/dts/rk3288-veyron.dtsi:21.9-24.4:
    Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/rk3288-veyron.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 8fc8eac699bf..02243ff46a65 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -18,7 +18,7 @@
 	 * The default coreboot on veyron devices ignores memory@0 nodes
 	 * and would instead create another memory node.
 	 */
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
