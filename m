Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA9176846
	for <lists+linux-rockchip@lfdr.de>; Fri, 26 Jul 2019 15:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30H37aFJQBuw3miflgAttlDpZIpuYZCbZZUovSxYNBc=; b=COaEM9jIXWHNVk
	clgP2//2Ohip91u6pLe87lUA/Pq0lHZhaSFLR0Kw+JEZdXiNmpLZZwHqi+M+dsomIOBft57+/YztK
	k746q0wYHlJ4atO2VtDEPih6QzChvoUjHowuflE2ZJJd8y6VaFGg26Gf0jtDBdVtiVsxn4Idv+YrT
	KC0CFzd0KYGWwxUyFZxntZ102IE0gF4kF9NiHPaMbQWwnGdQ/rAM34VL0UuurPm0BY2KcKd5jmhy+
	+3ex5LTprBriBM3vDXkVw2MiceXvq4ai1mdjqeEYbtr9KmCd2BxblUcTwMETl48RhOtffOta8lRUS
	8ahNxh/y+HDRkNGXgK8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0VW-0008Tl-ND; Fri, 26 Jul 2019 13:43:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0VT-0008SV-J8
 for linux-rockchip@lists.infradead.org; Fri, 26 Jul 2019 13:43:37 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 926C922CEA;
 Fri, 26 Jul 2019 13:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564148615;
 bh=3xVYBERJTrE1AyNi27bN6GYOlyuafegPFm+RMVy+xCI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YXwUMPiqs60IgpbQUI56amQuatbE9KMSkRXH3g8v5RsgAg2e90DqFezBtk1L+EmPc
 QYjhPQSMrXANXWEajXGtYdKCGQXaPmF0ouGfhJcCXGdT3oQOvuEO2SA3U8wzrab2PU
 rCh2eZDRzThyewUFnrTpLX9jF8i8pwjQnegbdmDg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 02/37] ARM: dts: rockchip: Make
 rk3288-veyron-minnie run at hs200
Date: Fri, 26 Jul 2019 09:42:57 -0400
Message-Id: <20190726134332.12626-2-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134332.12626-1-sashal@kernel.org>
References: <20190726134332.12626-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_064335_647896_995DBB42 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
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

[ Upstream commit 1c0479023412ab7834f2e98b796eb0d8c627cd62 ]

As some point hs200 was failing on rk3288-veyron-minnie.  See commit
984926781122 ("ARM: dts: rockchip: temporarily remove emmc hs200 speed
from rk3288 minnie").  Although I didn't track down exactly when it
started working, it seems to work OK now, so let's turn it back on.

To test this, I booted from SD card and then used this script to
stress the enumeration process after fixing a memory leak [1]:
  cd /sys/bus/platform/drivers/dwmmc_rockchip
  for i in $(seq 1 3000); do
    echo "========================" $i
    echo ff0f0000.dwmmc > unbind
    sleep .5
    echo ff0f0000.dwmmc > bind
    while true; do
      if [ -e /dev/mmcblk2 ]; then
        break;
      fi
      sleep .1
    done
  done

It worked fine.

[1] https://lkml.kernel.org/r/20190503233526.226272-1-dianders@chromium.org

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index 544de6027aaa..6000dca1cf05 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -125,10 +125,6 @@
 	power-supply = <&backlight_regulator>;
 };
 
-&emmc {
-	/delete-property/mmc-hs200-1_8v;
-};
-
 &gpio_keys {
 	pinctrl-0 = <&pwr_key_l &ap_lid_int_l &volum_down_l &volum_up_l>;
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
