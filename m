Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 968D010FEA7
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Dec 2019 14:23:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1sdKfsDiY3Jf5jd0mi4dz9BjoCX/+4O+eixi3ILfzI=; b=mUKzsKx3gSwZhX
	dA62oG9HKbnufxiOS/nlKNA3Pb75rDM4Ub+GR0jYYP0GJCLLwm4+u08hYgO59nZYXTV1xoFtDF5k+
	Kn7Il6HwkK5R6yTTqt8UMSB3argZp8/ffxeHcavfEAjjR1ViMVhy3FUE+Bk55hR7meCH1NpDbkmyE
	prO4izSQSl+BBzt0+CEhy9YwBgkHGI6/cOhJiIgJregYLpuYLLZc2j3ulawPEUoo8kFQHwdH89fFw
	T3bVCgH2TTmt2kYkJ1KMOHEofrCG2VOFt3AGEdyL9qHC486A4KMKz6dMNmnROUf5G1en+qc5TwuIV
	ifzMPreIqrNscP43bNpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic892-0006gc-VX; Tue, 03 Dec 2019 13:23:12 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic88u-0006cx-Cu
 for linux-rockchip@lists.infradead.org; Tue, 03 Dec 2019 13:23:08 +0000
Received: by mail-lf1-x144.google.com with SMTP id f16so2958804lfm.3
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Dec 2019 05:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lefF5BM/gcR+So8Ygs7RCzWIIBhGl0bonM5D7lIAz2M=;
 b=ZwcHFup3L1FGPGk2xtvdRZFPmqpjl+1VvQLCjzq0rimrVIVqaG32x7PCDfBwRBdhIo
 wfFVMCzt/nwBpmmu726MfJIBszKsNjFvMWKcURMFeYoJFnyFPvGbWfNUAkjmA0arprAH
 xxbwDWIJo9nDwD2K3RFDnub+OayDe800qVEItuex48rNok6smlLWT62Pp3P8wxG/YbWQ
 q5dde7mJTd61eoUyIeQ0PMpdo8DxM6TZOnmuYEYlu4eIbFMQ/aYRNjWF4Qj24lP7V1JO
 X4rGteLiKCtTpowk5xUuEB1HkwUeJ5Mr5SgOtJornUUaf2Dz/nR/O6sc39dTBk+hVW6X
 1kmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lefF5BM/gcR+So8Ygs7RCzWIIBhGl0bonM5D7lIAz2M=;
 b=azIp1UT9kDhzxJrlEqebJT4mfsjIDtmApv3d3uVghLsxLl5cS2cJ1ollPh2TAGvKt6
 lDqAbC7zyyfuI7TKKH3qRb4AZSet42RJMjNg3D26qnGfuGW5eYhzfHuU/fWiPh3/2wks
 aDK5oy+LYATqAugMXC92NTeYSEuUxpUsRm3vrJlLFvWHAPnmSkIPFR87IBr6TRoVzANj
 a+D9SN04mqlmp7dzveleSzpOE6LgI8t/JTWY8m5mVlO+BPzGdUgjZPoCWYYe0aS0x3mo
 bObY45Bog5P0Q0R+6qwfDKxNBGA7tjJdxm4JKn+sNW2W2bvc4/wLgA9xHJYBTlU9Li1w
 yzEw==
X-Gm-Message-State: APjAAAXtPELQ4Y+e+dUtP573W2dP9VAzmBKk1Ag+1ZvGg189dyxss8ou
 9JPf9o+fGsufyzRyE5Piw0j+sTcp10O5uyrXwC4pkQ==
X-Google-Smtp-Source: APXvYqx22ebZnmuYdNzG9TrFSZg4isgk95/zsKEGLemAt431mQBCED4F4+fJ5lhPiKhrPXI40LsyMbi9cYOMTmUUeRQ=
X-Received: by 2002:ac2:5083:: with SMTP id f3mr1970416lfm.135.1575379381560; 
 Tue, 03 Dec 2019 05:23:01 -0800 (PST)
MIME-Version: 1.0
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-5-sam@ravnborg.org>
In-Reply-To: <20191202193230.21310-5-sam@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Dec 2019 14:22:50 +0100
Message-ID: <CACRpkdYT8u2Liq60xtTWeLc2q-R16XWtE1YstGp2WTgM2Cc6CA@mail.gmail.com>
Subject: Re: [PATCH v1 04/26] drm: get drm_bridge_panel connector via helper
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_052304_454048_833BDFE7 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Stefan Agner <stefan@agner.ch>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Purism Kernel Team <kernel@puri.sm>,
 Eric Anholt <eric@anholt.net>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Dec 2, 2019 at 8:33 PM Sam Ravnborg <sam@ravnborg.org> wrote:

> The drm_connector created by drm_panel_bridge was accessed
> via drm_panel.connector.
> Avoid the detour around drm_panel by providing a simple get method.
> This avoids direct access to the connector field in drm_panel in
> the two users.
>
> Update pl111 and tve200 to use the new helper.
>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Andrzej Hajda <a.hajda@samsung.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Jernej Skrabec <jernej.skrabec@siol.net>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>

With the little issues found by Laurent fixed:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
