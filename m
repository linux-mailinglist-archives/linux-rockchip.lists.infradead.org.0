Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAA216DF1
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 01:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ja1R/HlWAKIIL8NCOOrC2Vp8+JluJYYpHyViAI4Jk0s=; b=WzMLjC4A7WSpGO
	mCiUJCOHbgWZX+QV7MPyu/liPEXfheZjzmT2k27xekf1i8+RALcPkfZ0zShn13ZvTRL3214lWaeok
	6/aq/HwX6skZoh/GgRp1y9WJdgp+5zGzDZKUAzecXsiOLgjbyLAUBM36FWaOXLv2D6cF5/Nckzd83
	epkyJ4hF6yYxD3k8lnCQ59njL2N/uZjCeGCDDO8bTCWAc9d0LRpmVDK70+DT6IBEpLZckNz429TdP
	zzoBKoIvJjJTikw5e6zRqte1rnmjNu509w40SJy6QPMtO6xeGukCLMxrxArjGTxNGjkWGFS+BBPD8
	I5ak837o0xKS0kY+jcAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO9rJ-0002tC-T6; Tue, 07 May 2019 23:50:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO9rB-0002mn-2S
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 23:50:46 +0000
Received: by mail-pf1-x442.google.com with SMTP id t87so8897877pfa.2
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 16:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C2o4ETy+vWyO645V7kF5tMNDqsri4a3cWb41vpQuvow=;
 b=cOk+SU1iuvIll4eRwwIrl5D3fmLsvWuhtE1OcoCzB240FCv3dCCE2VDX8UL/cD5vIS
 x1XUhb0ErANI7cOso8PoCamjW1SavXsouvxL+B20d1sExG7iHT8GufU1y+biN/X1HoEg
 becIXZZzA9wVvAnEdU6TZhncZ3bW0qSkIbDs0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C2o4ETy+vWyO645V7kF5tMNDqsri4a3cWb41vpQuvow=;
 b=S86v+mSSkTcr8gHxRScEaRzOfdFUmLBoXxczR1iotqjvcdQqkcKLNJkCeVpcDEPvg2
 UU2Ilr+wXLxoqkLEC9YNOEkQ/USwWlwp4TBNGYNRmh1zqATq/fimrAK5rwXJfO3fuIcR
 VHBKcoZbqjAmzbX8K+TxCYnv3ysp0QmZbE/pgOE2rJgR0m5kjJiD68lpumAJj/8Qgu2M
 +QWrINeS0dxnHCZLfBbAVj7h2WKLZjStSjwABLmo4MBNt3qEvX8+8asEgnov4Ki8N0K6
 xVNNCrJahCPFHdsEX3yB4tWbV97pvgCSYdNNK1UapB/bsW2AF/ng6dD98RXOr9DS8391
 NrKg==
X-Gm-Message-State: APjAAAWey1QfYcBdbZYf9yA7sYHhAQXm7QNCbktelGA8cnCPEdnl/WUA
 B8i4vOUBmP4Hv9Ah/nZH5HKliA==
X-Google-Smtp-Source: APXvYqyPRHj71I0RtZt1k/NbQYF+jTnztfdDZMDt/S2D2rOv+RAfu+tJI8s6apjo+dh+q0OSW58e1A==
X-Received: by 2002:a63:6b49:: with SMTP id g70mr43558513pgc.340.1557273044079; 
 Tue, 07 May 2019 16:50:44 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id n18sm30268927pfi.48.2019.05.07.16.50.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 16:50:43 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY power on
Date: Tue,  7 May 2019 16:48:56 -0700
Message-Id: <20190507234857.81414-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_165045_141902_9274AA7E 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Elaine Zhang <zhangqing@rock-chips.com>, hl@rock-chips.com,
 dbasehore@chromium.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, ryandcase@chromium.org, groeck@chromium.org,
 linux-arm-kernel@lists.infradead.org, wxt@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

While testing a newer kernel on rk3288-based Chromebooks I found that
the power draw in suspend was higher on newer kernels compared to the
downstream Chrome OS 3.14 kernel.  Specifically the power of an
rk3288-veyron-jerry board that I tested (as measured by the smart
battery) was ~16 mA on Chrome OS 3.14 and ~21 mA on a newer kernel.

I tracked the regression down to the fact that the "DP PHY" driver
didn't exist in our downstream 3.14.  We relied on the eDP driver to
turn on the clock and relied on the fact that the power for the PHY
was default turned on.

Specifically the thing that caused the power regression was turning
the eDP PHY _off_.  Presumably there is some sort of power leak in the
system and when we turn the PHY off something is leaching power from
something else and causing excessive power draw.

Doing a search through device trees shows that this PHY is only ever
used on rk3288.  Presumably this power leak is present on all
rk3288-SoCs running upstream Linux so let's just whack the driver to
make sure we never turn off power.  We'll still leave the parts that
turn _on_ the power and grab the clock, though.

NOTES:
A) If someone can identify what this power leak is and fix it in some
   other way we can revert this patch.
B) If someone can show that their particular board doesn't have this
   power leak (maybe they have rails hooked up differently?) we can
   perhaps add a device tree property indicating that for some boards
   it's OK to turn this rail off.  I don't want to add this property
   until I know of a board that needs it.

Fixes: fd968973de95 ("phy: Add driver for rockchip Display Port PHY")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
As far as I know Yakir (the original author) is no longer at Rockchip.
I've added a few other Rockchip people and hopefully one of them can
help direct even if they're not directly responsible.

 drivers/phy/rockchip/phy-rockchip-dp.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-dp.c b/drivers/phy/rockchip/phy-rockchip-dp.c
index 8b267a746576..10bbcd69d6f5 100644
--- a/drivers/phy/rockchip/phy-rockchip-dp.c
+++ b/drivers/phy/rockchip/phy-rockchip-dp.c
@@ -35,7 +35,7 @@ struct rockchip_dp_phy {
 static int rockchip_set_phy_state(struct phy *phy, bool enable)
 {
 	struct rockchip_dp_phy *dp = phy_get_drvdata(phy);
-	int ret;
+	int ret = 0;
 
 	if (enable) {
 		ret = regmap_write(dp->grf, GRF_SOC_CON12,
@@ -50,9 +50,12 @@ static int rockchip_set_phy_state(struct phy *phy, bool enable)
 	} else {
 		clk_disable_unprepare(dp->phy_24m);
 
-		ret = regmap_write(dp->grf, GRF_SOC_CON12,
-				   GRF_EDP_PHY_SIDDQ_HIWORD_MASK |
-				   GRF_EDP_PHY_SIDDQ_OFF);
+		/*
+		 * Intentionally don't turn SIDDQ off when disabling
+		 * the PHY.  There is a power leak on rk3288 and
+		 * suspend power _increases_ by 5 mA if you turn this
+		 * off.
+		 */
 	}
 
 	return ret;
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
