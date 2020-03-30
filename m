Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AEC197238
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 03:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjpmx1IX+e7mYm5qmllQO3bd2myAr7hje/Kj2sdyJQk=; b=Y/u8J4mlubBUEL
	GYX6Ywv86m8zVKopNvkV8skvlaDvUGHKyWQCbKDB/ihorWMdN7Xwj54sxWD+vrMN/jqdU7uFAehcs
	Wzwz+jT/9sj9A9+Tj4NZ02PTb2nU9OT/qGFVQVCHPePuK4tu2SI3NCN0D4Tqa+hRUIJvwESooyUx8
	zJQG7tjMgi9rIx83nfP3mJsQP79WF+T4b8W9HaFrwj1eR5NcgzQn7Q1L+iMrcz9okMAKnbIWGiJDR
	XxqX5u+/Sy+EQwF3LTdHjVQA838NUMSl9rDoVkhymQ6QrwQqcf1liQy+yn0mWeVdAr8Qq1d4fv+IQ
	Fh36duuXCoxetPXZs2kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIjWI-0000Y9-Bo; Mon, 30 Mar 2020 01:47:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIjWF-0000Qc-CK
 for linux-rockchip@lists.infradead.org; Mon, 30 Mar 2020 01:47:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3469629483D
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 5/5] arm64: dts: rockchip: rk3399: Define the rockchip
 Video Decoder node
Date: Sun, 29 Mar 2020 22:46:16 -0300
Message-Id: <20200330014616.10621-6-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200330014616.10621-1-ezequiel@collabora.com>
References: <20200330014616.10621-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_184715_556286_E975C2AF 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>

RK3399 has a Video decoder, define the node in the dtsi. We also add
the missing power-domain in mmu node and enable the block.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
--
v7:
* As noted by Johan Jonker, fix node order.
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 33cc21fcf4c1..dfb737e8ff31 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1278,6 +1278,18 @@ vpu_mmu: iommu@ff650800 {
 		power-domains = <&power RK3399_PD_VCODEC>;
 	};
 
+	vdec: video-codec@ff660000 {
+		compatible = "rockchip,rk3399-vdec";
+		reg = <0x0 0xff660000 0x0 0x400>;
+		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdpu";
+		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
+			 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
+		clock-names = "axi", "ahb", "cabac", "core";
+		power-domains = <&power RK3399_PD_VDU>;
+		iommus = <&vdec_mmu>;
+	};
+
 	vdec_mmu: iommu@ff660480 {
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff660480 0x0 0x40>, <0x0 0xff6604c0 0x0 0x40>;
@@ -1285,8 +1297,8 @@ vdec_mmu: iommu@ff660480 {
 		interrupt-names = "vdec_mmu";
 		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>;
 		clock-names = "aclk", "iface";
+		power-domains = <&power RK3399_PD_VDU>;
 		#iommu-cells = <0>;
-		status = "disabled";
 	};
 
 	iep_mmu: iommu@ff670800 {
-- 
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
