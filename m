Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEC33D467
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 19:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZz6u+Ldk53ICkMPzVunLLF+hgca4nl0QfjRpdqbzBs=; b=C5KeDWsnBzLdjL
	GL+ckFfWv2gM16kO3Udiz3KRkmNQNmrgHhDJjv1seFaDwAOgwd4jqX65LFbHHNFESvm+xFKrBGOEC
	72lkehjlFlyUwBp+627wrjdwf34wSZ5wvfs7Zq+9ST9B9T8Wxlo9E6hhuXnAKOpeH5FiPzCxC3F1o
	pWv1P5ZF9Z6vlQ8mTUBNJFpm0lb3Yoj0HdPwXvhE8/j/qCPDopHD51ldeeazmbfUm3F56i8ZysRFK
	OHuL3LLaTmxi7qC3E/ZEz8VMyeNsZr32Pj0soFrzv7pZ6Wh0dfT3K1A/6UuxG1JOgZQByVrYEwJto
	S9uJZUzVB9xbgWo5+SbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakkT-0006gH-FE; Tue, 11 Jun 2019 17:39:53 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakjt-0006Dj-38
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 17:39:21 +0000
Received: by mail-ed1-x542.google.com with SMTP id z25so21308209edq.9
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 10:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w5N2tKS/Rl6PSEhU2ojyJX68K3uG8DsBNcK2H7xhug8=;
 b=NvT1h0wggzS0hz0PDBCzPPh5Ge5ir++LUyVwr7g/5KfnulH0p5RSnOJH3v9BnXE2Pg
 OwQ+InctUir5CPHG97smHdUISweVsS2w8gLeRYPp4w7WW95GaLjJ6vw0eW2yLPvE5Cbd
 CYnFLtlFGwQlIjjVIMykJEYrhNDXANavV/TDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=w5N2tKS/Rl6PSEhU2ojyJX68K3uG8DsBNcK2H7xhug8=;
 b=fbdne3QSgOHylreyodG2CWMdR29owpxCUKRXvhtSXrONjlVx50ibLBYfZbxnePHrXh
 xWSbKHrCdCRuxDXU0wZozYOVmUrUvKArrbkZ5g220DWeeed3sregKa/Bzah7Loa2kAfB
 +p5O7FIPjNtYkXjmnXYYjfSNxR7/aoUMjFHVIE3DFi2Pax1VgQjO/eypmTlHVuYS1KfV
 bVvZXJlxEnsCSsPrULrozPPkw4QMIlWG1YooUXF7rxwd+AbdbTibCZZR+gIBwwmK5iT4
 YD/gtDZKFIsrNJrFclFLnUtgU5fZv+koJPAGNZDyyhKcpjgNPb6JDjsPCWlTXKn5TdTW
 29VQ==
X-Gm-Message-State: APjAAAU0QBj8kU3oHsa7O9/elxIp2l70qIyiuLH2XfqsjKPD6M1ZtA3s
 ihToNlyv4O3eWrzUqmNkSUtRtw==
X-Google-Smtp-Source: APXvYqyeVmizdHwhgwHZgmr/e4kWY+FAahfl/COJf844taDtIr0xVpVkEX7mKGHw2WEC+CSOQQBDHg==
X-Received: by 2002:a50:be03:: with SMTP id a3mr81819825edi.5.1560274755535;
 Tue, 11 Jun 2019 10:39:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x98sm3013884ede.89.2019.06.11.10.39.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 10:39:14 -0700 (PDT)
Date: Tue, 11 Jun 2019 19:39:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sean Paul <sean@poorly.run>
Subject: Re: [PATCH v5 06/11] drm/rockchip: Use dirtyfb helper
Message-ID: <20190611173912.GL2458@phenom.ffwll.local>
References: <20190611160844.257498-1-sean@poorly.run>
 <20190611160844.257498-7-sean@poorly.run>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611160844.257498-7-sean@poorly.run>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_103917_172167_63113C92 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 12:08:20PM -0400, Sean Paul wrote:
> From: Sean Paul <seanpaul@chromium.org>
> 
> Instead of flushing all vops every time we get a dirtyfb call, use the
> damage helper to kick off an atomic commit. Even though we don't use
> damage clips, the helper commit will force us through the normal
> psr_inhibit_get/put sequence.
> 
> Changes in v3:
> - Added to the set
> Changes in v4:
> - None
> Changes in v5:
> - None
> 
> Link to v3: https://patchwork.freedesktop.org/patch/msgid/20190502194956.218441-7-sean@poorly.run
> Link to v4: https://patchwork.freedesktop.org/patch/msgid/20190508160920.144739-7-sean@poorly.run
> 
> Suggested-by: Daniel Vetter <daniel@ffwll.ch>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

btw somewhat bigger fish to fry, but imo also very much worth it:
Switching over to the generic fbdev emulation.

Also, since everything up to this one is reviewed I think would be good to
land that part already. So I can go around and haggle this to other
drivers :-)
-Daniel

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 13 ++-----------
>  1 file changed, 2 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> index 31030cf81bc97..a888e31aa545a 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> @@ -16,6 +16,7 @@
>  #include <drm/drm.h>
>  #include <drm/drmP.h>
>  #include <drm/drm_atomic.h>
> +#include <drm/drm_damage_helper.h>
>  #include <drm/drm_fb_helper.h>
>  #include <drm/drm_gem_framebuffer_helper.h>
>  #include <drm/drm_probe_helper.h>
> @@ -25,20 +26,10 @@
>  #include "rockchip_drm_gem.h"
>  #include "rockchip_drm_psr.h"
>  
> -static int rockchip_drm_fb_dirty(struct drm_framebuffer *fb,
> -				 struct drm_file *file,
> -				 unsigned int flags, unsigned int color,
> -				 struct drm_clip_rect *clips,
> -				 unsigned int num_clips)
> -{
> -	rockchip_drm_psr_flush_all(fb->dev);
> -	return 0;
> -}
> -
>  static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
>  	.destroy       = drm_gem_fb_destroy,
>  	.create_handle = drm_gem_fb_create_handle,
> -	.dirty	       = rockchip_drm_fb_dirty,
> +	.dirty	       = drm_atomic_helper_dirtyfb,
>  };
>  
>  static struct drm_framebuffer *
> -- 
> Sean Paul, Software Engineer, Google / Chromium OS
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
