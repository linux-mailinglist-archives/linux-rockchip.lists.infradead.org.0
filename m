Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C3A175CFA
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Mar 2020 15:26:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=XZfKiSXh9cuE7tIvbgijZCVYKRlD3MpvYOw0CCU4E7I=; b=PM
	JgKjXUvofXCMEm1MekbZP31aRwKtF7lrXHiMKHD4FQBazAzH6h4hsjoSLTGXAG5KiatABJjnYgzgo
	GWSsYXy7uYN6OPM+939SBccwP2D9JJ7gDVCx0xm+StpMyg6zlQHIxeAw/Yvo7soCSM+/FN96feP3d
	SjpkO0YNQxx9ZmLTwO7UK1QnfieAhTWxyZDQ5+PaPSXPjtpqAyaeiS+ThPBrHgSkIBp7yCyaQdjJW
	MR2s24hTYp/EoQPQxu+QIKBr1zcJwtH70wB5aAfRTpIAjn+9FNvxojSn23Y/83X7g4VQhLgAjwYHQ
	S/1wc9sUsb23L9PTD5nedTqyGTENGLww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8m1i-0004D1-5D; Mon, 02 Mar 2020 14:26:34 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8m1e-0004Ca-4H
 for linux-rockchip@lists.infradead.org; Mon, 02 Mar 2020 14:26:32 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200302142627euoutp02ee0020af93152ddfddbe793864ce6a98~4guSvNj8v2646326463euoutp02K
 for <linux-rockchip@lists.infradead.org>; Mon,  2 Mar 2020 14:26:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200302142627euoutp02ee0020af93152ddfddbe793864ce6a98~4guSvNj8v2646326463euoutp02K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1583159187;
 bh=FCqoYEJcXWnvha6Z3JswL0lmTOgpCoa7lCnTWgtZMW8=;
 h=From:To:Cc:Subject:Date:References:From;
 b=rDTN3crx0HVwi9INFOpuLCVsA8M0WdDiCJLU+npd/3811rfjHNupCnaGPNY07kKFh
 dfTezCVOGQpMUbjYCl6ORPGf8/9z5J4tZO6KDgBPV3IHFbvwsQTxhMkwx1rNod18S3
 hFaiflnkiW+HCk74Lt6K7NA6Mpg0Bo3B5RiMHqvc=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200302142627eucas1p2d7e14105a14172b32f8329188e83ba7a~4guSdGvzb0112601126eucas1p2d;
 Mon,  2 Mar 2020 14:26:27 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 31.D3.60679.3971D5E5; Mon,  2
 Mar 2020 14:26:27 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200302142626eucas1p25b7aec18264b1483fab9cceb86989aa8~4guSDepPD2743227432eucas1p2u;
 Mon,  2 Mar 2020 14:26:26 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200302142626eusmtrp2ac9c995f2f4ff5ba97b49fd36ef7d86a~4guSCuacg1646016460eusmtrp2c;
 Mon,  2 Mar 2020 14:26:26 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-82-5e5d1793293e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 81.C4.07950.2971D5E5; Mon,  2
 Mar 2020 14:26:26 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200302142626eusmtip1d93770a14923d6a1571de74b07f4d3e4~4guROo6By0637906379eusmtip1X;
 Mon,  2 Mar 2020 14:26:26 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH] drm/bridge: analogix_dp: Split bind() into probe() and real
 bind()
Date: Mon,  2 Mar 2020 15:26:15 +0100
Message-Id: <20200302142615.14947-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRmVeSWpSXmKPExsWy7djPc7qTxWPjDL7uELO4te4cq8XGGetZ
 La58fc9m8f/Ra1aLuZNqLSbdn8BicfX7S2aLFV9mslucfHOVxaJz4hJ2i08P/jNbzDi/j8li
 7ZG77BaH+qItZkx+yebA7/H+Riu7x85Zd9k9ZnfMZPU4MeESk8f97uNMHpuX1Hv8nbWfxaNv
 yypGjwO9k1k8tl+bx+zxeZNcAHcUl01Kak5mWWqRvl0CV8acC8fYCnrtK+avPcfWwPjAtIuR
 k0NCwESia8tF1i5GLg4hgRWMEsueHWKBcL4wSuzsPsgO4XxmlPg8Yxs7TMuVzw+YQGwhgeWM
 En+mqMF1TNj2khkkwSZgKNH1tosNxBYRyJH41PGGEaSIWaCVReJz41qwScICoRI7zr4HK2IR
 UJU4d+ci2FReAVuJz1+PskFsk5dYveEAM0izhMAudomON9cYIRIuEjeuTWeFsIUlXh3fAnWe
 jMT/nfOZIBqaGSUenlvLDuH0MEpcbpoB1W0tcefcL6AVHEA3aUqs36UPYkoIOEp87fWGMPkk
 brwVBClmBjInbZvODBHmlehoE4KYoSYx6/g6uK0HL1xihrA9JO6cXMEMCaBYieW3L7JOYJSb
 hbBqASPjKkbx1NLi3PTUYqO81HK94sTc4tK8dL3k/NxNjMCUdPrf8S87GHf9STrEKMDBqMTD
 G8AcGyfEmlhWXJl7iFGCg1lJhNeXMzpOiDclsbIqtSg/vqg0J7X4EKM0B4uSOK/xopexQgLp
 iSWp2ampBalFMFkmDk6pBkZ2DdNlbEmV1oyswU2O6UvVmmdnn9Fo3X2OR70q7tMH9biEdf+b
 lk7Ysz7Z3/7/Ku0KDR5dVX3tjxkVG6/nWopmGCa8clqpMnHOw6wDLR3TRLzvO/zb59X0Kq5w
 +ZU/F5tapY49/Vsp9t9U/OOTnWbcz0V+XS08up9xW1Y0qzvDnja/gzGv0pVYijMSDbWYi4oT
 Aa7ydrtFAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4Xd1J4rFxBlPmmVvcWneO1WLjjPWs
 Fle+vmez+P/oNavF3Em1FpPuT2CxuPr9JbPFii8z2S1OvrnKYtE5cQm7xacH/5ktZpzfx2Sx
 9shddotDfdEWMya/ZHPg93h/o5XdY+esu+wesztmsnqcmHCJyeN+93Emj81L6j3+ztrP4tG3
 ZRWjx4HeySwe26/NY/b4vEkugDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srI
 VEnfziYlNSezLLVI3y5BL2POhWNsBb32FfPXnmNrYHxg2sXIySEhYCJx5fMDJhBbSGApo8TT
 PbUQcRmJk9MaWCFsYYk/17rYuhi5gGo+MUosn/8KLMEmYCjR9RYkwckhIpAn8fBwJxNIEbNA
 L4tE++cTYAlhgWCJjv1fWUBsFgFViXN3LoJt4xWwlfj89SgbxAZ5idUbDjBPYORZwMiwilEk
 tbQ4Nz232EivODG3uDQvXS85P3cTIzAWth37uWUHY9e74EOMAhyMSjy8Pxhi44RYE8uKK3MP
 MUpwMCuJ8PpyRscJ8aYkVlalFuXHF5XmpBYfYjQFWj6RWUo0OR8Yp3kl8YamhuYWlobmxubG
 ZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhjzRFu6b/3+oP2lyXafze+qqlMb/WO8dm5v
 +mzM+T2tyVm+3DkltWG64bSLyy89EFisLDV9ndPGkEMl65iivdZ+msXZ235Def8q/zMynM93
 eh5JPP1Pu7D1H9NWObYJB66/92z7/WNiZhGLprTREbkbgU25PzNymNOtpG+u5bhQrP/q18va
 U9FKLMUZiYZazEXFiQAxIk4JmwIAAA==
X-CMS-MailID: 20200302142626eucas1p25b7aec18264b1483fab9cceb86989aa8
X-Msg-Generator: CA
X-RootMTR: 20200302142626eucas1p25b7aec18264b1483fab9cceb86989aa8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200302142626eucas1p25b7aec18264b1483fab9cceb86989aa8
References: <CGME20200302142626eucas1p25b7aec18264b1483fab9cceb86989aa8@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_062630_379376_42DAAF3B 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, Jingoo Han <jingoohan1@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Sandy Huang <hjc@rock-chips.com>, Inki Dae <inki.dae@samsung.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Analogix_dp driver acquires all its resources in ->bind() callback, what
is a bit against the driver component based approach, where driver
initialization is split into probe(), where all resources are gathered, and
bind(), where objects are created and compound driver is initialized.
Extract resource related operations to analogix_dp_probe() and
analogix_dp_remove() and call them before/after registration of the device
components from the main Exynos and Rockchip DP drivers.

This fixes multiple tries of DRM compound driver bind() when example when
DP PHY driver is not yet loaded/probed():

[drm] Exynos DRM: using 14400000.fimd device for DMA mapping operations
exynos-drm exynos-drm: bound 14400000.fimd (ops fimd_component_ops [exynosdrm])
exynos-drm exynos-drm: bound 14450000.mixer (ops mixer_component_ops [exynosdrm])
exynos-dp 145b0000.dp-controller: no DP phy configured
exynos-drm exynos-drm: failed to bind 145b0000.dp-controller (ops exynos_dp_ops [exynosdrm]): -517
exynos-drm exynos-drm: master bind failed: -517
...
[drm] Exynos DRM: using 14400000.fimd device for DMA mapping operations
exynos-drm exynos-drm: bound 14400000.fimd (ops hdmi_enable [exynosdrm])
exynos-drm exynos-drm: bound 14450000.mixer (ops hdmi_enable [exynosdrm])
exynos-drm exynos-drm: bound 145b0000.dp-controller (ops hdmi_enable [exynosdrm])
exynos-drm exynos-drm: bound 14530000.hdmi (ops hdmi_enable [exynosdrm])
[drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
Console: switching to colour frame buffer device 170x48
exynos-drm exynos-drm: fb0: exynosdrmfb frame buffer device
[drm] Initialized exynos 1.1.0 20180330 for exynos-drm on minor 1
...

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 33 ++++++++++++-------
 drivers/gpu/drm/exynos/exynos_dp.c            | 15 ++++++---
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 15 +++++----
 include/drm/bridge/analogix_dp.h              |  5 +--
 4 files changed, 44 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index dfb59a5fefea..a89a03b66bf2 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1646,8 +1646,7 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
 }
 
 struct analogix_dp_device *
-analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
-		 struct analogix_dp_plat_data *plat_data)
+analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct analogix_dp_device *dp;
@@ -1750,22 +1749,30 @@ analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 					irq_flags, "analogix-dp", dp);
 	if (ret) {
 		dev_err(&pdev->dev, "failed to request irq\n");
-		goto err_disable_pm_runtime;
+		return ERR_PTR(ret);
 	}
 	disable_irq(dp->irq);
 
+	return dp;
+}
+EXPORT_SYMBOL_GPL(analogix_dp_probe);
+
+int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
+{
+	int ret;
+
 	dp->drm_dev = drm_dev;
 	dp->encoder = dp->plat_data->encoder;
 
 	dp->aux.name = "DP-AUX";
 	dp->aux.transfer = analogix_dpaux_transfer;
-	dp->aux.dev = &pdev->dev;
+	dp->aux.dev = dp->dev;
 
 	ret = drm_dp_aux_register(&dp->aux);
 	if (ret)
-		return ERR_PTR(ret);
+		return ret;
 
-	pm_runtime_enable(dev);
+	pm_runtime_enable(dp->dev);
 
 	ret = analogix_dp_create_bridge(drm_dev, dp);
 	if (ret) {
@@ -1773,13 +1780,12 @@ analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 		goto err_disable_pm_runtime;
 	}
 
-	return dp;
+	return 0;
 
 err_disable_pm_runtime:
+	pm_runtime_disable(dp->dev);
 
-	pm_runtime_disable(dev);
-
-	return ERR_PTR(ret);
+	return ret;
 }
 EXPORT_SYMBOL_GPL(analogix_dp_bind);
 
@@ -1796,10 +1802,15 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
 
 	drm_dp_aux_unregister(&dp->aux);
 	pm_runtime_disable(dp->dev);
-	clk_disable_unprepare(dp->clock);
 }
 EXPORT_SYMBOL_GPL(analogix_dp_unbind);
 
+void analogix_dp_remove(struct analogix_dp_device *dp)
+{
+	clk_disable_unprepare(dp->clock);
+}
+EXPORT_SYMBOL_GPL(analogix_dp_remove);
+
 #ifdef CONFIG_PM
 int analogix_dp_suspend(struct analogix_dp_device *dp)
 {
diff --git a/drivers/gpu/drm/exynos/exynos_dp.c b/drivers/gpu/drm/exynos/exynos_dp.c
index 4785885c0f4f..558b78e8cc32 100644
--- a/drivers/gpu/drm/exynos/exynos_dp.c
+++ b/drivers/gpu/drm/exynos/exynos_dp.c
@@ -184,13 +184,11 @@ static int exynos_dp_bind(struct device *dev, struct device *master, void *data)
 
 	dp->plat_data.encoder = encoder;
 
-	dp->adp = analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
-	if (IS_ERR(dp->adp)) {
+	ret = analogix_dp_bind(dp->adp, dp->drm_dev);
+	if (ret)
 		dp->encoder.funcs->destroy(&dp->encoder);
-		return PTR_ERR(dp->adp);
-	}
 
-	return 0;
+	return ret;
 }
 
 static void exynos_dp_unbind(struct device *dev, struct device *master,
@@ -250,12 +248,19 @@ static int exynos_dp_probe(struct platform_device *pdev)
 	dp->ptn_bridge = bridge;
 
 out:
+	dp->adp = analogix_dp_probe(dev, &dp->plat_data);
+	if (IS_ERR(dp->adp))
+		return PTR_ERR(dp->adp);
+
 	return component_add(&pdev->dev, &exynos_dp_ops);
 }
 
 static int exynos_dp_remove(struct platform_device *pdev)
 {
+	struct exynos_dp_device *dp = platform_get_drvdata(pdev);
+
 	component_del(&pdev->dev, &exynos_dp_ops);
+	analogix_dp_remove(dp->adp);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index f38f5e113c6b..b85cf2582864 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -349,11 +349,9 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 	dp->plat_data.power_off = rockchip_dp_powerdown;
 	dp->plat_data.get_modes = rockchip_dp_get_modes;
 
-	dp->adp = analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
-	if (IS_ERR(dp->adp)) {
-		ret = PTR_ERR(dp->adp);
+	ret = analogix_dp_bind(dp->adp, drm_dev);
+	if (ret)
 		goto err_cleanup_encoder;
-	}
 
 	return 0;
 err_cleanup_encoder:
@@ -368,8 +366,6 @@ static void rockchip_dp_unbind(struct device *dev, struct device *master,
 
 	analogix_dp_unbind(dp->adp);
 	dp->encoder.funcs->destroy(&dp->encoder);
-
-	dp->adp = ERR_PTR(-ENODEV);
 }
 
 static const struct component_ops rockchip_dp_component_ops = {
@@ -402,12 +398,19 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, dp);
 
+	dp->adp = analogix_dp_probe(dev, &dp->plat_data);
+	if (IS_ERR(dp->adp))
+		return PTR_ERR(dp->adp);
+
 	return component_add(dev, &rockchip_dp_component_ops);
 }
 
 static int rockchip_dp_remove(struct platform_device *pdev)
 {
+	struct rockchip_dp_device *dp = platform_get_drvdata(pdev);
+
 	component_del(&pdev->dev, &rockchip_dp_component_ops);
+	analogix_dp_remove(dp->adp);
 
 	return 0;
 }
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 7aa2f93da49c..b0dcc07334a1 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -42,9 +42,10 @@ int analogix_dp_resume(struct analogix_dp_device *dp);
 int analogix_dp_suspend(struct analogix_dp_device *dp);
 
 struct analogix_dp_device *
-analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
-		 struct analogix_dp_plat_data *plat_data);
+analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data);
+int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev);
 void analogix_dp_unbind(struct analogix_dp_device *dp);
+void analogix_dp_remove(struct analogix_dp_device *dp);
 
 int analogix_dp_start_crc(struct drm_connector *connector);
 int analogix_dp_stop_crc(struct drm_connector *connector);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
