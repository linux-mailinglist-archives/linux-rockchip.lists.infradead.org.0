Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CCE1F411A
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 18:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qxXgxsQZ6En0If75XO+eqR5AXWwwbkmn18YSxNZU8s=; b=q33A5NdiY1N7PV
	x+XLkKORRUA+M+izj/Z4LqGJPNTvwodcu/lYa2ox2xDB7WCLUT4hSbw4qXiam3s9QQ5gK0anWa0tP
	W9CGfNiFP6LF5BH3u6aNeOr82jJTQ3YygTImr8Wc2lRcs5G3o6wMcwcLEivGbRuirT/UxyaHgM/tK
	oNRyQSV0/O1oKh0m4g8fmZEMqvtSY9MQr/xmynM1juFBrxTjktTF/fgo/SNSHhQT13WouL/e21lNA
	IwA2vGhAp6HtapEYsqSi7CQJFL1rYai2Na6U1ScJJqO0+u3t2wVfRzQGz1eVJLdpshZaBO8e5StaS
	dfokU9e2tdaiv33hTEIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jihHb-0002Hq-4t; Tue, 09 Jun 2020 16:39:27 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jihHU-0002GF-GY
 for linux-rockchip@lists.infradead.org; Tue, 09 Jun 2020 16:39:24 +0000
Received: by mail-ot1-x343.google.com with SMTP id n6so7784294otl.0
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jun 2020 09:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v7mrV9A8x5gROdoWHb4mBMuLQK66GuFHbbDU9aAaIY4=;
 b=UxlslCOp5lHCML8zHfSxii0/aaaTdlNzCPYYCv2xzb4wWEZtWsF+k5/n8Osgdx0hJy
 BfJRocyU0Eo8PTSI7zAl6DbWAZBVkW4kXvOXpX/QENIqRqsf2TPNP9lYxPtdLLVWVtAE
 ZrBxyXn9wMMr4aKFJuJRt1jw1DUCO9QEpG8AY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v7mrV9A8x5gROdoWHb4mBMuLQK66GuFHbbDU9aAaIY4=;
 b=ZcFFnHC2DqHbNPF5QzxVpYruSByZNZSuhBlYfhvoFctN0hAruKdFOYaK3/NawIJsh7
 RsbcpMhzJQvRdWgAU1XtUUXjLW/5pEPQyVxxpigyzki7haaBZyzIIFD/gqx9h9NixzXl
 P2h4os1I4YbGKeyKVWlHkVpGAUafnNQVu9sPOagpb6jjn9fxuY103gE8fXNN7RoDNXIx
 Ve0iZyAKxfmwr5pZWbT0hTL/OPX6xtvRCxRmFYRoQcFKRWaXFUf3dI7up2UALSveNhCy
 iJ/02XO8xrpaGVcQxPTEUjww5zqLYan2BzZ7rfLpbQMnU6e01HAtPqke7j4HpWD4NnTX
 7GLg==
X-Gm-Message-State: AOAM531osvB5EYRAM2yq+YzxTNEMFoVudmfdgRx9aageNEfgfU0K2HmH
 DFsFl7bwEQWQrtPeFRmTB2sXI938w47KxUhnMBh+DEuR
X-Google-Smtp-Source: ABdhPJyzEiiGK0RgxvAB9nvhNz9jMbudR88GwxzWaWaK//yF7MA0SnaEkI/Owvhift8/7RXSbhpKtNM5VXKxf/ldzwA=
X-Received: by 2002:a9d:768a:: with SMTP id j10mr23941760otl.188.1591720759321; 
 Tue, 09 Jun 2020 09:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200609162700.953260-1-adrian.ratiu@collabora.com>
 <20200609162700.953260-12-adrian.ratiu@collabora.com>
In-Reply-To: <20200609162700.953260-12-adrian.ratiu@collabora.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 9 Jun 2020 18:39:08 +0200
Message-ID: <CAKMK7uGLQCj_oJcbXynt_1bmwBQy6ncUgc49DPejyfCtb68e_g@mail.gmail.com>
Subject: Re: [PATCH v9 11/11] Documentation: gpu: todo: Add dw-mipi-dsi
 consolidation plan
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_093922_339258_32A036CA 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Andrzej Hajda <a.hajda@samsung.com>, Jonas Karlman <jonas@kwiboo.se>,
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Sam Ravnborg <sam@ravnborg.org>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 9, 2020 at 6:25 PM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> This documents the longer-term plan to cleanup the dw-mipi-dsi bridge
> based drivers after the regmap refactor and i.MX6 driver have landed.
>
> The goal is to get the entire bridge logic in one place and continue
> the refactorings under the drm/bridge tree.
>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Boris Brezillon <boris.brezillon@collabora.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>

This cc's the world, but not dri-devel. Can you pls resubmit with that added?

Thanks, Daniel

> ---
>  Documentation/gpu/todo.rst | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
> index 658b52f7ffc6c..2b142980a4b16 100644
> --- a/Documentation/gpu/todo.rst
> +++ b/Documentation/gpu/todo.rst
> @@ -548,6 +548,31 @@ See drivers/gpu/drm/amd/display/TODO for tasks.
>
>  Contact: Harry Wentland, Alex Deucher
>
> +Reorganize dw-mipi-dsi bridge-based host-controller drivers
> +-----------------------------------------------------------
> +
> +The Synopsys DW MIPI DSI bridge is used by a number of SoC platform drivers
> +(STM, Rockchip, i.MX) which don't cleanly encapsulate their bridge logic which
> +gets split between the Synopsys bridge (drm/bridge/synopsys/dw-mipi-dsi.c) and
> +platform drivers like drm/imx/dw_mipi_dsi-imx6.c by passing around the bridge
> +configuration regmap, creating new bridges / daisy chaining in platform drivers,
> +duplicating encoder creation, having too much encoder logic instead of using the
> +simple encoder interface and so on.
> +
> +The goal of this rework is to make the dw-mipi-dsi driver a better encapsulated
> +bridge by moving all bridge-related logic under drm/bridge, including the SoC
> +bindings which chain to the core Synopsys code under drm/bridge/dw-mipi-dsi/
> +from which they can be further consolidated and cleaned up.
> +
> +If this goal proves to be impossible then drm_bridge might not be the correct
> +abstraction for these host controllers and unifying their logic into a helper
> +library encapsulating a drm_encoder might be more desirable, in other words to
> +move away from drm_bridge entirely.
> +
> +Contact: Adrian Ratiu, Daniel Vetter, Laurent Pinchart
> +
> +Level: Intermediate
> +
>  Bootsplash
>  ==========
>
> --
> 2.27.0
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
