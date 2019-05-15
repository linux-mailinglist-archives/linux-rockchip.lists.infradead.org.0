Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0471F9A6
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 19:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6KHoZm+Q4mfNJM7Pm0jWpdATqhEqWRdtnROIJ7P1Vc=; b=ccZKcs2FhD1EZb
	Dz+MeAGwQcgFkSEgBoUbGCU8d+TG/J8XhhuwASwF1Q0ec6Hg5xTb8ThUUbWl+a/xKKJjW/SJ6e8X1
	uUJcKEKduaMmy6QrfXkJGJhGvsL/GhWLgaTkVm7r7hN47LMwcBnRaR1y1owJvk/vMqwRkdzRqNw7R
	zZ+nnzXXmXg+LRy2PDHLFRS8E61uYpdPeLW4kXXtgcJyT7DA78FNlBC6Y1fU81B9GEBCt0i+YMAJ6
	1CfY4/XppC1L4RJRm887HMCQ2eM51MNYzOMK86xmmJWUMcxRUFsk8huW2oBR5d2bX1b+BFA1PuzmR
	AZZeRTKUSjeE8ZucGOcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyAi-00014U-6e; Wed, 15 May 2019 17:58:32 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyAf-00014A-K3
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 17:58:31 +0000
Received: by mail-qt1-x842.google.com with SMTP id m32so773778qtf.0
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 10:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T3r53rpcIIdNWUWUX1L2hWGIMIpNyc3n74ZjaoYk6ds=;
 b=eseIQ+3pKjwi0X7F8OvMJCGH+HwZS6LhXVbIONYoL/PKENiZd2gBx4UBYRuji8jiEz
 tD88w0+QZEhw7cKzTo63UlK+YINRL+VWCip+4N3tBcGJSycvR0Ev+BpmtCGXOEy2yn3q
 JoVdLsd/Wqhl6EcS55EdOIKpoybnyFmpMO9025SzEQrJE+87AypjP1QVb4fqnaJqnf44
 UxjWWas+DUpvhH2w59bKq25kU2Z5a2f5tLERhAySrspY7lXuUdOZ1HmI3cHdAiDuEc8S
 tcTdq4CwbibmjtyJVfzkkupk4W88fJj0J3yhJYwZy4Hv7kOednw2Y4NGqJ4aXF0mMHUf
 5yFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T3r53rpcIIdNWUWUX1L2hWGIMIpNyc3n74ZjaoYk6ds=;
 b=lInfp6XECHGo24wS5oCFWW46UaB49OoyDVchUB0rlrMs2haHaV9HLX/dFyop4WFgAa
 XwqNSNTQkMHAXAdaquX4uZBCHe6ML/GRRPZiZtzDnYuKPvYoAduFQNMlWgoMbpxgtDPh
 BsqkvYWFU6ck751WPotzTfhiH+gDqxiqDLKq40v1kMmHHfaWkMl5cFnlA3UAx5OD5iKl
 qEsbbpKTxispCzrleB7hMRDaesxu2B2NdqhiOWCJ5/EzcUGgZzsRs0+kvEzilX6jDjkI
 twmDFusz/rBDPdj15a/8VnO/5W8aVHyQmjenCXPBg/763A0L8o6hxemCgPQTL4wHw7Zh
 EwwQ==
X-Gm-Message-State: APjAAAUEfyN+YXkS7i7/z112ELn4rE44BL84S4yWG8FG3B3mNUdqCyX+
 U0Csn6jQAG3a7JbHZmqwu0axhQ==
X-Google-Smtp-Source: APXvYqxsReEgdKIvYRBuSR8ZyL1XCBJ4JluVaiQzwdUcL6yNsiM2bJ85D/CpKdFK7iN2V1E9k0sWTA==
X-Received: by 2002:a0c:d17b:: with SMTP id c56mr15467538qvh.61.1557943107807; 
 Wed, 15 May 2019 10:58:27 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id k89sm1491911qte.33.2019.05.15.10.58.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 10:58:26 -0700 (PDT)
Date: Wed, 15 May 2019 13:58:26 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/2] drm: bridge: dw-hdmi: Add hooks for suspend/resume
Message-ID: <20190515175826.GT17077@art_vandelay>
References: <20190502223808.185180-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502223808.185180-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_105829_721405_02884227 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, mka@chromium.org,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 03:38:07PM -0700, Douglas Anderson wrote:
> On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> cycle:
> 
> 1. You lose the ability to detect an HDMI device being plugged in.
> 
> 2. If you're using the i2c bus built in to dw_hdmi then it stops
> working.
> 
> Let's add a hook to the core dw-hdmi driver so that we can call it in
> dw_hdmi-rockchip in the next commit.
> 
> NOTE: the exact set of steps I've done here in resume come from
> looking at the normal dw_hdmi init sequence in upstream Linux plus the
> sequence that we did in downstream Chrome OS 3.14.  Testing show that
> it seems to work, but if an extra step is needed or something here is
> not needed we could improve it.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 21 +++++++++++++++++++++
>  include/drm/bridge/dw_hdmi.h              |  3 +++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index db761329a1e3..4b38bfd43e59 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -2780,6 +2780,27 @@ void dw_hdmi_unbind(struct dw_hdmi *hdmi)
>  }
>  EXPORT_SYMBOL_GPL(dw_hdmi_unbind);
>  
> +int dw_hdmi_suspend(struct dw_hdmi *hdmi)
> +{
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(dw_hdmi_suspend);
> +
> +int dw_hdmi_resume(struct dw_hdmi *hdmi)
> +{
> +	initialize_hdmi_ih_mutes(hdmi);
> +
> +	dw_hdmi_setup_i2c(hdmi);
> +	if (hdmi->i2c)
> +		dw_hdmi_i2c_init(hdmi);
> +
> +	if (hdmi->phy.ops->setup_hpd)
> +		hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(dw_hdmi_resume);

Both patches look good to me, I'd probably prefer to just smash them together,
but meh.

If no one more authoritative chimes in, I'll apply them to -misc in a few days.

Sean

> +
>  MODULE_AUTHOR("Sascha Hauer <s.hauer@pengutronix.de>");
>  MODULE_AUTHOR("Andy Yan <andy.yan@rock-chips.com>");
>  MODULE_AUTHOR("Yakir Yang <ykk@rock-chips.com>");
> diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
> index 66e70770cce5..c4132e9a5ae3 100644
> --- a/include/drm/bridge/dw_hdmi.h
> +++ b/include/drm/bridge/dw_hdmi.h
> @@ -154,6 +154,9 @@ struct dw_hdmi *dw_hdmi_bind(struct platform_device *pdev,
>  			     struct drm_encoder *encoder,
>  			     const struct dw_hdmi_plat_data *plat_data);
>  
> +int dw_hdmi_suspend(struct dw_hdmi *hdmi);
> +int dw_hdmi_resume(struct dw_hdmi *hdmi);
> +
>  void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
>  
>  void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
> -- 
> 2.21.0.1020.gf2820cf01a-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
