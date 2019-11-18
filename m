Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B30100C2F
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 20:25:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQ6TcmMsZD7rYVm6NJRDhEQABaOECQyLfFVgjXtPtn8=; b=R/m6JESmUimcbk
	2w/bjD44ZCGtTkKV4p1SCJRHD79D0qJMw7jOAjlHu7Cvl9ENF0I5/mdTCTPHN3UjZ0lZqBwv1tVXW
	3JchQZIwQO9CL0oVCx/0KCxtfqCocKAwXwrL7PYclmdW2zXeRJ1pBDXtO4xqpD0Y+fMD9d2ujwX1d
	BFmYL2e9ISmhPWb4BoFq+Wiev1e2Fj/Nq9m2nKm5RTYHAFx7qOM/5XCu1P+ti4bFzI61zw5so/Iuq
	42ojP6NGu+0ts4XAAklk1T8PTCzDOVhvUnmjbySifm2pSz5LnGznMZ18YDysDIPsZK0Q7gePv67Ml
	hc4fW6X4aaWUpOyZxHVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWmdt-0004Zp-Gm; Mon, 18 Nov 2019 19:24:57 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWmdp-0004Yj-PV
 for linux-rockchip@lists.infradead.org; Mon, 18 Nov 2019 19:24:55 +0000
Received: by mail-yw1-xc43.google.com with SMTP id z67so6303270ywb.9
 for <linux-rockchip@lists.infradead.org>; Mon, 18 Nov 2019 11:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RR1Ga3A1uU2EwTdicRD/oRGttbdcdStZ/iHxBYKT5CE=;
 b=X3j1TWib3+Ts1yw/h9JSFot/7FOdRZxuSgzhQUhk9RX0px8sG0WBQZhDj4BBYPdlrY
 J4/WP8c5m+JUrfOTQmqzd3YoA61wc3CQh6jEEYyr1o9EJaG1j579HoLiQGB8tkRxyBaW
 XE9aGipx0u+/HUcxEay7fxGgq957hsoo3kGpuXpblgNkQqBm5Z5JhLDCY4uVqqWVtYD4
 WRmNouNlgix/ap6zSk2QUGxa3URJLevajDNFE3t6/jn8ofZ9vf5/RreGwxYmU8os0hcu
 9NGvn1khICOPssu0id2qHZC7cHZboqYSAGyoUNetFiJJAOh8jsKrlhFfeIKuO/tsUCGW
 jOIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RR1Ga3A1uU2EwTdicRD/oRGttbdcdStZ/iHxBYKT5CE=;
 b=CjHdn5eCmN0JDBRgBomajX+OIRIVnQHgfp+0fR/iOwMwIGj72oiUrwZC1CEzDo84bT
 6laTDWuwS6rB+E4Fql3WxvoEAA9QnvlI0re9AlP4c4BNjSDMf9ykz5sIxcUFoqE0ZlZS
 leAdsXfzADKDYkgb5JUMtDzuRFsrsxvFBHt0LMsfuW9qcT1H+xzYuVVIYilQ8YlebxeK
 /BHu7bS143aBItf//LfVy8VFb1GA0BCFnnJJZEaibTq+RoPck36ok0elS/5ffHn12LnG
 PgqJVwhkNf/r3oYci+mi/yV5BJtFX/rurwc8zVZiVj8/WpglWmjaN7inGMmkb79lJopd
 BCDQ==
X-Gm-Message-State: APjAAAXU9ElMzobk/yFMo2z7N7AkZ6Z+ru31pNYTm6Zw8j9THak5UOwS
 Bdl6C+VQhRVUeFawipZwRcjVOw==
X-Google-Smtp-Source: APXvYqzl9A6vN6o+ULDkUlZz1ITko3Pi29zzVl0fCErvVOD1nwPrfbxJyGG33yD6KHdyQOeaz77hbQ==
X-Received: by 2002:a81:49d1:: with SMTP id
 w200mr19894554ywa.169.1574105091585; 
 Mon, 18 Nov 2019 11:24:51 -0800 (PST)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id r196sm8953955ywg.102.2019.11.18.11.24.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 11:24:50 -0800 (PST)
Date: Mon, 18 Nov 2019 14:24:50 -0500
From: Sean Paul <sean@poorly.run>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 0/2] add new DRM_DEV_WARN macro
Message-ID: <20191118192450.GA135013@art_vandelay>
References: <20191114132436.7232-1-wambui.karugax@gmail.com>
 <8736ep1hm2.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8736ep1hm2.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_112453_966113_1532712F 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: airlied@linux.ie, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com,
 mripard@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, sean@poorly.run, linux-arm-kernel@lists.infradead.org,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 01:52:53PM +0200, Jani Nikula wrote:
> On Thu, 14 Nov 2019, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> > This adds a new DRM_DEV_WARN helper macro for warnings log output that include
> > device pointers. It also includes the use of the DRM_DEV_WARN macro in
> > drm/rockchip to replace dev_warn.
> 
> I'm trying to solicit new struct drm_device based logging macros, and
> starting to convert to those. [1]
> 

This sounds good to me, I'd much prefer the non-caps versions of these
functions. So let's wait for those to bubble up and then convert rockchip to
drm_dev_*

Sean

> BR,
> Jani.
> 
> 
> [1] http://patchwork.freedesktop.org/patch/msgid/63d1e72b99e9c13ee5b1b362a653ff9c21e19124.1572258936.git.jani.nikula@intel.com
> 
> 
> 
> 
> >
> > Wambui Karuga (2):
> >   drm/print: add DRM_DEV_WARN macro
> >   drm/rockchip: use DRM_DEV_WARN macro in debug output
> >
> >  drivers/gpu/drm/rockchip/inno_hdmi.c | 3 ++-
> >  include/drm/drm_print.h              | 9 +++++++++
> >  2 files changed, 11 insertions(+), 1 deletion(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
