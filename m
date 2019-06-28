Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAF55A140
	for <lists+linux-rockchip@lfdr.de>; Fri, 28 Jun 2019 18:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kr/jfeY2fRuvn8+K/neXqlrfIVGtHF9AisSP8r+xIaY=; b=jeItBpmMG71buQ
	uAjYzUmDpOVQj7KrmsAmI3B8er5Dne5eIiDYepNSShNURVBcopXMWm7DDq+I+zGReXcOCNNWOnnBb
	PPthHPHOzG7E9FW0GfdWOlFqKzy9tPHndsHIqRd2GXq3gMxWoMy/Uv9HPibd3w9hm09WH1X6InaFl
	xoxJQBoRYTpJyaU572wUACefy7I/dNmTbE5zX1WLQ2VsteEe5SdMzNGoz6Mtb3UwW0AVoWsBtAn85
	g6Ehp7+aE0DCQm2TrqmHtERUFI4JV/iw9cYEumNdIwBWW4LHk09/oH4qMMr7EkPEvpr/1KGqsaHYX
	cr8o13OtifiK6Gjuwhdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgu06-000060-Qa; Fri, 28 Jun 2019 16:45:26 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgu01-0008WM-V8
 for linux-rockchip@lists.infradead.org; Fri, 28 Jun 2019 16:45:24 +0000
Received: by mail-ed1-x543.google.com with SMTP id a14so11519465edv.12
 for <linux-rockchip@lists.infradead.org>; Fri, 28 Jun 2019 09:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=uaEHXqEabLSIZfnXeMvp6TP0O0DHLjr6ks1EMWK6Rx4=;
 b=PgtN+lSSZimKVCTKcNl2E4gCzrebmYsDEqLpWNc7G05Gb8k9iGtUwyV4qqGXrzRcYU
 pivBM1zfoW3I4cPN13HiPIQo6P89pn3EaOsMP5rUrKejN5jRHwj7TnNvO2MWL+m+2Ktl
 49wIbYxlcerpMBWwF+MJ6ycD06BlRe9ebuKaQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=uaEHXqEabLSIZfnXeMvp6TP0O0DHLjr6ks1EMWK6Rx4=;
 b=FTzwKPj34GqoT3a5x/2RJyeW+vNpGPYFWfhCOnal5u9cMSp11SzwDkkbYjn9gju4gk
 eUgRuY8kQJGYdQkE52Oa2Yyt+tfoIw74FDdPuFRKVfPDzPBch8e0/NlPSx3Iqlq5SG0v
 7oAcVsgfcjwVW72VEn/MkxrApVt9zVCOP0R/Iq+/s+h38BaM7U0GgmiD9649KFUZnqJ7
 ntwqQTNao0rlPECjWH5B3EEWc9hE8dLHSxXFXKe4NWmcFswVnU3aS77Jt/1M/V8VA0aw
 6o52RTg7tep765sqqtrRU/qcxOkSeMf3So3BTkPakqt9X7Noip4AqtjPR9Z7g0cuVpXs
 lexg==
X-Gm-Message-State: APjAAAVPWTSr+XE6gJwpHN0c0bGhW1zNg+BKnJqdzFw8xwbr0ZeOI+RW
 KuScvcWGp+AygrOnIDz5+46Z/g==
X-Google-Smtp-Source: APXvYqymRlxVowSCat4hUP8uU0OkuhECbgikLYW2l8n04ei9+j5nhtubRATOAKevS4zJTUHKDdqRHw==
X-Received: by 2002:a17:906:5c4e:: with SMTP id
 c14mr6756654ejr.73.1561740319368; 
 Fri, 28 Jun 2019 09:45:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id a6sm791167eds.19.2019.06.28.09.45.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 09:45:18 -0700 (PDT)
Date: Fri, 28 Jun 2019 18:45:14 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v3 00/22] Associate ddc adapters with connectors
Message-ID: <20190628164514.GS12905@phenom.ffwll.local>
Mail-Followup-To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 dri-devel@lists.freedesktop.org, kernel@collabora.com,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "David (ChunMing) Zhou" <David1.Zhou@amd.com>,
 David Airlie <airlied@linux.ie>, Dave Airlie <airlied@redhat.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, Inki Dae <inki.dae@samsung.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Vincent Abriou <vincent.abriou@st.com>,
 Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jyri Sarha <jsarha@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Sam Ravnborg <sam@ravnborg.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Huang Rui <ray.huang@amd.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 "Y.C. Chen" <yc_chen@aspeedtech.com>,
 Douglas Anderson <dianders@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Allison Randal <allison@lohutok.net>,
 Todor Tomov <todor.tomov@linaro.org>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-tegra@vger.kernel.org
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_094522_001205_B7B68505 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-rockchip@lists.infradead.org, Vincent Abriou <vincent.abriou@st.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jyri Sarha <jsarha@ti.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
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
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 06:01:14PM +0200, Andrzej Pietrasiewicz wrote:
> It is difficult for a user to know which of the i2c adapters is for which
> drm connector. This series addresses this problem.
> 
> The idea is to have a symbolic link in connector's sysfs directory, e.g.:
> 
> ls -l /sys/class/drm/card0-HDMI-A-1/ddc
> lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
> 	-> ../../../../soc/13880000.i2c/i2c-2
> 
> The user then knows that their card0-HDMI-A-1 uses i2c-2 and can e.g. run
> ddcutil:
> 
> ddcutil -b 2 getvcp 0x10
> VCP code 0x10 (Brightness                    ): current value =    90, max value =   100
> 
> The first patch in the series adds struct i2c_adapter pointer to struct
> drm_connector. If the field is used by a particular driver, then an
> appropriate symbolic link is created by the generic code, which is also added
> by this patch.
> 
> The second patch is an example of how to convert a driver to this new scheme.
> 
> v1..v2:
> 
> - used fixed name "ddc" for the symbolic link in order to make it easy for
> userspace to find the i2c adapter
> 
> v2..v3:
> 
> - converted as many drivers as possible.
> 
> PATCHES 3/22-22/22 SHOULD BE CONSIDERED RFC!

There's a lot more drivers than this I think (i915 is absent as an
example, but there should be tons more). Why are those not possible?
-Daniel

> 
> Andrzej Pietrasiewicz (22):
>   drm: Include ddc adapter pointer in struct drm_connector
>   drm/exynos: Provide ddc symlink in connector's sysfs
>   drm: rockchip: Provide ddc symlink in rk3066_hdmi sysfs directory
>   drm: rockchip: Provide ddc symlink in inno_hdmi sysfs directory
>   drm/msm/hdmi: Provide ddc symlink in hdmi connector sysfs directory
>   drm/sun4i: hdmi: Provide ddc symlink in sun4i hdmi connector sysfs
>     directory
>   drm/mediatek: Provide ddc symlink in hdmi connector sysfs directory
>   drm/tegra: Provide ddc symlink in output connector sysfs directory
>   drm/imx: imx-ldb: Provide ddc symlink in connector's sysfs
>   drm/imx: imx-tve: Provide ddc symlink in connector's sysfs
>   drm/vc4: Provide ddc symlink in connector sysfs directory
>   drm: zte: Provide ddc symlink in hdmi connector sysfs directory
>   drm: zte: Provide ddc symlink in vga connector sysfs directory
>   drm/tilcdc: Provide ddc symlink in connector sysfs directory
>   drm: sti: Provide ddc symlink in hdmi connector sysfs directory
>   drm/mgag200: Provide ddc symlink in connector sysfs directory
>   drm/ast: Provide ddc symlink in connector sysfs directory
>   drm/bridge: dumb-vga-dac: Provide ddc symlink in connector sysfs
>     directory
>   drm/bridge: dw-hdmi: Provide ddc symlink in connector sysfs directory
>   drm/bridge: ti-tfp410: Provide ddc symlink in connector sysfs
>     directory
>   drm/amdgpu: Provide ddc symlink in connector sysfs directory
>   drm/radeon: Provide ddc symlink in connector sysfs directory
> 
>  .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    | 70 +++++++++++-----
>  drivers/gpu/drm/ast/ast_mode.c                |  1 +
>  drivers/gpu/drm/bridge/dumb-vga-dac.c         | 19 ++---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 40 ++++-----
>  drivers/gpu/drm/bridge/ti-tfp410.c            | 19 ++---
>  drivers/gpu/drm/drm_sysfs.c                   |  7 ++
>  drivers/gpu/drm/exynos/exynos_hdmi.c          | 11 ++-
>  drivers/gpu/drm/imx/imx-ldb.c                 | 13 ++-
>  drivers/gpu/drm/imx/imx-tve.c                 |  8 +-
>  drivers/gpu/drm/mediatek/mtk_hdmi.c           |  9 +-
>  drivers/gpu/drm/mgag200/mgag200_mode.c        |  1 +
>  drivers/gpu/drm/msm/hdmi/hdmi_connector.c     |  1 +
>  drivers/gpu/drm/radeon/radeon_connectors.c    | 82 ++++++++++++++-----
>  drivers/gpu/drm/rockchip/inno_hdmi.c          | 17 ++--
>  drivers/gpu/drm/rockchip/rk3066_hdmi.c        | 17 ++--
>  drivers/gpu/drm/sti/sti_hdmi.c                |  1 +
>  drivers/gpu/drm/sun4i/sun4i_hdmi.h            |  1 -
>  drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c        | 14 ++--
>  drivers/gpu/drm/tegra/drm.h                   |  1 -
>  drivers/gpu/drm/tegra/output.c                | 12 +--
>  drivers/gpu/drm/tegra/sor.c                   |  6 +-
>  drivers/gpu/drm/tilcdc/tilcdc_tfp410.c        |  1 +
>  drivers/gpu/drm/vc4/vc4_hdmi.c                | 16 ++--
>  drivers/gpu/drm/zte/zx_hdmi.c                 | 25 ++----
>  drivers/gpu/drm/zte/zx_vga.c                  | 25 ++----
>  include/drm/drm_connector.h                   | 11 +++
>  26 files changed, 252 insertions(+), 176 deletions(-)
> 
> -- 
> 2.17.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
