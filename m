Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1090A1FB53
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 22:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyiwFxIlHIdC/lk8W0gILU2WJYJMAiTYtSE3UzxUmCo=; b=Ko9heQft3AUmaE
	Cn7xmtKbQBBBCiPdKuHCfC1Py6VLqZaEcScEKakU5Xe/6ZgqGCbKc7abo8CZ9Yx+M5aAAxrq5bBa3
	W2PTDC2XMTHb+asqTKE57vNNk3V9sfWVeTfirMxNTTO5NefCw++173SOYa/Csu05QUSPWSI7r2gVv
	C3LTGBoylVQyHYxXZbvU1HuR1hVf62+9nOBc72amJmyMuCE3SsCb2kOVfrSUNuGfGnj2lov2HgDl4
	UUxdg96nQcaQ2NNAz4ahUTtjbLHJ3PHzmf8wrQIYfqGRRYbbzoDbPSAmKsjy2ikQIFz/f9r29UK9Y
	zyWV4Xdi/rmrJKPJEHYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR088-000775-Kg; Wed, 15 May 2019 20:04:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR085-00076j-74
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 20:03:59 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hR07s-0000bC-Ci; Wed, 15 May 2019 22:03:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sean Paul <sean@poorly.run>
Subject: Re: [PATCH 1/2] drm: bridge: dw-hdmi: Add hooks for suspend/resume
Date: Wed, 15 May 2019 22:03:43 +0200
Message-ID: <1842218.E6FT6db3r4@diego>
In-Reply-To: <20190515180503.GU17077@art_vandelay>
References: <20190502223808.185180-1-dianders@chromium.org>
 <CAD=FV=X=ScK0H-ZNcOeEta2BL+f4TSAmXS=D585omXxbRVZcyQ@mail.gmail.com>
 <20190515180503.GU17077@art_vandelay>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_130357_409751_575798EB 
X-CRM114-Status: GOOD (  23.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Doug Anderson <dianders@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 15. Mai 2019, 20:05:03 CEST schrieb Sean Paul:
> On Wed, May 15, 2019 at 11:01:26AM -0700, Doug Anderson wrote:
> > Hi,
> > 
> > On Wed, May 15, 2019 at 10:58 AM Sean Paul <sean@poorly.run> wrote:
> > 
> > > On Thu, May 02, 2019 at 03:38:07PM -0700, Douglas Anderson wrote:
> > > > On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> > > > cycle:
> > > >
> > > > 1. You lose the ability to detect an HDMI device being plugged in.
> > > >
> > > > 2. If you're using the i2c bus built in to dw_hdmi then it stops
> > > > working.
> > > >
> > > > Let's add a hook to the core dw-hdmi driver so that we can call it in
> > > > dw_hdmi-rockchip in the next commit.
> > > >
> > > > NOTE: the exact set of steps I've done here in resume come from
> > > > looking at the normal dw_hdmi init sequence in upstream Linux plus the
> > > > sequence that we did in downstream Chrome OS 3.14.  Testing show that
> > > > it seems to work, but if an extra step is needed or something here is
> > > > not needed we could improve it.
> > > >
> > > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > > ---
> > > >
> > > >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 21 +++++++++++++++++++++
> > > >  include/drm/bridge/dw_hdmi.h              |  3 +++
> > > >  2 files changed, 24 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > > > index db761329a1e3..4b38bfd43e59 100644
> > > > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > > > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > > > @@ -2780,6 +2780,27 @@ void dw_hdmi_unbind(struct dw_hdmi *hdmi)
> > > >  }
> > > >  EXPORT_SYMBOL_GPL(dw_hdmi_unbind);
> > > >
> > > > +int dw_hdmi_suspend(struct dw_hdmi *hdmi)
> > > > +{
> > > > +     return 0;
> > > > +}
> > > > +EXPORT_SYMBOL_GPL(dw_hdmi_suspend);
> > > > +
> > > > +int dw_hdmi_resume(struct dw_hdmi *hdmi)
> > > > +{
> > > > +     initialize_hdmi_ih_mutes(hdmi);
> > > > +
> > > > +     dw_hdmi_setup_i2c(hdmi);
> > > > +     if (hdmi->i2c)
> > > > +             dw_hdmi_i2c_init(hdmi);
> > > > +
> > > > +     if (hdmi->phy.ops->setup_hpd)
> > > > +             hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
> > > > +
> > > > +     return 0;
> > > > +}
> > > > +EXPORT_SYMBOL_GPL(dw_hdmi_resume);
> > >
> > > Both patches look good to me, I'd probably prefer to just smash them together,
> > > but meh.
> > >
> > > If no one more authoritative chimes in, I'll apply them to -misc in a few days.
> > 
> > Sure.  I can smash them and re-post or you can smash them for me or we
> > can keep them as-is.  I originally separated because I wasn't sure if
> > they'd eventually go through different trees.  Just let me know!  :-)
> 
> Definitely no need to repost. It's entirely possible Andrzej or Heiko prefer to
> have the dw-hdmi stuff broken out anyways. My opinion is of little value here :)

I guess my own preference is to keep them as they are now - so separate.
It makes it easier to see what gets done and also keeps the boundary on
where to split pretty clear.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
