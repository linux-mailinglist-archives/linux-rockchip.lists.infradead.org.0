Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4607A1F9B2
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 20:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlvadQFDe8rFPHw78F2MCVWRvzu5pt6w7FHCfeRqois=; b=pLV2ggrl2jHm2W
	3MJr6VWqVi8rokxPMpgTgB56WHNsnETRupGn6RF8MA8cTbM471PYlWh8E7aYiQad80siJnm/YPapv
	c2DkzcihgvFpAU8RbDhDhWIo6XBhVfLiUV/oxANXOWD7GtzRFoCDuJuCy1+RmU/5DpnzUEzvEi0si
	LG9ztlJZBegAWsmeFHm0N921swk8KuTGhOldZD056tyh9PiI+9iG+pkQNPwvryt0wd9KBUtKVr+cF
	jOSGfG3wCvymAhVK/5hi8xy0EnhdyenWSG/ElNeixv0acqV4jDNF5pnS1ro5TxF6Cj/IMGK/jYK3/
	2cvlrzm+SyRNs3k70pgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyH8-0004FY-V5; Wed, 15 May 2019 18:05:10 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyH5-0003Xo-Cn
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 18:05:09 +0000
Received: by mail-qt1-x841.google.com with SMTP id t1so693632qtc.12
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+hs5xg7kXU2SMsc3oKZIKfrfpdpw9b4KuC9hrmBGtlM=;
 b=bRruT73OXhXm9o91r54/0gUD2l5eMfxYgSCfb3qivODs0BuSErPmM54r4FE6OUIHW8
 phoQtIzqZKTxehM+SrYtgIc2LVo+Ka9E3elMPQ83jY/A2zsqdaOI7i2K2Um2+BKvjJlJ
 /EZBn3/xIylmGa7cJAmEEsLSSENXudtz5RSgcUnxiuCICBQiVJQWyBKJyReW/YfQPRRd
 ldKhjcu/NhuSvhW3nTBmwtaibC5MB20gENDW6FcMWs7Cc504KEbBMP331NEMzzmY7a1K
 ZaqRWwKPKHZQWWLdI8MXO+ue4ZZb2a8qg1XdocHN9iLhCOsGlisIQuglYSUNlelgGt7i
 oKFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+hs5xg7kXU2SMsc3oKZIKfrfpdpw9b4KuC9hrmBGtlM=;
 b=tsKKXOFWyDK7pzPjJdsLCtc+xF8E5PmMvr1fUdtfC41pdQ4FBi8DHBW026mY2Tf0w7
 jGtyQSdpYBol1ksEcv7DURrj/wGx75OLFrRxXuwoLOPcAzcweNTLgnP7sUE0arwtp0WV
 pS2WfVMBM9oYI/4ouB9wOoQn3U7Xul0qtMM2X7XBrP3W7+AbNQ7A8adfaaasTk01zy2f
 czUgMUOagOkdrO+dNXmRnz/4qATqW6DIGIhDnwiLb5ZQBkQuZazJfVzW4+vyINsSLh7+
 WP7iDWdVtXSsi1bMZck2VxzQwAOTqcJOxtOTeXILlyk7f36i+K6jVzQt1Jrd4mdjHB57
 3EkQ==
X-Gm-Message-State: APjAAAW2nBVEcxqhDHPvJ5D0n1GjHtI4wte+gpyFg6rAYu1N+NK8zIua
 v5Fa5MhCSeqE8v4yw8eCW4BlIA==
X-Google-Smtp-Source: APXvYqzgn4I8gLwP45HY/wQks6X1Aa55QBkdkNaroINqESPe3UjrHphkUh2LgwXrGMx2OH2J7r4FNQ==
X-Received: by 2002:a0c:98f8:: with SMTP id g53mr9717980qvd.142.1557943504648; 
 Wed, 15 May 2019 11:05:04 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id e25sm2116919qta.18.2019.05.15.11.05.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 11:05:03 -0700 (PDT)
Date: Wed, 15 May 2019 14:05:03 -0400
From: Sean Paul <sean@poorly.run>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/2] drm: bridge: dw-hdmi: Add hooks for suspend/resume
Message-ID: <20190515180503.GU17077@art_vandelay>
References: <20190502223808.185180-1-dianders@chromium.org>
 <20190515175826.GT17077@art_vandelay>
 <CAD=FV=X=ScK0H-ZNcOeEta2BL+f4TSAmXS=D585omXxbRVZcyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=X=ScK0H-ZNcOeEta2BL+f4TSAmXS=D585omXxbRVZcyQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_110507_447327_934F58D1 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 11:01:26AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Wed, May 15, 2019 at 10:58 AM Sean Paul <sean@poorly.run> wrote:
> 
> > On Thu, May 02, 2019 at 03:38:07PM -0700, Douglas Anderson wrote:
> > > On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> > > cycle:
> > >
> > > 1. You lose the ability to detect an HDMI device being plugged in.
> > >
> > > 2. If you're using the i2c bus built in to dw_hdmi then it stops
> > > working.
> > >
> > > Let's add a hook to the core dw-hdmi driver so that we can call it in
> > > dw_hdmi-rockchip in the next commit.
> > >
> > > NOTE: the exact set of steps I've done here in resume come from
> > > looking at the normal dw_hdmi init sequence in upstream Linux plus the
> > > sequence that we did in downstream Chrome OS 3.14.  Testing show that
> > > it seems to work, but if an extra step is needed or something here is
> > > not needed we could improve it.
> > >
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > ---
> > >
> > >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 21 +++++++++++++++++++++
> > >  include/drm/bridge/dw_hdmi.h              |  3 +++
> > >  2 files changed, 24 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > > index db761329a1e3..4b38bfd43e59 100644
> > > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > > @@ -2780,6 +2780,27 @@ void dw_hdmi_unbind(struct dw_hdmi *hdmi)
> > >  }
> > >  EXPORT_SYMBOL_GPL(dw_hdmi_unbind);
> > >
> > > +int dw_hdmi_suspend(struct dw_hdmi *hdmi)
> > > +{
> > > +     return 0;
> > > +}
> > > +EXPORT_SYMBOL_GPL(dw_hdmi_suspend);
> > > +
> > > +int dw_hdmi_resume(struct dw_hdmi *hdmi)
> > > +{
> > > +     initialize_hdmi_ih_mutes(hdmi);
> > > +
> > > +     dw_hdmi_setup_i2c(hdmi);
> > > +     if (hdmi->i2c)
> > > +             dw_hdmi_i2c_init(hdmi);
> > > +
> > > +     if (hdmi->phy.ops->setup_hpd)
> > > +             hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
> > > +
> > > +     return 0;
> > > +}
> > > +EXPORT_SYMBOL_GPL(dw_hdmi_resume);
> >
> > Both patches look good to me, I'd probably prefer to just smash them together,
> > but meh.
> >
> > If no one more authoritative chimes in, I'll apply them to -misc in a few days.
> 
> Sure.  I can smash them and re-post or you can smash them for me or we
> can keep them as-is.  I originally separated because I wasn't sure if
> they'd eventually go through different trees.  Just let me know!  :-)

Definitely no need to repost. It's entirely possible Andrzej or Heiko prefer to
have the dw-hdmi stuff broken out anyways. My opinion is of little value here :)

Sean

> 
> -Doug

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
