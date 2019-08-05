Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E355581FD7
	for <lists+linux-rockchip@lfdr.de>; Mon,  5 Aug 2019 17:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPkb+HS5A+IOdhquzZLkilQWpSuOb+xU3Xqh2WVs2w4=; b=IWDBWbasL6Rebc
	jg+FUiKJTpE7+80RS4NriZePOZ2FDnHQoTFzZn/7LgmVrOFfidxqDkPp4cuWccBS0wCn2R5BeoU+D
	b+YAzSIfIS1ySS/AoK28zVPCsSU/3dLLyW/EYk9Lzm7H5gQPXHmnFuP/o4z8YxYWquEBB8RXWqEHR
	QJ0WvPC4fS8SMiXfskcBhrMcxVue/ZsKm7/6//+0I2w+8qeQ/FTJhKHpZZ2vt/tCC2oU1JKl0mPVH
	JCdoFQXv8WiVwqKGln+icPEUEN+Bc+fHvYslBObWa6Vd+3DJCnwIv8F0S1N0a7DJEp8T2P7f6l3N4
	wN+vkVbZFGEYTsHjd6Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huedi-0002BH-3a; Mon, 05 Aug 2019 15:11:10 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huedf-0002A9-6v
 for linux-rockchip@lists.infradead.org; Mon, 05 Aug 2019 15:11:08 +0000
Received: by mail-yw1-xc41.google.com with SMTP id x74so11643280ywx.6
 for <linux-rockchip@lists.infradead.org>; Mon, 05 Aug 2019 08:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Xpk6f+iULzta9MKqDdvJJrwYV01nAnI8/sskf5srO6w=;
 b=Yc8iF9Tg6K4ZUygMSzIbAg7TgFHqn+DDIs7uLPE5xrDqID2IWXqNk6LvPQ9rUJHn/y
 iwBv+kyYjwO2lD6X/Fbjg+YcSnkIRz0Leri50AKvtchFjaw+ayZguSVOSk2X/dILnpWv
 l05vTy1Q3eSFfnRT62uEMfRaxksSOQIg4guRvn5xGyPW/ul2eM9FFdAE7qOmM6HojDz0
 hxSRDLNwD1Y46nxRF8OvkBl4oPTboz1hP1ZPsSs4wUZj6mCajEVFQtOiN5fzjDm955Jb
 YEDhkh4JZe7a4k1yOwZ76mQBkUFzfK0sAxWkzheCnCCnGz6AvAqPROj/zx2UuM4Ya+HD
 ntyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Xpk6f+iULzta9MKqDdvJJrwYV01nAnI8/sskf5srO6w=;
 b=k4chDcr2PlKSm44sVZnwIiuI7iBo4PMM+JNgMLKkdwuTR3+pclnoMeVR96anX0yR+L
 devR8LlG/nr7mJZZjObXNTYbj1dZDstiz4c5kLp38gnLlb7r0Rd93OqKCYTlTJt6qjzT
 mdi6IfTL47go/cLSAzeH47u55SrIquTm60+iO4v0DZvj3OYJX0ynYxfgZK+BrrVjU5Ju
 YN5Oja6CFrwJ3a4ZMOFmvYv8yhJ60h17/xt/WCYzBZfqljuHBdKkmHInzSPnf4DdfFz3
 qSRu53Ftjgpr+nOCNuJI7CQ1VzKF0Dd/fGolg2B7DfwD5Qnh6eGVLOx4pQA2b9ZKZmgM
 VIZA==
X-Gm-Message-State: APjAAAXXIdCIDCZkHT4JxbbDBVJdDQyk9HN/eI96CQZe0w6MquZ0VLnr
 t853MXIMMRIgEN0xjMLGTRsvjg==
X-Google-Smtp-Source: APXvYqwucyKIizPhyNVHyc8xvnzNgJysm59poTBqYa8cImRwlOnzSuOS8zREscvyu0uqoevbAyXDUA==
X-Received: by 2002:a81:1d11:: with SMTP id d17mr96208542ywd.9.1565017865628; 
 Mon, 05 Aug 2019 08:11:05 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id w188sm18900454ywc.93.2019.08.05.08.11.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 08:11:04 -0700 (PDT)
Date: Mon, 5 Aug 2019 11:11:03 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] drm/rockchip: Suspend DP late
Message-ID: <20190805151103.GY104440@art_vandelay>
References: <20190802184616.44822-1-dianders@chromium.org>
 <20190802192629.GX104440@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802192629.GX104440@art_vandelay>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_081107_298369_2B831195 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Aug 02, 2019 at 03:26:29PM -0400, Sean Paul wrote:
> On Fri, Aug 02, 2019 at 11:46:16AM -0700, Douglas Anderson wrote:
> > In commit fe64ba5c6323 ("drm/rockchip: Resume DP early") we moved
> > resume to be early but left suspend at its normal time.  This seems
> > like it could be OK, but casues problems if a suspend gets interrupted
> > partway through.  The OS only balances matching suspend/resume levels.
> > ...so if suspend was called then resume will be called.  If suspend
> > late was called then resume early will be called.  ...but if suspend
> > was called resume early might not get called.  This leads to an
> > unbalance in the clock enables / disables.
> > 
> > Lets take the simple fix and just move suspend to be late to match.
> > This makes the PM core take proper care in keeping things balanced.
> > 
> > Fixes: fe64ba5c6323 ("drm/rockchip: Resume DP early")
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> 
> Reviewed-by: Sean Paul <sean@poorly.run>
> 
> This should go in -misc-fixes and due to some... administrative reasons... I
> will leave it on the list until Maarten has a chance to ff to -rc4 on Monday.
> I'll apply it then so as to not require a backmerge.

We're no longer able to ff drm-misc-fixes since a commit came in on Saturday, so
I've piled this on as well.

Thanks,

Sean

> 
> Sean
> 
> > ---
> > 
> >  drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > index 7d7cb57410fc..f38f5e113c6b 100644
> > --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > @@ -436,7 +436,7 @@ static int rockchip_dp_resume(struct device *dev)
> >  
> >  static const struct dev_pm_ops rockchip_dp_pm_ops = {
> >  #ifdef CONFIG_PM_SLEEP
> > -	.suspend = rockchip_dp_suspend,
> > +	.suspend_late = rockchip_dp_suspend,
> >  	.resume_early = rockchip_dp_resume,
> >  #endif
> >  };
> > -- 
> > 2.22.0.770.g0f2c4a37fd-goog
> > 
> 
> -- 
> Sean Paul, Software Engineer, Google / Chromium OS

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
