Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E691F9AE
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 20:01:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qt6LiC3AS8EjXd3p7XjE4b5PUapiKNclut/dmT3wZCA=; b=DVDxAxYg2OuE8Z
	eDv7u8mheMbIaChb897q0oHuGwGdLd/2ys6xtfpRPP0t+kJasKBXyyeYvtNwR4MRLMx4umGbPSOpP
	OAIq3XxkES97LMq7SS6yE5v2zO3TTMSQqDjKy6did2Ui/A2rpRzxlUgGhRPP+pX3KO7KNKFFroPMB
	ognr8d/zOPtWn1HL8+YmuNGdTIOOpgvtxGqTWMKuJ3R8Z1xO/qSqA0zlKKO5ZhwOv4ym/YZYO8+Jc
	yUN+3Dfek3rK48yZkonblYAZYFTyCk8V+iTH/Kzbcp6wK3R5KQG7r7Imcgz0iXIpg/HvhEGeefMYW
	91Uft/LB3ufnmjz0aTKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyDo-0002wM-5e; Wed, 15 May 2019 18:01:44 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyDl-0002w3-FJ
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 18:01:42 +0000
Received: by mail-vs1-xe44.google.com with SMTP id y6so548882vsb.0
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GOlh4dTx7Vxhh5KS401+ytTuib/HBS2y3FGyL2kxQBo=;
 b=nAu9PbC6WUHU/fSI4IYsoxpnM/EQB4isVALdhOLUwqXWeRYNm+Ao3nLr92q9A+3UlN
 6iZPhlFXWl24Wsk78ch56s1us49NagE5IYyR/a0VhbVwp+b6KvWJgyRB2aP+NFC0D+rA
 tpZXjs0CFoouD5hfxeRvD6orP7xjpL43qbcqI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GOlh4dTx7Vxhh5KS401+ytTuib/HBS2y3FGyL2kxQBo=;
 b=iNHzuV1wNggDVk9NjN9D8QcoaWb6pnHfbLaYssLw2dTBnGL4jFCxNRRCut2T5mX9kB
 V02O54UqmBLo2IFqVz8NaG1o+ZwnUnZLnQ3w7/SFI8l9McQ9QCHKdUtV3XrIDK8tJ2W2
 UniUYyQz7uTtWiaWYEkinxe9xldntWSIkeJTTBsFIaBVzAXE+oE2toZjUYcDAW/SNufC
 kpKNo/0P67o5wCjitUsNVIZ3cbKEWqKgU3O1+Wm+Sb+od/GAc6ALP3uKoW3QqpFC6gx9
 lao9PfgOrCMUtrnTiXLSQwbxMywN9fgghb3D54eO1ZF9Re6ej+MWTKrni4fq7XeEwlN5
 E79Q==
X-Gm-Message-State: APjAAAWvqeeY94YMybmYjuDbSGrMbupwWrT+waXSxLw0CLuoo6Mcn8WC
 idHZh7of3kr3Ftow1coQg8oLMp2vHy4=
X-Google-Smtp-Source: APXvYqwe69xAnjLwg8mFaMwtEqboI3LKJL9ezS/C1LypUqbZBeXyN66o7H2a+c3nci8u6u6LGPJSjg==
X-Received: by 2002:a67:ec42:: with SMTP id z2mr11997311vso.30.1557943299966; 
 Wed, 15 May 2019 11:01:39 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com.
 [209.85.217.51])
 by smtp.gmail.com with ESMTPSA id w136sm2065686vkw.18.2019.05.15.11.01.38
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 11:01:38 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id q13so539490vso.2
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:01:38 -0700 (PDT)
X-Received: by 2002:a67:f60b:: with SMTP id k11mr14004140vso.111.1557943298290; 
 Wed, 15 May 2019 11:01:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190502223808.185180-1-dianders@chromium.org>
 <20190515175826.GT17077@art_vandelay>
In-Reply-To: <20190515175826.GT17077@art_vandelay>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2019 11:01:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X=ScK0H-ZNcOeEta2BL+f4TSAmXS=D585omXxbRVZcyQ@mail.gmail.com>
Message-ID: <CAD=FV=X=ScK0H-ZNcOeEta2BL+f4TSAmXS=D585omXxbRVZcyQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: bridge: dw-hdmi: Add hooks for suspend/resume
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_110141_514311_A0FE3E50 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, May 15, 2019 at 10:58 AM Sean Paul <sean@poorly.run> wrote:

> On Thu, May 02, 2019 at 03:38:07PM -0700, Douglas Anderson wrote:
> > On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> > cycle:
> >
> > 1. You lose the ability to detect an HDMI device being plugged in.
> >
> > 2. If you're using the i2c bus built in to dw_hdmi then it stops
> > working.
> >
> > Let's add a hook to the core dw-hdmi driver so that we can call it in
> > dw_hdmi-rockchip in the next commit.
> >
> > NOTE: the exact set of steps I've done here in resume come from
> > looking at the normal dw_hdmi init sequence in upstream Linux plus the
> > sequence that we did in downstream Chrome OS 3.14.  Testing show that
> > it seems to work, but if an extra step is needed or something here is
> > not needed we could improve it.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 21 +++++++++++++++++++++
> >  include/drm/bridge/dw_hdmi.h              |  3 +++
> >  2 files changed, 24 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > index db761329a1e3..4b38bfd43e59 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > @@ -2780,6 +2780,27 @@ void dw_hdmi_unbind(struct dw_hdmi *hdmi)
> >  }
> >  EXPORT_SYMBOL_GPL(dw_hdmi_unbind);
> >
> > +int dw_hdmi_suspend(struct dw_hdmi *hdmi)
> > +{
> > +     return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(dw_hdmi_suspend);
> > +
> > +int dw_hdmi_resume(struct dw_hdmi *hdmi)
> > +{
> > +     initialize_hdmi_ih_mutes(hdmi);
> > +
> > +     dw_hdmi_setup_i2c(hdmi);
> > +     if (hdmi->i2c)
> > +             dw_hdmi_i2c_init(hdmi);
> > +
> > +     if (hdmi->phy.ops->setup_hpd)
> > +             hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
> > +
> > +     return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(dw_hdmi_resume);
>
> Both patches look good to me, I'd probably prefer to just smash them together,
> but meh.
>
> If no one more authoritative chimes in, I'll apply them to -misc in a few days.

Sure.  I can smash them and re-post or you can smash them for me or we
can keep them as-is.  I originally separated because I wasn't sure if
they'd eventually go through different trees.  Just let me know!  :-)

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
