Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D711F40DE
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 18:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSMYqh3MxDw21q6gtCJI4Yzc02WPdNs/INBbQPtp+DU=; b=bm1dw1p63fMKq4
	UGsM+k97Xve+M4pxmIxQji004V2hsGJCcmpnJoCq3k5Y2dAZqDth8tURWbNj7khMOSnoQNZDpBwee
	oC3xoUX+ryPvFotu8DPIjFFPjjrOPvmtQWrhCkrW1YgfA0RKdHCFQPIU3Swhs8Lj7//DPtwZKPqog
	q+hz5fln+RAv0r09ohononPqSz1zHq4x885qOZoMrs8g6TvUdm3GvgX3qJgFRqIyWzKgrS467eBK2
	sIEawPcKBSxM4yEw5UvJ6Whkhy1fc8Tjd2OE8KH4dcJKq60c6aMkLL1e+6qp2iPG1V3BUl199779r
	2d6nH+pSg6TfjeyzY9OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jih8B-0003rS-04; Tue, 09 Jun 2020 16:29:43 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jih4L-0000PZ-LT; Tue, 09 Jun 2020 16:25:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id C0F8A2A3C05
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v9 08/11] drm: stm: dw-mipi-dsi: let the bridge handle the HW
 version check
Date: Tue,  9 Jun 2020 19:26:57 +0300
Message-Id: <20200609162700.953260-9-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609162700.953260-1-adrian.ratiu@collabora.com>
References: <20200609162700.953260-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_092545_872040_A170F8E9 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 Andrzej Hajda <a.hajda@samsung.com>, linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Emil Velikov <emil.velikov@collabora.com>
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
Cc: Emil Velikov <emil.velikov@collabora.com>
Reported-by: Adrian Pop <pop.adrian61@gmail.com>
Tested-by: Adrian Pop <pop.adrian61@gmail.com>
Tested-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
New in v6.
---
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
index 2e1f2664495d0..45f67f8a5f6c8 100644
--- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
+++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
@@ -396,26 +396,19 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 		goto err_dsi_probe;
 	}
 
+	/* enable pclk so MMIO register values can be read, else reads == 0x0 */
 	ret = clk_prepare_enable(pclk);
 	if (ret) {
 		DRM_ERROR("%s: Failed to enable peripheral clk\n", __func__);
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
 
 	platform_set_drvdata(pdev, dsi);
 
+	/* setup the bridge, this will also access MMIO registers via regmap */
 	dsi->dsi = dw_mipi_dsi_probe(pdev, &dw_mipi_dsi_stm_plat_data);
 	if (IS_ERR(dsi->dsi)) {
 		ret = PTR_ERR(dsi->dsi);
@@ -423,6 +416,11 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 		goto err_dsi_probe;
 	}
 
+	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
+
+	/* initial MMIO config done, disable clk to save power */
+	clk_disable_unprepare(pclk);
+
 	return 0;
 
 err_dsi_probe:
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
