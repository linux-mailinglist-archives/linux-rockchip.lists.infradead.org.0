Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E243A110113
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Dec 2019 16:20:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmB0JhPn9XlxK0UKfM1cXHl8WE+AJ6bVAX93cWpgHP4=; b=dakSxA7mtFYxKH
	+d2+7F1mo8eA/s2UnVGaMa01nsG+kCy17Hp553MtLCwhHxVA/v4Ye0mkHQr2nFoaaRHJWygIfMmbl
	S0mPqh8L51fGKcDjz31yUAOu9p3yR7ijTC1qzzoQ3yozqXWoD0eGvkYntI/GFjQS7VGtwGVMG03cG
	J0n2qLPJ5YQBPPgb8+AGqCiPNLA7rH9Xcv90WtduEJ6HcwbOsghc10g4FGNGON63e+yNqgmJo2YGo
	lBwbnSm3oidzDXR6FJowzyccclPLmsHn6humUkvahQQJfHipABvjdTleOQcWViUCEltx6aZ/jK8fB
	m3KKtC9KQBiosv8VvA9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic9yu-0004kp-KL; Tue, 03 Dec 2019 15:20:52 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9yg-0004VU-IH
 for linux-rockchip@lists.infradead.org; Tue, 03 Dec 2019 15:20:40 +0000
Received: by mail-lj1-x243.google.com with SMTP id r19so4298290ljg.3
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Dec 2019 07:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m3zQ0bKSvISFi+1fBMi3jNVJYg+1MoT8ThtuF+2ovSQ=;
 b=AWHhNjjjjGYoZzrFZIUydXTE8P04GoVEj/nkxXov5Xl+m6KVTmezfYzIS189Xbp2d9
 AoBT8kGo9Ilce7YjmHJ3BR2nLuZhHz+3UDJ/UUeou1iPTqwGwNddK1xb8tuMlXbwtqUv
 IvCc9hkMqkDp2pZ1+fqZfUoFvFdi6r9t/BjcweQbftCQDIBBsX3LPi/p1NolQb2re4oG
 PcRRUdNQdc96SBz0HlnkEujZ0AHARIftTj2fcd6E527NVp6lJFODir0h6yiz4ltMi1q/
 ex1vgLswTSItO9QwCbjS0LEF/qs2+n2yDsn1fJAg1JwWMO95Ffh1DJlmg/hRr4/s9Iog
 mqEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m3zQ0bKSvISFi+1fBMi3jNVJYg+1MoT8ThtuF+2ovSQ=;
 b=ssJ6x1YPhsFyIoPwM9XL0buOH5A+Yrn5uhNoUu7BCickOux1Wci6jRSPpC1AGFvik2
 /xBS/v6bjXKoapAn3zq6RC2J6sQud0ozr8E+CQNRN1/GFg2X8s4x3iaaXFNzZ/CCk0J5
 KeQE8wiI08cedQFJln4sCNNAQ2uNvh+1ueMdu9fdGoQiJaiiiPbfCAikm0GcbqtAnYFV
 s0Dp5OOTWdFhVZcr9dOmDpj6Nns7QBmWOe5Nt/sTZ5kccz9mSsU+k9bF9fWI8lkfTpI8
 U19TfL2Cm0YDHo0fcjN//v13QVSoU0vsWHaj/mmKCcsTvqvb3+L5M53dEHi/X2f5981d
 NdGw==
X-Gm-Message-State: APjAAAXfz6NyfclllS2EMW5ez0V1c3nCGW3HJiZSpm0X93u5XfdB/7Tr
 o6zCM3qdQS+sQFaGWDJyogUYyWqebYpTuojmyO5m4Q==
X-Google-Smtp-Source: APXvYqzeswPvfb4bN8LEsJSRL/PyxST5l5bJCtG71jQQSWLOGmPl2rs5haGp6u2c8kSn123mUXgOro1vUhgVEbncNNQ=
X-Received: by 2002:a2e:9ec4:: with SMTP id h4mr2954959ljk.77.1575386436713;
 Tue, 03 Dec 2019 07:20:36 -0800 (PST)
MIME-Version: 1.0
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-8-sam@ravnborg.org>
 <20191203074659.ilsyv4yx7pzw5vax@gilmour.lan>
In-Reply-To: <20191203074659.ilsyv4yx7pzw5vax@gilmour.lan>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Dec 2019 16:20:24 +0100
Message-ID: <CACRpkdZrReQs08+bXS7s7eJ-K76nMGvRgQ-L-1-baunEtiF40g@mail.gmail.com>
Subject: Re: [PATCH v1 07/26] drm/panel: remove get_timings
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_072038_649175_DD93B6D6 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
 Sam Ravnborg <sam@ravnborg.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinavk@codeaurora.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Stefan Agner <stefan@agner.ch>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Purism Kernel Team <kernel@puri.sm>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Maxime,

On Tue, Dec 3, 2019 at 8:47 AM Maxime Ripard <mripard@kernel.org> wrote:

> Using only the mode as we do currently has a bunch of shortcomings as
> almost no encoder will be able to provide the typical pixel clock, and
> that situation leads to multiple things:
>
>   - If someone working on one encoder wants to upstream a panel they
>     have tested, chances are this will not be the typical pixel clock
>     / timings being used but rather the one that will match what that
>     SoC is capable of. Trouble comes when a second user comes in with
>     a different encoder and different capabilities, and then we have a
>     maintainance fight over which timing is the true timing (with a
>     significant chance that none of them are).
>
>   - If we can't match the pixel clock, we currently have no easy way
>     to make the usual measures of reducing / growing the porches and
>     blankings areas to match the pixel clock we can provide, since we
>     don't have an easy way to get the tolerance on those timings for a
>     given panel. There's some ad hoc solutions on some drivers (I
>     think vc4 has that?) to ignore the panel and just play around with
>     the timings, but I think this should be generalised.

I've been confused with these things as they look today and it seems
the whole struct drm_display_mode could need some improvement?

If .clock is supposed to be htotal * vtotal * vrefresh, what is the
.clock doing there anyway.

Sadly I am too inexperienced to realize where the tolerances should
be stated, but I guess just stating that hsync_start etc are typical,
then specify some tolerance for each would help a bit?

On the DSI displays in video mode there is also this EOL area
which seems to be where the logic is normally just idling for a
while, that can be adjusted on some hardware as well, but
I don't quite understand it admittedly. Sometimes I wonder if
anyone really understands DSI... :/

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
