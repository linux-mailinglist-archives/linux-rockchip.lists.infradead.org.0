Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDBACAE80
	for <lists+linux-rockchip@lfdr.de>; Thu,  3 Oct 2019 20:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wUxag9iFzHwQLe+7Lw3z/7z2+T1F+Ko9ecHpkeD8s9g=; b=ta3VTX8L+MLeeE
	6P0m0e+sr8SOgaKRJH7RzwVlTfUMQ64YUQkWuLMr7GSrfcwWKr6GDjyGc/DaAMd0zb83h6/ivulax
	KptgOaj6OwL+Bpgl+HqEG5NUjN12eAn6pfkSM0jC/++3/+UAcZp7ipqf3KRIlgiXZMwi6Yj/v6UD7
	2ttIxg+EChilt5RtWrfjq5hj/qg9LLYurh7fxjt+jJ9sY87Y+oSsR133BhEMLyIAi91kTAvay9W5a
	1sFrE5R0bvdsHCSaBtozWOnElCIkEAX9+boz9aDtnltvOa+OUNow073Z9Vg6f8TkhE8Z/C1cuYkOs
	ApWJV0BPnpiiVqzF6Yzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6A6-0001bG-73; Thu, 03 Oct 2019 18:49:14 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6A3-0001ae-7J
 for linux-rockchip@lists.infradead.org; Thu, 03 Oct 2019 18:49:12 +0000
Received: by mail-oi1-x241.google.com with SMTP id k20so3598451oih.3
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Oct 2019 11:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4bYXjGFVT5M4BPwSyoV9TrBf9Kkv65nfJ31r2xLDzZU=;
 b=EmOe+8mi8SJNDbJCkY/leXIR58hNDc6XJa30oWJMy598KhE/OlmxkDz1hWH2Y1zBSU
 FiEzgzPY69cw6bb7b8ItJYERLWC/ZHGAoieXc82zRqAIXoMlGCLZdazUqZLhMtsrfqHF
 eLszIT8IdmfVVs6uEVjwai/tpfb0EBagW5YH0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4bYXjGFVT5M4BPwSyoV9TrBf9Kkv65nfJ31r2xLDzZU=;
 b=VWOoyQ78wNyzr+MzY+6gVSZ67dftZyRFhc+4aZSqdsWkJmTi5aFC5T0qZvkM/phmtO
 fX5tXfqtEbAVymsrDR7UrdSDWPWXkfHOePl9JKlTVHaQ8Amvu/vQ2v7gAndbCfjzZY4t
 c0hA3BrXCrZmP5ryrDxdlUQKAHFeGBw/g0wpp6lUar4VBskMPH+ZvWZ2NnhlLt/7xKFC
 LjSgrXmgpVzHC7y24g1GxwBQqQBXbhS3ihWFG200wnOdlNkvCrPnEhciWy5YXK3ud0ew
 wF8tyGEpXwUsC2PohDmv9dBpSdfaBYJb7P3guzsez/KklshOiR+PkjMEbSm7m65yTsbF
 yS+g==
X-Gm-Message-State: APjAAAVEEz73RP5uOF/4g5FJ61YN+ISFnxXmU53/ZL6KuP/dXiCKCR2x
 ZP8v/EQJepsPHG+NjarOoViIJxjnf0s=
X-Google-Smtp-Source: APXvYqyppKD4ltPYome8V6mL1EwHEsg9YgEpqudw3kdtywh6luaqOv88OZ3Rga+lxCEcrpQ34UJ8ow==
X-Received: by 2002:aca:7509:: with SMTP id q9mr3708800oic.111.1570128550121; 
 Thu, 03 Oct 2019 11:49:10 -0700 (PDT)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com.
 [209.85.166.52])
 by smtp.gmail.com with ESMTPSA id p7sm1046570oif.8.2019.10.03.11.49.09
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 11:49:09 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id q1so8052577ion.1
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Oct 2019 11:49:09 -0700 (PDT)
X-Received: by 2002:a5e:d817:: with SMTP id l23mr9427708iok.142.1570128549025; 
 Thu, 03 Oct 2019 11:49:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191003102003.1.Ib233b3e706cf6317858384264d5b0ed35657456e@changeid>
 <CAMavQKKTdsJmVy1wz8K66qyZ_iONqStM8JXJwX=9XspVAKT28A@mail.gmail.com>
In-Reply-To: <CAMavQKKTdsJmVy1wz8K66qyZ_iONqStM8JXJwX=9XspVAKT28A@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 3 Oct 2019 11:48:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UnC_b1DfN0Aq1bcw_1Oz95Kc-2hkkEULY84+bMfd4sNw@mail.gmail.com>
Message-ID: <CAD=FV=UnC_b1DfN0Aq1bcw_1Oz95Kc-2hkkEULY84+bMfd4sNw@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: Round up _before_ giving to the clock
 framework
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_114911_267447_9516DDCE 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Tomasz Figa <tfiga@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 Ryan Case <ryandcase@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, Oct 3, 2019 at 11:37 AM Sean Paul <sean@poorly.run> wrote:
>
> On Thu, Oct 3, 2019 at 1:20 PM Douglas Anderson <dianders@chromium.org> wrote:
> >
> > I'm embarassed to say that even though I've touched
> > vop_crtc_mode_fixup() twice and I swear I tested it, there's still a
> > stupid glaring bug in it.  Specifically, on veyron_minnie (with all
> > the latest display timings) we want to be setting our pixel clock to
> > 66,666,666.67 Hz and we tell userspace that's what we set, but we're
> > actually choosing 66,000,000 Hz.  This is confirmed by looking at the
> > clock tree.
> >
> > The problem is that in drm_display_mode_from_videomode() we convert
> > from Hz to kHz with:
> >
> >   dmode->clock = vm->pixelclock / 1000;
> >
> > ...so when the device tree specifies a clock of 66666667 for the panel
> > then DRM translates that to 66666000.  The clock framework will always
> > pick a clock that is _lower_ than the one requested, so it will refuse
> > to pick 66666667 and we'll end up at 66000000.
> >
> > While we could try to fix drm_display_mode_from_videomode() to round
> > to the nearest kHz and it would fix our problem,
>
> I got a bit confused reading this and Doug straightened me out in a
> sideband conversation.
>
> To summarize, the drm_display_mode_from_videomode() call referenced
> above is from panel-simple, and this downslotting is specific to
> rockchip's clock driver. So I've asked to clarify these 2 points so
> it's clear from the commit message that this patch is the best
> solution. With that addressed,
>
> Reviewed-by: Sean Paul <seanpaul@chromium.org>

Thanks for the review!  Hopefully people don't mind the quick spin...

https://lore.kernel.org/r/20191003114726.v2.1.Ib233b3e706cf6317858384264d5b0ed35657456e@changeid

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
