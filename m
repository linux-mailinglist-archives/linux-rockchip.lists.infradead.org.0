Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429C71A8249
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 17:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaTdvq/srgBs1dRM0CnPJ7XIko4jIFO1TWNWJS/TjIY=; b=XavIcOubKW0kQj
	Tegies31cTgi8p1KT37zfjn+//NxrxAdxA9u9L2MN86Ds6fH3U/0/HV0ytHHKDvNKLDLWmYoLLsop
	WUsHcFIfPDxTMN9nWoGDt/azx6890uodna/GOg6CSeJLpAWP4MQPfxaWtbakS4RKMs+sxg22dP7ri
	7MvQo59Fe2MBOjF6dC9962xnTT7k1FXiIzZfk9+QZrDDMeA+91uqAwHCO7a/seLIHpWg+ywFwOc8W
	t/sLTJAWPwKsE9qDjkaQCA2dWRpDSHQtiP5LlbdQ56yYjs6Jlsh15/5YHKFANEHUuz2S+64/GSZj9
	a1tWHuSLWMWc3wRfam4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONNv-0007WG-M8; Tue, 14 Apr 2020 15:21:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONKy-0002Nj-Uw; Tue, 14 Apr 2020 15:19:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 3117F2A1709
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v6 6/8] drm: stm: dw-mipi-dsi: let the bridge handle the HW
 version check
Date: Tue, 14 Apr 2020 18:19:53 +0300
Message-Id: <20200414151955.311949-7-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414151955.311949-1-adrian.ratiu@collabora.com>
References: <20200414151955.311949-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_081857_215813_BA36D444 
X-CRM114-Status: GOOD (  12.09  )
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Adrian Pop <pop.adrian61@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The stm mipi-dsi platform driver added a version test in
commit fa6251a747b7 ("drm/stm: dsi: check hardware version")
so that HW revisions other than v1.3x get rejected. The rockchip
driver had no such check and just assumed register layouts are
v1.3x compatible.

Having such tests was a good idea because only v130/v131 layouts
were supported at the time, however since adding multiple layout
support in the bridge, the version is automatically checked for
all drivers, compatible layouts get picked and unsupported HW is
automatically rejected by the bridge, so there's no use keeping
the test in the stm driver.

The main reason prompting this change is that the stm driver
test immediately disabled the peripheral clock after reading
the version, making the bridge read version 0x0 immediately
after in its own probe(), so we move the clock disabling after
the bridge does the version test.

Tested on STM32F769 and STM32MP1.

Cc: linux-stm32@st-md-mailman.stormreply.com
Reported-by: Adrian Pop <pop.adrian61@gmail.com>
Tested-by: Adrian Pop <pop.adrian61@gmail.com>
Tested-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
New in v6.
---
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
index 2e1f2664495d..7218e405d7e2 100644
--- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
+++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
@@ -402,15 +402,6 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 		goto err_dsi_probe;
 	}
 
-	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
-	clk_disable_unprepare(pclk);
-
-	if (dsi->hw_version != HWVER_130 && dsi->hw_version != HWVER_131) {
-		ret = -ENODEV;
-		DRM_ERROR("bad dsi hardware version\n");
-		goto err_dsi_probe;
-	}
-
 	dw_mipi_dsi_stm_plat_data.base = dsi->base;
 	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
 
@@ -423,6 +414,9 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 		goto err_dsi_probe;
 	}
 
+	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
+	clk_disable_unprepare(pclk);
+
 	return 0;
 
 err_dsi_probe:
-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
