Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF68800DC
	for <lists+linux-rockchip@lfdr.de>; Fri,  2 Aug 2019 21:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TsmNxqqCQ6XbcIZuWb167jqa6jk1Pbmcvj23M8dqZn0=; b=FGKhc3OiohdyI8
	h6PrhXaJr8+sfubqZpMkZs8KbIYvbKetBrrGXBSm6JrPHJd85qSlDJVlG2wgYrqX71qYp3FXZafbk
	65mNXEClRJ4xvkUYK5oAAIHJ+413SUuYyLE9XUDyy7yg/Ttn+FczhWHi7loNKzdlbYWTzd0WkVUg4
	eXjQLFj8OcP3oU5ugaHmAgILxzPXKWmDrM81x1RNpIF4UfrdPdFw65mxhth+YLlhU1biY5efvv8q2
	dglSyT0+7gvC0qaEzpkQTg5PvE8feftbPouMDAFEbKKh97TxO+OhIFFn1m+RW81fxcKJDAGbbke7t
	XPH/lHptWTqPyhAXvwsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htdCH-0005vK-0A; Fri, 02 Aug 2019 19:26:37 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htdCD-0005uK-DF
 for linux-rockchip@lists.infradead.org; Fri, 02 Aug 2019 19:26:34 +0000
Received: by mail-yb1-xb44.google.com with SMTP id i1so19918948ybo.4
 for <linux-rockchip@lists.infradead.org>; Fri, 02 Aug 2019 12:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oolSjnNy8o69qEXumrcNervgTiZ+0C/a0z2WrugF1/U=;
 b=aobcd8eDORReviFPdWXwJ+owjz07tUDlmFTI8N2UVHjRvHreP3t+H60+aVprbNizpN
 DVp9kUtL4tHn9qZ1XKPX2XWMn2+X7vva5tuYoKXNJIvUQE8qgVSBtEEc+9BLd77TgAle
 9ugd4NRMK+0DTYvGMi8PGMKCXL62gEqNiCxYBbvWVGEvd85Bk1yR58GuU2AK+YI3/j4T
 Ya7uA2+jqRuqLBOtDwGQj/oXyvmwAIsWbYU++bAVC7r1PUqCnQzZ+//dqKBBp/aGjoRN
 R7AJmQDz+uVBx9kBwjBALruxa0mpEMTTGWoxf63Z/Czq9klDBcDv9sA+JKzqtWnKyicb
 nJRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oolSjnNy8o69qEXumrcNervgTiZ+0C/a0z2WrugF1/U=;
 b=uaviGtsd129Jr4fiL3Thlr+LIGJPy+1H5UsyvlGtiVmkErouIbXx5+rR8LyJaRGksj
 KYvSi9KWtGkb5lqJKDXfYUONHA/SBOWajwJUhBE8BR2and58poDc4n1e6vNzyYwnwJz+
 P/0TUXES3D3jYnudaXZ28QYC87qDA31Xx0LUFtBlgZIP/Nn9VXsmcsWYRETOnjQO9Siy
 y6VjS2aDl2dWzsIhzZyfBkjBxHQ5Uj1VOp7nHNpzjjV8zHrXhPgrPb19TSt2oE7eRHHq
 7PzIFe83NPfpUNxjeugXRnX2++/4SxSeeaqzaVN6P18bRvs5ulOE591RZwdbe0br7j/N
 sQFA==
X-Gm-Message-State: APjAAAUg1ztKxZHyTxd7a6IsGHgLUrg67zVSeaTCcylxu3A0yh33P8YQ
 lvvgpoyjzIjCIo4cKzwOMp0KpA==
X-Google-Smtp-Source: APXvYqyzp76n9T+wWTNjzFV6D8CqVkpC4vTtN8rYlshUPMNLk6fs5ugiybl1QqkrOcbaUwfiGlN7aQ==
X-Received: by 2002:a25:9209:: with SMTP id b9mr74080808ybo.271.1564773990707; 
 Fri, 02 Aug 2019 12:26:30 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id p141sm17544110ywg.78.2019.08.02.12.26.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 12:26:30 -0700 (PDT)
Date: Fri, 2 Aug 2019 15:26:29 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] drm/rockchip: Suspend DP late
Message-ID: <20190802192629.GX104440@art_vandelay>
References: <20190802184616.44822-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802184616.44822-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_122633_502657_265C8A6D 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org, seanpaul@chromium.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 11:46:16AM -0700, Douglas Anderson wrote:
> In commit fe64ba5c6323 ("drm/rockchip: Resume DP early") we moved
> resume to be early but left suspend at its normal time.  This seems
> like it could be OK, but casues problems if a suspend gets interrupted
> partway through.  The OS only balances matching suspend/resume levels.
> ...so if suspend was called then resume will be called.  If suspend
> late was called then resume early will be called.  ...but if suspend
> was called resume early might not get called.  This leads to an
> unbalance in the clock enables / disables.
> 
> Lets take the simple fix and just move suspend to be late to match.
> This makes the PM core take proper care in keeping things balanced.
> 
> Fixes: fe64ba5c6323 ("drm/rockchip: Resume DP early")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Sean Paul <sean@poorly.run>

This should go in -misc-fixes and due to some... administrative reasons... I
will leave it on the list until Maarten has a chance to ff to -rc4 on Monday.
I'll apply it then so as to not require a backmerge.

Sean

> ---
> 
>  drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 7d7cb57410fc..f38f5e113c6b 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -436,7 +436,7 @@ static int rockchip_dp_resume(struct device *dev)
>  
>  static const struct dev_pm_ops rockchip_dp_pm_ops = {
>  #ifdef CONFIG_PM_SLEEP
> -	.suspend = rockchip_dp_suspend,
> +	.suspend_late = rockchip_dp_suspend,
>  	.resume_early = rockchip_dp_resume,
>  #endif
>  };
> -- 
> 2.22.0.770.g0f2c4a37fd-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
