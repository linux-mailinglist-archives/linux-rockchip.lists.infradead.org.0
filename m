Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89874726A
	for <lists+linux-rockchip@lfdr.de>; Sun, 16 Jun 2019 00:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99fgKPTHV5Sfh/UlmB1vuuTCzBg0FYQd6Zhi2L4rWwA=; b=P0SqL/9gFSEbvG
	iG066AGqQciHfFrZcL4WaxGnjpy8EuWtBifYTLA/ZWmLRG4sLOJzqcVhcBpADcmXb0lLzvr9MW5DJ
	O9gV1ZwyfxODfF5tFxxoBgha3sRkp3CA3jSsInR1Ey2mY7ouRnqWVuL+9tiz49th8gQwnz7xvNahu
	GIQTKTyP8FH2MA04vvaD4cYfcfRqS7w3ZhauZ1ZvGPmeeGPRwl7cQiTL0MUa2AGOwXsg0plQrwjeO
	cGgtetSm1B6szbvRqF5U2wO0uw/r8Dzd0HmmoPU5+YKpmdX6OVNNY60ENkIYcMJPdZumdXVBfksX8
	rHqtrxbEp9IPhNi+RcWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcHI2-0001Jl-8q; Sat, 15 Jun 2019 22:36:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcHHm-000146-Rm; Sat, 15 Jun 2019 22:36:36 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hcHHa-0003tz-El; Sun, 16 Jun 2019 00:36:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH 27/59] drm/rockchip: Drop drm_gem_prime_export/import
Date: Sun, 16 Jun 2019 00:36:21 +0200
Message-ID: <3418626.3hxrPx6y9t@phil>
In-Reply-To: <20190614203615.12639-28-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-28-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_153635_053785_B41002B8 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 14. Juni 2019, 22:35:43 CEST schrieb Daniel Vetter:
> They're the default.
> =

> Aside: Would be really nice to switch the others over to
> drm_gem_object_funcs.
> =

> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: "Heiko St=FCbner" <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org

On rk3399 with panfrost via prime
Tested-by: Heiko Stuebner <heiko@sntech.de>

and it obviously looks correct, so
Reviewed-by: Heiko Stuebner <heiko@sntech.de>


> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 --
>  1 file changed, 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/dr=
m/rockchip/rockchip_drm_drv.c
> index 59091b6241ec..782979f1b55a 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -219,8 +219,6 @@ static struct drm_driver rockchip_drm_driver =3D {
>  	.dumb_create		=3D rockchip_gem_dumb_create,
>  	.prime_handle_to_fd	=3D drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle	=3D drm_gem_prime_fd_to_handle,
> -	.gem_prime_import	=3D drm_gem_prime_import,
> -	.gem_prime_export	=3D drm_gem_prime_export,
>  	.gem_prime_get_sg_table	=3D rockchip_gem_prime_get_sg_table,
>  	.gem_prime_import_sg_table	=3D rockchip_gem_prime_import_sg_table,
>  	.gem_prime_vmap		=3D rockchip_gem_prime_vmap,
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
