Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC9D1B8719
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 16:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8hbJQhJcx6hhTxjGRf4VVuRGf9esVNhUo8NpfeZK1N0=; b=V0u
	khQc+K6sicasGlOzLwukvZsxdnOl4GvtW45NKUHrn+fZxwH5nGG4BPt1VQRvA3IsqTqfTZuXLQllp
	yiZXVuZ4LkGKyTSMTIfMHJdT3T80f54Xm5hvMD5WLy27WArclvX7ctq5UFxI3OrhxFQSYbx2P0Y2H
	xHh7//e/dsEq/dKr9Hoq9KibpBsjVKossqaN0vE2e+vXr+OPdxGFyYECiZwwMPjxXEGBKiKahQRDe
	uLxSSuVRl6krmiaGur728YmTx7uLNf2iDnegpQ4bvNQYJBMnwIxalM9Tl/W37eY/D9lft5wtohnOO
	5rMf3zESBfMEH13vRnl2tAKQnsQ+FgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSLxN-00069j-Cc; Sat, 25 Apr 2020 14:39:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSLx9-0005zr-Ru; Sat, 25 Apr 2020 14:38:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id x17so14258614wrt.5;
 Sat, 25 Apr 2020 07:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=biH+0Hq+KFxUENm9j1osu5bV9OSz14Gyl0yY3KBBFzU=;
 b=FGQiUsJz1DJdOU4aO8/4AqLbPHoWHwIxq5qoq/tqkZLC6rVDhcb38vvj/iAoP5hZYu
 duQ2y6wDLf+L0EbvJ0E1JkYMuR7jzSUXNEawNDfMTfk6RN1Ty4vVZ5u7XbWiFTlXu/0N
 K5RT4Xe2hJcpvYyXkOKKWw7GSR5SOW93OIMUeVJmz4/ISn+DtDday9k8UNI6ZgK4rBPg
 FjUv7npiIKVQLDMcXcdOlSJtBkZP8AMcKBlo2gWKwSu1HwfCpIn+rx45skgd+IIrEkZI
 orGTUY6R4GQqZUICb6YixeLhATsRgjkbf1q0LFLyl+BTG/X3l2hRG9h57or4AqT7xEGU
 6rMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=biH+0Hq+KFxUENm9j1osu5bV9OSz14Gyl0yY3KBBFzU=;
 b=Inn3t1U8XvN0dS3A7iM80+OLLd9p6IZP61qTatGIgy60iZZoVYtbVZI0ekqpfM7XmD
 VwD3liqoTWAL8ONI11r7XOP/iyX9wIYmKCYdpq8cXjVdvLsbVRq7T5Airt62i0l8sFCS
 5+K0A1/kwPV9M/97Xp18xsTZEBr5BvvwEnGRSavlPbOM1mrhlaoqd2qt9ht/NaRd5+1w
 uqqAvCQk80COf/RUccp14zyRVnavF5DE1ZAHem3iESBn6Dh7wl46YBmPGThvMVVOhnTq
 qp0VUNI+m5jHicXlpKCaIY92Zn1H/Yf8/1X+5k3nTzrTJvoAQn043W9E5JOEKbbcb/on
 V/ag==
X-Gm-Message-State: AGi0Pub0DxSOiSDJHf2ho3rF09KV8XAv2rDqRdoWwBRKdnvNIxoKqbEE
 HwZynK5HTrgxuYrNiFxGOJg=
X-Google-Smtp-Source: APiQypI1PZr71kxZ6u3RtjCr6IZCMHu+P3s3ugg7H6oMtBvZjl6Y1B94I3JpK//BSH+Rw9hHJxni/w==
X-Received: by 2002:a5d:4248:: with SMTP id s8mr16903547wrr.216.1587825524488; 
 Sat, 25 Apr 2020 07:38:44 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t67sm8029319wmg.40.2020.04.25.07.38.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 Apr 2020 07:38:43 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: swap interrupts interrupt-names rk3399
 gpu node
Date: Sat, 25 Apr 2020 16:38:37 +0200
Message-Id: <20200425143837.18706-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_073847_926957_BD7980B4 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Dts files with Rockchip rk3399 'gpu' nodes were manually verified.
In order to automate this process arm,mali-midgard.txt
has been converted to yaml. In the new setup dtbs_check with
arm,mali-midgard.yaml expects interrupts and interrupt-names values
in the same order. Fix this for rk3399.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/gpu/
arm,mali-midgard.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 74f2c3d49..a08340fc8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1883,10 +1883,10 @@
 	gpu: gpu@ff9a0000 {
 		compatible = "rockchip,rk3399-mali", "arm,mali-t860";
 		reg = <0x0 0xff9a0000 0x0 0x10000>;
-		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "gpu", "job", "mmu";
+		interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "job", "mmu", "gpu";
 		clocks = <&cru ACLK_GPU>;
 		#cooling-cells = <2>;
 		power-domains = <&power RK3399_PD_GPU>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
