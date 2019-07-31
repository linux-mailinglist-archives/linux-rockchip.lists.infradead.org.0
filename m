Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DBD7C9C7
	for <lists+linux-rockchip@lfdr.de>; Wed, 31 Jul 2019 19:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZLL7kOh2DmlMlzIApW0khbFRc5JxsDzn3HTDfD4aqcU=; b=aJ0TjJxBeJ4IK4No8ky5wdErwB
	Clc7aDTPmJUIuCfVWBNeCJIe1elQ055w82MeSpzgajjyRCbzU77/hkx1hjzz81EOY8rR9sB/+FA63
	cJjXj8cXbu4XigRn6nII9sitKKapVDQCBCAffRSU+X4sd+yl37WorlnYjyDm6I5eC8LYNeIqkiiRI
	UodKVvuS6cffSx9r4Q+c4rou73Dtp1gakvxoaWOIdNFfQfYV2ngQo59Rx9cXDPxLZI18U73vdLL3q
	LHcMwSiNuIKf7qLs8ZddRw4hUAa/yYDLEXjhiKqO0wKi4hMR9nWymDeQQhjjn5weaimR3ksOr7KK1
	5uDwC5Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrzT-0004ZH-3g; Wed, 31 Jul 2019 17:02:15 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrxv-0002M6-T1; Wed, 31 Jul 2019 17:00:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 1DAE328A758
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 13/13] drm/i915: Provide ddc symlink in hdmi connector sysfs
 directory
Date: Wed, 31 Jul 2019 18:58:22 +0200
Message-Id: <fcacfbfa9bbc1b721a630fec885782f98e84d356.1564591626.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1564591626.git.andrzej.p@collabora.com>
References: <65481afa-1104-4ee9-e53d-f2732a10d4b9@baylibre.com>
 <cover.1564591626.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1564591626.git.andrzej.p@collabora.com>
References: <cover.1564591626.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_100040_655685_D4995F60 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, Eric Anholt <eric@anholt.net>,
 Thierry Reding <thierry.reding@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, kernel@collabora.com,
 Anthony Koo <Anthony.Koo@amd.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Mario Kleiner <mario.kleiner.de@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, David Francis <David.Francis@amd.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-msm@vger.kernel.org, CK Hu <ck.hu@mediatek.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Shashank Sharma <shashank.sharma@intel.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Leo Li <sunpeng.li@amd.com>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 linux-mediatek@lists.infradead.org, Jyri Sarha <jsarha@ti.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 amd-gfx@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>,
 Todor Tomov <todor.tomov@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Use the ddc pointer provided by the generic connector.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Emil Velikov <emil.velikov@collabora.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0ebec69bbbfc..7e69e5782f6e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3084,6 +3084,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
 	struct intel_encoder *intel_encoder = &intel_dig_port->base;
 	struct drm_device *dev = intel_encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct i2c_adapter *ddc;
 	enum port port = intel_encoder->port;
 
 	DRM_DEBUG_KMS("Adding HDMI connector on port %c\n",
@@ -3094,8 +3095,13 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
 		 intel_dig_port->max_lanes, port_name(port)))
 		return;
 
-	drm_connector_init(dev, connector, &intel_hdmi_connector_funcs,
-			   DRM_MODE_CONNECTOR_HDMIA);
+	intel_hdmi->ddc_bus = intel_hdmi_ddc_pin(dev_priv, port);
+	ddc = intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
+
+	drm_connector_init_with_ddc(dev, connector,
+				    &intel_hdmi_connector_funcs,
+				    DRM_MODE_CONNECTOR_HDMIA,
+				    ddc);
 	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
 
 	connector->interlace_allowed = 1;
@@ -3105,8 +3111,6 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
 	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		connector->ycbcr_420_allowed = true;
 
-	intel_hdmi->ddc_bus = intel_hdmi_ddc_pin(dev_priv, port);
-
 	if (WARN_ON(port == PORT_A))
 		return;
 	intel_encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
