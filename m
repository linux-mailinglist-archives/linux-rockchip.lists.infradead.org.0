Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DE5379E3
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Jun 2019 18:42:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ahy9Zp5LARkTGyel02+Jv93EAWKQc4CedmYpzmCVp8=; b=RFa1Wnn/F3t3zo
	voI0sjFWgXejv5y/JB4OuRc0KqdE5VdUzZOp1VQRMseavdZljjdPBUCCJjNOt87UpXU2LYC9NRwyt
	TD+Q4TvhwNJtjnxy6/gMBlkMFQSFmgb3gSbBoASk2GCRRU1oEYbSrh9/CrJjfQJwekozqWstujatb
	pHLRgDr2ZNxTa28a6r8k00V6+dNiJIPPvnI4sIfaJSLddZheMtQSUpDK0+iu4FniuH3FN6wZV852n
	8UITremMGV6+KCedIl6T4mz9HMmh/kglcaLtBvEoHUfCZaY1a4FPvydWAlb03Li08LhMXL4EPHO7H
	G5fg2GNAxA4NDYXFn0/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvTF-000691-9r; Thu, 06 Jun 2019 16:42:33 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvT6-00062H-Bu
 for linux-rockchip@lists.infradead.org; Thu, 06 Jun 2019 16:42:25 +0000
Received: by mail-qk1-x741.google.com with SMTP id l128so1889821qke.2
 for <linux-rockchip@lists.infradead.org>; Thu, 06 Jun 2019 09:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5QPjMBZ7QhHbHLNmjjqsDaYi7y/cyLKjCBZGOMHoSEM=;
 b=PmHXHYVp6HOkCqaTqZemv5nyGH4FlSL0ZuPiDcmSv5FFWeztRTukCpz/zF5umFyIF7
 4je6OpUcXwr9MhnH+dUacPzDzOiGFu/lP3laPt023f0oct1OV/EEyTcH5GhBWHvXLFxK
 vKCUR+DAFolYNwYYr/Cge6hSW3ditkcGKysmai/+ch0RqByKpmJe9Cd5GkK65gU0U4Pp
 LrEWbGJLa6vvzJ/p/5edCgDWYufEVxSjT2bXgvsP6sQBbQYYKpC8A3kBe8Zk3kv2HE90
 UmGUMJbUF1qisGKUvh0WZTCZVRDcV7TyoVZnpbUtquwGTLSsgYt5qbp62PSAp2I1wRBL
 9nxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5QPjMBZ7QhHbHLNmjjqsDaYi7y/cyLKjCBZGOMHoSEM=;
 b=ae9YN/Fmr+w9TTs0AB+trdOJ6wU2h3F2rfQMTF0YyJe7ADYfJ76EBenakVfBzKYEuw
 9XE2cMFsD3wXFFdhIVAutioLafhsVwhtBYTDjoaiyd+iZtppThc3+hH+sWZcHMWMDPHv
 TX30zGiTQ2GgUhrU/ATl8vxu7kwmWS/2iHiJmvw2bf0RtRGm8rdWRVaQC2sVl6Wd1TeD
 T4FW600wwKpGXbS1xDGOuAiDmQnQmLzlEzTXgxZJiVxpxBBf6N+h729XyPXQ25OCXctN
 FhcWSLNfQyb1PPRqrRgf/Gc8U1dHlLr0G1ktxIE6KNH8uFnHaxIX+FZ9+Y7ccmE2x3qP
 0wEA==
X-Gm-Message-State: APjAAAWcOMdW/b75cWcO6yvJ6TDoF1Od6xPhGbyri1hXmbP0ojE67ALj
 Ap6QD8q5Avu0aujxuh9y2ilPkg==
X-Google-Smtp-Source: APXvYqwDhHGG37UbtEUsjlslSQxaipRrUqUsFH2C+nCiwkgDH0iYGuNgjedUKpFCxqL2WIrawISaTQ==
X-Received: by 2002:a37:7a47:: with SMTP id v68mr25644536qkc.56.1559839342745; 
 Thu, 06 Jun 2019 09:42:22 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id d123sm1224349qkb.94.2019.06.06.09.42.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 09:42:22 -0700 (PDT)
Date: Thu, 6 Jun 2019 12:42:21 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Message-ID: <20190606164221.GI17077@art_vandelay>
References: <20190604204207.168085-1-dianders@chromium.org>
 <20190604204207.168085-2-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604204207.168085-2-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_094224_404119_ED590904 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
 mka@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 01:42:07PM -0700, Douglas Anderson wrote:
> On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> cycle:
> 
> 1. You lose the ability to detect an HDMI device being plugged in.
> 
> 2. If you're using the i2c bus built in to dw_hdmi then it stops
> working.
> 
> Let's call the core dw-hdmi's suspend/resume functions to restore
> things.
> 
> NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
> "late/early" versions of suspend/resume because we found that the VOP
> was sometimes resuming before dw_hdmi and then calling into us before
> we were fully resumed.  For now I have gone back to the normal
> suspend/resume because I can't reproduce the problems.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
> Changes in v3:
> - dw_hdmi_resume() is now a void function (Laurent)
> 
> Changes in v2:
> - Add forgotten static (Laurent)
> - No empty stub for suspend (Laurent)
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index 4cdc9f86c2e5..7bb0f922b303 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -542,11 +542,25 @@ static int dw_hdmi_rockchip_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
> +{
> +	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	dw_hdmi_resume(hdmi->hdmi);

The rockchip driver is already using the atomic suspend/resume helpers (via the
modeset helpers). Would you be able to accomplish the same thing by just moving
this call into the encoder enable callback? 

.enable is called on resume via the atomic commit framework, so everything is
ordered properly. Of course, this would reset the dw_hdmi bridge on each enable,
but I don't think that would be a problem?

Sean

> +
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops dw_hdmi_rockchip_pm = {
> +	SET_SYSTEM_SLEEP_PM_OPS(NULL, dw_hdmi_rockchip_resume)
> +};
> +
>  struct platform_driver dw_hdmi_rockchip_pltfm_driver = {
>  	.probe  = dw_hdmi_rockchip_probe,
>  	.remove = dw_hdmi_rockchip_remove,
>  	.driver = {
>  		.name = "dwhdmi-rockchip",
> +		.pm = &dw_hdmi_rockchip_pm,
>  		.of_match_table = dw_hdmi_rockchip_dt_ids,
>  	},
>  };
> -- 
> 2.22.0.rc1.311.g5d7573a151-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
