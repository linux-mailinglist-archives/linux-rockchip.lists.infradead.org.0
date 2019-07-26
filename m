Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E4176870
	for <lists+linux-rockchip@lfdr.de>; Fri, 26 Jul 2019 15:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJZ7lcMdQ7sXOhgecauh3djgX488x4HqCdClYmr/L1E=; b=qVkKSTylJFAA+t
	UwKiMY7qrTR9CToZY88bKQMaUhQocERP8NwfU+3DFdPPg9xPpPBumYXHOpkJl3c1P08OyvTZ7XQ4H
	/rTSMoB7p1eEM3twWGzzzmOU77A9FN6hjyGmEsenWB8EpjXOdjUzK2ztd+F5Cz+XC3Ac38SNVkASb
	lEQ2cN4NV9mz9umFFNF5huzSx0HM4Szo9Jf/Kr6yyB3xp+HoD0wcigEr7ra4UBk+VneefdsO5j/+D
	HEK4ava7E5wrShQbFVZbQqPnCGFMMhC572B1s5PXqgLPKOz3HE4kQ60zRC+B8sSSJm/LWIjX2BGpG
	TZMoAFV2LaU4RHEOY2dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0WV-0001Cg-2O; Fri, 26 Jul 2019 13:44:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0WR-0001BX-MS
 for linux-rockchip@lists.infradead.org; Fri, 26 Jul 2019 13:44:37 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA3C322CEB;
 Fri, 26 Jul 2019 13:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564148675;
 bh=AG13s3HdxuZRKVRsb0ywcmrGYozXwPlhLeYJUXH+RFM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KUsE9MrD88mV+15H341vcJ0SdTtTnXLEb2NGvMAgaSTg7q995K21GQ99433DrBswa
 9n7e6VnPbg2V3Hn/oyj8AgbWK0692zq5miudCU4XT74AeIvGlh38kPQHFdrnv3N7nC
 /RsTBCSdijRolrGYJkefsO8o9/KDtQhzMff7bu+o=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 02/30] ARM: dts: rockchip: Make
 rk3288-veyron-minnie run at hs200
Date: Fri, 26 Jul 2019 09:44:04 -0400
Message-Id: <20190726134432.12993-2-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134432.12993-1-sashal@kernel.org>
References: <20190726134432.12993-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_064435_751456_8027F8BD 
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
index f72d616d1bf8..9647d9b6b299 100644
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
