Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0DA767BE
	for <lists+linux-rockchip@lfdr.de>; Fri, 26 Jul 2019 15:39:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IrY3NCyWrhRGoRdWbx6SB/cm2HUyS9YZ2HAHUwSMSfk=; b=f2YGNaI2HS1M9a
	vobJdweFxXlemKHPgoq/VLOCs5M1E0qXut1OhaD02UCTn2CM1uicur9vn1jzL3HuG43I+UV8bnjwR
	V0lFKk054h6nIK8LI4Oacldd9xZn9JnI0Ej1I2n99sZZ469ZipbJ6pPh1f/pz/6Q++AhlGdFtq4D0
	QOWsLKa12I5GukKcz+YIFXRBL4dSaL6LKcIPy/F0fkuClZKc15p3mZ1wPRFpvZZmpFT185yEukDZx
	rq8eSchR5TFDK8D2fT/ddIsuAEbjCMi3g1SHEPfhjtTBlQIeUJ+kHQUFHWC02iE6SHqCF77Lh6UA+
	+nsEBEEInGtrSLnhfsmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0Rn-0001AB-FL; Fri, 26 Jul 2019 13:39:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0Ri-000170-Ek
 for linux-rockchip@lists.infradead.org; Fri, 26 Jul 2019 13:39:43 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7605E22CB8;
 Fri, 26 Jul 2019 13:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564148382;
 bh=TebGSl2bOYacQCJa6t74f6F/azyuCegyKqwBZ5D9W+8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CG73kuL8lbnNDYoOUUkCPGCXVh96Zo4t/D0ZVTqYzHIossXSB5Wwb8C0O0tSGW6G1
 AwXq/mtKDqNS8aeIM0L/9ri+35iCDZu6oM+xBKoJ2k1HpRvDRXAxw1O+aDRwXynK7x
 fRDaiDRkzDBeY2Dr20xqo/v2jxNc/uq8+V0sqaYQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 05/85] ARM: dts: rockchip: Mark that the rk3288
 timer might stop in suspend
Date: Fri, 26 Jul 2019 09:38:15 -0400
Message-Id: <20190726133936.11177-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726133936.11177-1-sashal@kernel.org>
References: <20190726133936.11177-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_063942_508648_C413F2BC 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Douglas Anderson <dianders@chromium.org>

[ Upstream commit 8ef1ba39a9fa53d2205e633bc9b21840a275908e ]

This is similar to commit e6186820a745 ("arm64: dts: rockchip: Arch
counter doesn't tick in system suspend").  Specifically on the rk3288
it can be seen that the timer stops ticking in suspend if we end up
running through the "osc_disable" path in rk3288_slp_mode_set().  In
that path the 24 MHz clock will turn off and the timer stops.

To test this, I ran this on a Chrome OS filesystem:
  before=$(date); \
  suspend_stress_test -c1 --suspend_min=30 --suspend_max=31; \
  echo ${before}; date

...and I found that unless I plug in a device that requests USB wakeup
to be active that the two calls to "date" would show that fewer than
30 seconds passed.

NOTE: deep suspend (where the 24 MHz clock gets disabled) isn't
supported yet on upstream Linux so this was tested on a downstream
kernel.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3288.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index aa017abf4f42..f7bc886a4b51 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -231,6 +231,7 @@
 			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 		clock-frequency = <24000000>;
+		arm,no-tick-in-suspend;
 	};
 
 	timer: timer@ff810000 {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
