Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24BBF1A99
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 Nov 2019 16:59:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyV6Dk/J0iqlDzmdzLydhKvGCMMnL9vIdbwF3Ib3Gik=; b=D5YC7lweBJRMDh
	tttHzHHIwR5IvEEh0n8XGIsW50OEv1GBH8kFV/vHsMuEf1087RPMhuXuBTsGjI5hdQC+LIXWXoga0
	Ukd94FFWJtQBXHiwxbh827myHVhFBv/ccAElGzv/R6of/DgalikXHJOVLPC0HyKks3ga9gPpRDlVi
	U3bgeQmmU2g1G70ZZW+jw8EQ7z05WE5CkSI5hlioNwMcvparZixs5N16+pfgxvt0Lv1aEL4abE7ZG
	hzZLQGCHST4AwRFHrMkbJTMeC4Ih3Vbhfm/NMTnk+VOlS6/ag3S6vycfTAtqhMZ+8bfwiSlT2eWRP
	CW18/aHUjgcJ7n3wG6pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNi8-0007Uo-2m; Wed, 06 Nov 2019 15:59:08 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNi4-0007Rj-0i
 for linux-rockchip@lists.infradead.org; Wed, 06 Nov 2019 15:59:05 +0000
Received: by mail-il1-x144.google.com with SMTP id i6so3614100ilr.11
 for <linux-rockchip@lists.infradead.org>; Wed, 06 Nov 2019 07:59:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eTmvNusWN2c5MG6/BAIqeUf6hIHOhMcF2KJYDtbtvt8=;
 b=ccpy+gS6IGTTaTTSYtiJSpGEcbiv5wNleb628bgUAiGfYG8qovcbis91IrjxFSiyph
 3HfZZ8GEZqfFDt+kARDudOi3bo/7aW5DX4U8dH7bmhH4S/eOuaKOUrpahD82A4roSaH4
 4Pun2YIuRJIp54fpdSGnX2nYGvSWTZEm3inBN/1Y6y0NIlKCePzb4aQJX28WK/S6qIWG
 BRP0UWMYmC09tCUEXIt5L+5zb7GH36OBmpYYHGpmQl7imB48wFOElu0AlSBGt7dZxZM2
 V8oXCdqUbqkoa4VEY33b9E3erwZvhwW5kdZkadudfGVr4QJqNqKkA1333pCAgqQR6nT3
 /I6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eTmvNusWN2c5MG6/BAIqeUf6hIHOhMcF2KJYDtbtvt8=;
 b=DbBBhI6V6haaTlZq4RDF9v1+r84ft5M6fXSnrqJEJ2Xi1rLCHj9M2ysTOml3P9V4CM
 7XbhAQ7AqW9lnniCyYKUflqY2EMTtd5szAj3GKEyj5K+i5zqTf2/9VvujJsjZ8OjUSra
 80hivsuHecqY3cNAd4H7zl6vHA5YrOkbXEtXFFkXloYShd+f/O8ym+/IL8M7yN353UBg
 9k0U6sdBWuTBuGy8JHoy+emVGR5YmC3mTi4hyIq7frd8wXrwzZl5hvaW84Nu5DHW6llB
 6X7ibF33phvvbLWPgPs7QDGxKKXYba1H4yIGkdRwBAS8hglScDCKNrOvGKd2e45cdKNm
 xt8w==
X-Gm-Message-State: APjAAAVvwmB5g3gfyw5S8Lmm73kshFXG0v7zLFo80YoN1galicntdBYs
 8cMQrfx0QYY2+HwD4FELfDLKQW7owqKxhz4C+LcGQQ==
X-Google-Smtp-Source: APXvYqyHPDXVunridE8njdx3JYwMYmzHl/72SZR5GTwewyAfNZD7ZXTP+VI3OOz5z37EYlrRoJTSjm4/xhly3AA6geo=
X-Received: by 2002:a92:4596:: with SMTP id z22mr3427340ilj.75.1573055942733; 
 Wed, 06 Nov 2019 07:59:02 -0800 (PST)
MIME-Version: 1.0
References: <cover.1566845537.git.andrzej.p@collabora.com>
 <1e343b02195757bfbf60ca8999cadeb376db204e.1566845537.git.andrzej.p@collabora.com>
In-Reply-To: <1e343b02195757bfbf60ca8999cadeb376db204e.1566845537.git.andrzej.p@collabora.com>
From: Sean Paul <sean@poorly.run>
Date: Wed, 6 Nov 2019 10:58:26 -0500
Message-ID: <CAMavQKJhC==nDFFqCXK-J-VLdDkZHUCoSLe6KgALLSYR7kFDfw@mail.gmail.com>
Subject: Re: [PATCH RESEND 07/14] drm/msm/hdmi: Provide ddc symlink in hdmi
 connector sysfs directory
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_075904_105661_35A0F2D5 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Anthony Koo <Anthony.Koo@amd.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Mario Kleiner <mario.kleiner.de@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, David Francis <David.Francis@amd.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, CK Hu <ck.hu@mediatek.com>,
 Harry Wentland <harry.wentland@amd.com>, Uma Shankar <uma.shankar@intel.com>,
 Shashank Sharma <shashank.sharma@intel.com>,
 freedreno <freedreno@lists.freedesktop.org>, linux-tegra@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 Leo Li <sunpeng.li@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Jyri Sarha <jsarha@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 Allison Randal <allison@lohutok.net>, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 3:27 PM Andrzej Pietrasiewicz
<andrzej.p@collabora.com> wrote:
>
> Use the ddc pointer provided by the generic connector.
>
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

Acked-by: Sean Paul <sean@poorly.run>

> ---
>  drivers/gpu/drm/msm/hdmi/hdmi_connector.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_connector.c b/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
> index 07b4cb877d82..1f03262b8a52 100644
> --- a/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
> +++ b/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
> @@ -450,8 +450,10 @@ struct drm_connector *msm_hdmi_connector_init(struct hdmi *hdmi)
>
>         connector = &hdmi_connector->base;
>
> -       drm_connector_init(hdmi->dev, connector, &hdmi_connector_funcs,
> -                       DRM_MODE_CONNECTOR_HDMIA);
> +       drm_connector_init_with_ddc(hdmi->dev, connector,
> +                                   &hdmi_connector_funcs,
> +                                   DRM_MODE_CONNECTOR_HDMIA,
> +                                   hdmi->i2c);
>         drm_connector_helper_add(connector, &msm_hdmi_connector_helper_funcs);
>
>         connector->polled = DRM_CONNECTOR_POLL_CONNECT |
> --
> 2.17.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
