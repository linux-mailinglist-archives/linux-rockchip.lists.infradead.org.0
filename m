Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677D25A02F
	for <lists+linux-rockchip@lfdr.de>; Fri, 28 Jun 2019 18:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6u/W56fl4FGXV7uVBcPxDkTvVXfc9cQxcKqPQuO+v04=; b=dc3DS/IPxA8qlBUNDHyW5Et0/L
	LbmJ3VSEUF98hize0d00bMpV4dXjNbg+c27FvP96LCf7BacpGaZWWXliAl6eKv+cyy0Eoc46U/lje
	69RLKdpEHxWkERbYZ5YOIusV3xJ5/5epm0o1FUS+a9RiuJ0GdlGJcShW8W1HSkT6kPPDTV/F1ALfa
	8AeNcWDBRKVqwSmebueka0N5lQZaou7qL460baQrca1OdQUHt5kodk3XWAxTs4C+shqo9rR6brbPc
	g4CVptj+lPH8gMzsTvp47R43Bsw8WAUiFItJFPkaW3Lb+Y+xsH/5yQmdAUahVCsoele5KLybppK+7
	1oMKGHNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtMO-0007Cf-3z; Fri, 28 Jun 2019 16:04:24 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtMH-0007AX-MH; Fri, 28 Jun 2019 16:04:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 8292D260A37
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 00/22] Associate ddc adapters with connectors
Date: Fri, 28 Jun 2019 18:01:14 +0200
Message-Id: <cover.1561735433.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_090417_996329_09A5FC35 
X-CRM114-Status: GOOD (  14.22  )
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-rockchip@lists.infradead.org, Vincent Abriou <vincent.abriou@st.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jyri Sarha <jsarha@ti.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

It is difficult for a user to know which of the i2c adapters is for which
drm connector. This series addresses this problem.

The idea is to have a symbolic link in connector's sysfs directory, e.g.:

ls -l /sys/class/drm/card0-HDMI-A-1/ddc
lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
	-> ../../../../soc/13880000.i2c/i2c-2

The user then knows that their card0-HDMI-A-1 uses i2c-2 and can e.g. run
ddcutil:

ddcutil -b 2 getvcp 0x10
VCP code 0x10 (Brightness                    ): current value =    90, max value =   100

The first patch in the series adds struct i2c_adapter pointer to struct
drm_connector. If the field is used by a particular driver, then an
appropriate symbolic link is created by the generic code, which is also added
by this patch.

The second patch is an example of how to convert a driver to this new scheme.

v1..v2:

- used fixed name "ddc" for the symbolic link in order to make it easy for
userspace to find the i2c adapter

v2..v3:

- converted as many drivers as possible.

PATCHES 3/22-22/22 SHOULD BE CONSIDERED RFC!

Andrzej Pietrasiewicz (22):
  drm: Include ddc adapter pointer in struct drm_connector
  drm/exynos: Provide ddc symlink in connector's sysfs
  drm: rockchip: Provide ddc symlink in rk3066_hdmi sysfs directory
  drm: rockchip: Provide ddc symlink in inno_hdmi sysfs directory
  drm/msm/hdmi: Provide ddc symlink in hdmi connector sysfs directory
  drm/sun4i: hdmi: Provide ddc symlink in sun4i hdmi connector sysfs
    directory
  drm/mediatek: Provide ddc symlink in hdmi connector sysfs directory
  drm/tegra: Provide ddc symlink in output connector sysfs directory
  drm/imx: imx-ldb: Provide ddc symlink in connector's sysfs
  drm/imx: imx-tve: Provide ddc symlink in connector's sysfs
  drm/vc4: Provide ddc symlink in connector sysfs directory
  drm: zte: Provide ddc symlink in hdmi connector sysfs directory
  drm: zte: Provide ddc symlink in vga connector sysfs directory
  drm/tilcdc: Provide ddc symlink in connector sysfs directory
  drm: sti: Provide ddc symlink in hdmi connector sysfs directory
  drm/mgag200: Provide ddc symlink in connector sysfs directory
  drm/ast: Provide ddc symlink in connector sysfs directory
  drm/bridge: dumb-vga-dac: Provide ddc symlink in connector sysfs
    directory
  drm/bridge: dw-hdmi: Provide ddc symlink in connector sysfs directory
  drm/bridge: ti-tfp410: Provide ddc symlink in connector sysfs
    directory
  drm/amdgpu: Provide ddc symlink in connector sysfs directory
  drm/radeon: Provide ddc symlink in connector sysfs directory

 .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    | 70 +++++++++++-----
 drivers/gpu/drm/ast/ast_mode.c                |  1 +
 drivers/gpu/drm/bridge/dumb-vga-dac.c         | 19 ++---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 40 ++++-----
 drivers/gpu/drm/bridge/ti-tfp410.c            | 19 ++---
 drivers/gpu/drm/drm_sysfs.c                   |  7 ++
 drivers/gpu/drm/exynos/exynos_hdmi.c          | 11 ++-
 drivers/gpu/drm/imx/imx-ldb.c                 | 13 ++-
 drivers/gpu/drm/imx/imx-tve.c                 |  8 +-
 drivers/gpu/drm/mediatek/mtk_hdmi.c           |  9 +-
 drivers/gpu/drm/mgag200/mgag200_mode.c        |  1 +
 drivers/gpu/drm/msm/hdmi/hdmi_connector.c     |  1 +
 drivers/gpu/drm/radeon/radeon_connectors.c    | 82 ++++++++++++++-----
 drivers/gpu/drm/rockchip/inno_hdmi.c          | 17 ++--
 drivers/gpu/drm/rockchip/rk3066_hdmi.c        | 17 ++--
 drivers/gpu/drm/sti/sti_hdmi.c                |  1 +
 drivers/gpu/drm/sun4i/sun4i_hdmi.h            |  1 -
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c        | 14 ++--
 drivers/gpu/drm/tegra/drm.h                   |  1 -
 drivers/gpu/drm/tegra/output.c                | 12 +--
 drivers/gpu/drm/tegra/sor.c                   |  6 +-
 drivers/gpu/drm/tilcdc/tilcdc_tfp410.c        |  1 +
 drivers/gpu/drm/vc4/vc4_hdmi.c                | 16 ++--
 drivers/gpu/drm/zte/zx_hdmi.c                 | 25 ++----
 drivers/gpu/drm/zte/zx_vga.c                  | 25 ++----
 include/drm/drm_connector.h                   | 11 +++
 26 files changed, 252 insertions(+), 176 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
