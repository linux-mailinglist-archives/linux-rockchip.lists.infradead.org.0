Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 797301040E8
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 Nov 2019 17:36:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RptQZmpxCdmilx+VOhVPxMavIpiDWfHmt2iOdrM+dgU=; b=QBn5nmj3CJoY/N
	lT7W0sZ3T5dRdCoeE8qdB1XTE754uf1GdbLTeSt7+J460zxod55KYcxbvh7Gt6Iz+ALztITqNa6tC
	siBPN4Ol6cGiTHUUbbYF7oI4KE4oJK4l+AMCjjryysjQETktFwjnS2KezgDg6G4Rw5xKw51X+5Mk6
	V2WzbpgYVQJIBS82r3hUOUg/mlbRBSrXpV6PsrfwRoEJow/lZQ/Tnu3jYQYqGg4O+8O+gJ3sZ7HhO
	kdKQ9tVmMI1SfFB0hTuPantAsFtmqZ/YRgc3Z1lTjv0rQ/PsvrkPlxGHaOpQGB68LjPnwKt+neXVO
	qlk8Xf0HBWEuIfmaaivQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSyJ-0007uL-L0; Wed, 20 Nov 2019 16:36:51 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSyG-0007tL-FL
 for linux-rockchip@lists.infradead.org; Wed, 20 Nov 2019 16:36:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id y5so286379wmi.5
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Nov 2019 08:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tesw3sq2dFVfQE6pmhyrzRi4mLidJzG8GCQ0JteIIRE=;
 b=F7HHpENW/MM6F+QovxPoI6sD3Q9wtMmI6R6dM0bwlSguWpp1dqIM349WqcCRZu+Ce/
 xR2k/uEyP92duYLa1gM6Nay/ZhmL1TIAV4PFaefUAcdv3x2XPhuzYyCaphD0yChAMbfG
 vx5JWEzsgxHGZFMh86C1dpXAPEIMGmgSSS52g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=tesw3sq2dFVfQE6pmhyrzRi4mLidJzG8GCQ0JteIIRE=;
 b=k1nIsC/UmFUGz25ZaH8BzWs2usUM3kAaW198dskfkuIk37Ic0ipyMBjmra+y6eKxKm
 UBuCBlOCCMj//ZF7FiDcPewSaI8hn4X8dCaz1I3lkenhOK41UFWM8NAaakNRoqIkHm3z
 Tj9BX5BdOnAydTByntF73ip7dY27zlwceaJnkfvjpG8s/OWzjvrPAH18htjBOMYNlA67
 4ABE5XPuZXZYrYzFaR+OAbZhWIXCNeK+GcHdRFLHydY8FYPXHyFlbODSRHU2hsKrD8i8
 Oo8AcWhYILF1t0OdN1xzquR62GJiF5sB4/5a7VxCOF/feWc+TIc4Tg8XPJPIq8FKWzJ2
 GQvA==
X-Gm-Message-State: APjAAAWhVu4V8dDhbnxMTk9j5IcwWDHeH2DZcbkp/XlVLF0d+FowApxD
 N0qn6bG0P6P43qJnwjqbXTay2g==
X-Google-Smtp-Source: APXvYqwrPubNXX8yGAPcnC9X0GNh3U53hk3U8rLobGyGtHY/2ZK1eXIvpY5fLmaxi+5jpeb51T2FsA==
X-Received: by 2002:a7b:cf05:: with SMTP id l5mr4550515wmg.44.1574267806819;
 Wed, 20 Nov 2019 08:36:46 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id g5sm7278951wma.43.2019.11.20.08.36.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 08:36:46 -0800 (PST)
Date: Wed, 20 Nov 2019 17:36:44 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] drm/rockchip: Fix Kconfig indentation
Message-ID: <20191120163644.GN30416@phenom.ffwll.local>
Mail-Followup-To: Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20191120133348.6640-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120133348.6640-1-krzk@kernel.org>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_083648_517225_F3314FA1 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 09:33:48PM +0800, Krzysztof Kozlowski wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Queued for 5.6 in drm-misc, thanks for your patch.
-Daniel
> ---
>  drivers/gpu/drm/rockchip/Kconfig | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index 6f4222f8beeb..1670a5cae3c7 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -28,17 +28,17 @@ config ROCKCHIP_ANALOGIX_DP
>  	  on RK3288 or RK3399 based SoC, you should select this option.
>  
>  config ROCKCHIP_CDN_DP
> -        bool "Rockchip cdn DP"
> +	bool "Rockchip cdn DP"
>  	depends on EXTCON=y || (EXTCON=m && DRM_ROCKCHIP=m)
> -        help
> +	help
>  	  This selects support for Rockchip SoC specific extensions
>  	  for the cdn DP driver. If you want to enable Dp on
>  	  RK3399 based SoC, you should select this
>  	  option.
>  
>  config ROCKCHIP_DW_HDMI
> -        bool "Rockchip specific extensions for Synopsys DW HDMI"
> -        help
> +	bool "Rockchip specific extensions for Synopsys DW HDMI"
> +	help
>  	  This selects support for Rockchip SoC specific extensions
>  	  for the Synopsys DesignWare HDMI driver. If you want to
>  	  enable HDMI on RK3288 or RK3399 based SoC, you should select
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
