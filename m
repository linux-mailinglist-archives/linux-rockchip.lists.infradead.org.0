Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEBEB9DFE
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Sep 2019 15:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8uf09y+olc+Fo9PaU7QDuyhlvvyuRHI2dir9zU8OCRM=; b=efN
	zvTaBQ/ujJ3i9sDKd6UsSWM1Z8RFIKGmGxbuSxdwTN015q53ZI/3CFchButqrtnrqF5bnC75i8YHP
	zFqP7ycmtKSVtkDmSlsYj/DnubWbpmagXP/XDP0KwtRNH6bf09tneJXszop5Hvi0OCqsU4+ET4VQc
	/w4bBWES7FVrYueVp8MhljIsa/d8hKbVKSxcXks72X/Bm5EHuUteJnP12OhW1w2Ui4IuaR6v25A0U
	8t/RwKOn3nzG74/PKbaEl6kOcyi6Bqzh3hSKzMDXQMrA45b/unqqTIFrAfUKT8ADAyAYuhrY7dL3B
	BbrE0WUmHBJLhWZfcvyHr+b7ey9Cx1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBfEe-0002aL-4J; Sat, 21 Sep 2019 13:15:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBfEL-0002O9-AK; Sat, 21 Sep 2019 13:15:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id p7so5200464wmp.4;
 Sat, 21 Sep 2019 06:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=CUIiObmZUoLOjlcmGuE4Z8qsrk1peXb9nnaXkFScf1o=;
 b=aEQ/uRYvCsbX944pwrZC5Zi5+pI6s/P143IvpXdlQXMblp/gr0TEwvb4/jIY8KcTPb
 h+OCadPSshMmMPvaxG+aDklS4bI+8UV1JUuif5+/cH6ND7u1pCPlRypNjKUUSwZlcfVY
 fmOmGc8jEjdrmt2rxdLStr2mvlAdNsGDr/SrNSboflvindXVGUKuxoMwkhXbfAgD7kXD
 ds2xaFd7dONWCaZm0mLYpGcfY18vZi6cbUNr7JCDZAZ7y8bfR+bZaJZLCL3MaN0W9/8b
 tqoH4C7+jAVoy4HWXeff+DTBMlGe4VHPROBfJn0KzOOWdKjEpBrMct/Vjc06IqQSo+hy
 Tt8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CUIiObmZUoLOjlcmGuE4Z8qsrk1peXb9nnaXkFScf1o=;
 b=h+cy8eJs/UTeiJzt803DJY4bgVbfMVP/Z49o/wr03kqhpNI9ydIH+ar2zzI2iWexpM
 ZzgUMv/1GPmqL5YPESh7p9gigoIQ5a7lDX7pO7mqxC0PNyeyZKSsrNhMZLKEZkErPY1f
 8IhO3DYPn2TROfHNhrKazqoojHc845188c8sTkxVvAf6AmfwYAMl9ca12NZBmVQR36NN
 XhN4VYehR2XAzE9AcGOTZvyBa9ebhSMG7u5Q/OiSAckDPmZ6B26Px96jwwRvRW/PBfPB
 yiXMvWNnRqBaIx9cdHDFXEMccoB/3RNR//uNJmlHwCy6Kn0F7toMgVi8AauCtbUQsgwQ
 cIpg==
X-Gm-Message-State: APjAAAVE1l4BxwL8Z1YLGXAhzhm5VGSZTLQmSXQg6+3ibumsSm+bxwaN
 BBaU69sXBc8Y2h20jUfrC6I=
X-Google-Smtp-Source: APXvYqwjrERzxUIeZTPWyTYAXdg1ZTPDKGaLOeQoXI2vdua+67gV4Ml3mGFKjPE7ijQS8GUVUSa4Hw==
X-Received: by 2002:a05:600c:295d:: with SMTP id
 n29mr6713359wmd.36.1569071712994; 
 Sat, 21 Sep 2019 06:15:12 -0700 (PDT)
Received: from apple.sigmaris.info ([84.93.172.212])
 by smtp.gmail.com with ESMTPSA id g11sm5676349wmh.45.2019.09.21.06.15.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 21 Sep 2019 06:15:12 -0700 (PDT)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: fix Rockpro64 RK808 interrupt line
Date: Sat, 21 Sep 2019 14:14:57 +0100
Message-Id: <20190921131457.36258-1-sigmaris@gmail.com>
X-Mailer: git-send-email 2.17.2 (Apple Git-113)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_061517_383773_FFE10321 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sigmaris[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Akash Gajjar <Akash_Gajjar@mentor.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Fix the pinctrl and interrupt specifier for RK808 to use GPIO3_B2. On the
Rockpro64 schematic [1] page 16, it shows GPIO3_B2 used for the interrupt
line PMIC_INT_L from the RK808, and there's a note which translates as:
"PMU termination GPIO1_C5 changed to this".

Tested by setting an RTC wakealarm and checking /proc/interrupts counters.
Without this patch, neither the rockchip_gpio_irq counter for the RK808,
nor the RTC alarm counter increment when the alarm time is reached.
With this patch, both interrupt counters increment by 1 as expected.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Fixes: e4f3fb4 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 0401d4ec1f45..c27d8a6ae1c5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -247,8 +247,8 @@
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
@@ -574,7 +574,7 @@
 
 	pmic {
 		pmic_int_l: pmic-int-l {
-			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
 		vsel1_gpio: vsel1-gpio {
-- 
2.17.2 (Apple Git-113)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
