Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B8E1A9C25
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Apr 2020 13:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDY0hOd5hnpLqjXCqczckGtYYTLXQjPY5vFXv4cnd7k=; b=Sn7f0v5sCZeoiy
	1edT5aGnAgPX2atNTj8vzZ9pZi2LWolkfkVb7eTXFnzCvIXpF7A9ueWTgxi8PtEpjc27rz9sGhWdO
	bYQGzcMwTAZpKRFfk0HeIY9unoIdJLTJDdk68cXKq2ZWJlQpbEMKjSo5G0WEatTaajR6IsJITBTIL
	jcafZmYzOqowoD359udveJCecEFWzjfF3io7OEUXrUTpatkZ0geM0pBtnjtswsFAO2jTfBDuXpaRw
	YZfxGP0qtywBOQY26uLyG/AiJDtcwWc8Ehrl12IbnrSbKhVjILMwUOq/sfvkbOc/8WfSPcuBYfH9N
	DUrDvNTLi54lvgzMXhkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgAt-0007yg-Qs; Wed, 15 Apr 2020 11:25:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgAZ-0007nx-RR
 for linux-rockchip@lists.infradead.org; Wed, 15 Apr 2020 11:25:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id z6so18577606wml.2
 for <linux-rockchip@lists.infradead.org>; Wed, 15 Apr 2020 04:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=apXLkj8/Y6/Je/J3pw9VYIeGtZznbEDSTaodMw9SIP8=;
 b=CtHkHYlCnlsa+tUc8/F7g7a0/P6u8ejT1ayfSACtu0kpWhs3EFaqXHsG66HdK2TqVO
 1YepPve4g/tteoWGzn/BId3gVqa0gSrcAXKoX7yewG/1H0vQN4Qe2Pn7YxQ/IdDn6tw3
 UgUpHRyZ0gelkfNm/V6/st91NhPu8ozpGjQpo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=apXLkj8/Y6/Je/J3pw9VYIeGtZznbEDSTaodMw9SIP8=;
 b=nU1y16Ujoj2107Wx69yFed+EaHbODn83Dd16By7pW4QiFb92ebJqZROG8PYfgdFO9u
 3K2psnwlKgqelWnxSvbCn8nXuK6ox2ihYFb/mwG7xD1AzzyqFU3I4unhm1vYV0Ah4QLH
 Z7pKNutj/5gufCU1Bf0uPQD7/uJY9c+lnMHplTj8ApY5JC7k7v3PTeZkzJNvlu0vp2mo
 Dak05wT82aDGuijJCYsJKxs4xx+l5hyweiwx9juqK3YTbIWQkR+gi+K8LLZA2uPIeuVK
 lXic31oxJr19YXqtp8OIdNEqGKQ2PnEvHSgRwk5j3OuBfQp2d8HmrdQK1TclueusvyI6
 Jppg==
X-Gm-Message-State: AGi0Pubu15sheym4radG2UxAH9GF+zzG18U0N9QEHQA2Eq3FpPbGNqzF
 J8KTeWRn8u+bfYeYEFDwUIhHOw==
X-Google-Smtp-Source: APiQypLPhakDBiE4HRC90MnW5/bRC2vpIu2AQD3Xvb6Y3wPK7412N1qq31ytrTaUWKirLB1NJ1AesQ==
X-Received: by 2002:a1c:7c13:: with SMTP id x19mr4706062wmc.124.1586949925687; 
 Wed, 15 Apr 2020 04:25:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w3sm4358429wrc.18.2020.04.15.04.25.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 04:25:25 -0700 (PDT)
Date: Wed, 15 Apr 2020 13:25:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] drm/rockchip: fix spelling mistake "modifer" ->
 "modifier"
Message-ID: <20200415112523.GA3456981@phenom.ffwll.local>
Mail-Followup-To: Colin King <colin.king@canonical.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200415083420.366279-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415083420.366279-1-colin.king@canonical.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_042529_430084_B78E8148 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 09:34:20AM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a DRM_DEBUG_KMS debug message. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Queued for 5.8, thanks for your patch.
-Daniel

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index b87d22eb6ae1..33463b79a37b 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -769,7 +769,7 @@ static bool rockchip_mod_supported(struct drm_plane *plane,
>  		return true;
>  
>  	if (!rockchip_afbc(modifier)) {
> -		DRM_DEBUG_KMS("Unsupported format modifer 0x%llx\n", modifier);
> +		DRM_DEBUG_KMS("Unsupported format modifier 0x%llx\n", modifier);
>  
>  		return false;
>  	}
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
