Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EFE3D77B
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 22:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/FhXwRGLShQDqwuzEX7KDFyDWBDsLG18Ue9aSGujvo=; b=IJiTOOScOF1JXV
	6KBT71LoUuz/oKWgpVgnlSaEduMBwPGbLKn/BeunxZ1WlGUf6UTR1gz+ZJBeccVuBuQFsItmMFGIZ
	pHnceeF312avFgaAxccJEnxShRV7prC/2q947up4gxpJr0KGgzB6su5KZ05sXFKsphNV/iv7VpKNl
	To/kqzFi1AalRHLWW8XODx0EuQEkRnhBjpabRLUjcENwRZY+7cT2MCF5zQle/prkUl+vubHZJ75WY
	Ltgh3cJoIRHsWaY/A+JRQVUZ/gCLP3SFLJv6LUmPfz5zLE4eSBMhyH/P8/+V6iDYAKCo6yIKVIbjz
	nIX50hhidfda4S3ScB4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1han2R-00031x-PK; Tue, 11 Jun 2019 20:06:35 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1han29-0002rV-RJ
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 20:06:19 +0000
Received: by mail-qt1-x841.google.com with SMTP id j19so16083832qtr.12
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 13:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VZ0ytceJgXCqr5ilqOVqFNo1qlLNdSpZYSsN3gN7kIc=;
 b=RvqQx6p83R88V5tFQjTLtqa3DG6UAYYrxP6i8VC1Zyf2zpg72pHTPqmRWrO6SCAYEL
 qNpk4k/sofTESFdtr2A6Ghk8KYkqqe/d+00jNYyZAG+q7Rz8m82yXoA8xTE42XE0I0zb
 yWlR7Jd925GSsiU6u7E9V2ICjcMG77Fvq2q4WLCZabCu0Rfi7Y5rXEt1uEGhHRVV6Z+3
 +c2oKfrz9iDUC3Rt6viQqTdMnfkqakb/2tV0LVPRLcUrbRKn2FXS5ulZ0crf+kqOUlyN
 L86SHTeNJbg6fKnIxohrZSvaTYWYAMO8dkzCWuA+vpluBz7vIzLwxFQc3ep257QuWJN7
 0x0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VZ0ytceJgXCqr5ilqOVqFNo1qlLNdSpZYSsN3gN7kIc=;
 b=DSejPqr9ALi121v3R2yNopRVwpnVauC+yKMl7fKIoGfdAri9kHFhzjIQftHNEdFvv5
 ye+PDQHiqduq9sfLu5rW1uuruYwlpvJcVBqmHPjkBD+13TRw7frf6pTovmbt3tOtB9KV
 BqFotGC3HdZexvOLjCkWWkBoTdVO8FQTZdNkx1XY8BkIoOtWAPTawW/LTX/WsFZX4lrt
 IRm8/OvS6nwfGlIu3O2lmxEKftNtO6u4f/8gB1aOYDHMWGR5d379Pxd90wVsHjBURwnx
 OiI4P6gKe1ndGjw/hWMNfiFMdLDX6/bJRarnv54A5L0AF9ZeJD5PiqslKwGq/ZwkCyzg
 nY1g==
X-Gm-Message-State: APjAAAWcS6ey4lRSKkI8hKqZ8V0uvS0QYEZzhYqkLlI3EpZyWZSP2hX1
 3P1niQbmUl7cOAr+bMBKtlHD7hPogUI=
X-Google-Smtp-Source: APXvYqxoorb+UFLKFxWkPFFB9tPlAi8vUYk8yEv7z4SR3RxkKXlvY+Q+LOr3rEjpd+RT7hNpZpC1cA==
X-Received: by 2002:a0c:d91b:: with SMTP id p27mr47091576qvj.236.1560283576299; 
 Tue, 11 Jun 2019 13:06:16 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id d31sm2824197qta.39.2019.06.11.13.06.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 13:06:15 -0700 (PDT)
Date: Tue, 11 Jun 2019 16:06:14 -0400
From: Sean Paul <sean@poorly.run>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Message-ID: <20190611200614.GC179831@art_vandelay>
References: <20190604204207.168085-1-dianders@chromium.org>
 <20190604204207.168085-2-dianders@chromium.org>
 <20190606164221.GI17077@art_vandelay>
 <CAD=FV=Xt6Oad9yQHZz+nwANV1MCvGc6XCgOf8HawimVQtwWsEg@mail.gmail.com>
 <CAMavQKLgBBceO3m8-ff0-79Ks_tD_xDY=N1kOuJya2USthTARg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMavQKLgBBceO3m8-ff0-79Ks_tD_xDY=N1kOuJya2USthTARg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_130617_907051_85583EA0 
X-CRM114-Status: GOOD (  34.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 02:06:03PM -0400, Sean Paul wrote:
> On Thu, Jun 06, 2019 at 03:58:21PM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Thu, Jun 6, 2019 at 9:42 AM Sean Paul <sean@poorly.run> wrote:
> > >
> > > On Tue, Jun 04, 2019 at 01:42:07PM -0700, Douglas Anderson wrote:
> > > > On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> > > > cycle:
> > > >
> > > > 1. You lose the ability to detect an HDMI device being plugged in.
> > > >
> > > > 2. If you're using the i2c bus built in to dw_hdmi then it stops
> > > > working.
> > > >
> > > > Let's call the core dw-hdmi's suspend/resume functions to restore
> > > > things.
> > > >
> > > > NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
> > > > "late/early" versions of suspend/resume because we found that the VOP
> > > > was sometimes resuming before dw_hdmi and then calling into us before
> > > > we were fully resumed.  For now I have gone back to the normal
> > > > suspend/resume because I can't reproduce the problems.
> > > >
> > > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > > ---
> > > >
> > > > Changes in v3:
> > > > - dw_hdmi_resume() is now a void function (Laurent)
> > > >
> > > > Changes in v2:
> > > > - Add forgotten static (Laurent)
> > > > - No empty stub for suspend (Laurent)
> > > >
> > > >  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 14 ++++++++++++++
> > > >  1 file changed, 14 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > > > index 4cdc9f86c2e5..7bb0f922b303 100644
> > > > --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > > > +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > > > @@ -542,11 +542,25 @@ static int dw_hdmi_rockchip_remove(struct platform_device *pdev)
> > > >       return 0;
> > > >  }
> > > >
> > > > +static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
> > > > +{
> > > > +     struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
> > > > +
> > > > +     dw_hdmi_resume(hdmi->hdmi);
> > >
> > > The rockchip driver is already using the atomic suspend/resume helpers (via the
> > > modeset helpers). Would you be able to accomplish the same thing by just moving
> > > this call into the encoder enable callback?
> > >
> > > .enable is called on resume via the atomic commit framework, so everything is
> > > ordered properly. Of course, this would reset the dw_hdmi bridge on each enable,
> > > but I don't think that would be a problem?
> >
> > I tried and it sorta kinda half worked, but...
> >
> > 1. One of the problems solved by this patch is making "hot plug
> > detect" work after suspend / resume.  AKA: if you have nothing plugged
> > in to the HDMI port and then suspend/resume you need to be able to
> > detect when something is plugged in.  When nothing is plugged in then
> > the ".enable" isn't called at resume time.
> >
> 
> Ahh, ok. So we've hit this with other bridges/dongles as well, and yeah the
> solution is to keep the bridge powered up enough to detect hotplug, so you would
> need to do some work in .resume
> 
> Usually there's a second stage of enable where you power things on more fully
> and that is done in .enable
> 
> > 2. I'm not so convinced about the whole ordering being correct.
> > Unfortunately on my system (Chrome OS running the chromeos-4.19
> > kernel) we end up getting an i2c transfer before the ".enable" is
> > called.  I put a dump_stack() in the i2c transfer:
> >
> > [   42.212516] CPU: 0 PID: 1479 Comm: DrmThread Tainted: G         C
> >      4.19.47 #60
> > [   42.221182] Hardware name: Rockchip (Device Tree)
> > [   42.226449] [<c0211a64>] (unwind_backtrace) from [<c020cf0c>]
> > (show_stack+0x20/0x24)
> > [   42.235114] [<c020cf0c>] (show_stack) from [<c0a1b8d4>]
> > (dump_stack+0x84/0xa4)
> > [   42.243195] [<c0a1b8d4>] (dump_stack) from [<c067d7c4>]
> > (dw_hdmi_i2c_wait+0x6c/0xa8)
> > [   42.251858] [<c067d7c4>] (dw_hdmi_i2c_wait) from [<c067d9a8>]
> > (dw_hdmi_i2c_xfer+0x1a8/0x30c)
> > [   42.261298] [<c067d9a8>] (dw_hdmi_i2c_xfer) from [<c0798704>]
> > (__i2c_transfer+0x3a8/0x5d8)
> > [   42.270543] [<c0798704>] (__i2c_transfer) from [<c07989c8>]
> > (i2c_transfer+0x94/0xc4)
> > [   42.279204] [<c07989c8>] (i2c_transfer) from [<c064e6b0>]
> > (drm_do_probe_ddc_edid+0xbc/0x11c)
> > [   42.288642] [<c064e6b0>] (drm_do_probe_ddc_edid) from [<c064e744>]
> > (drm_probe_ddc+0x34/0x5c)
> > [   42.298081] [<c064e744>] (drm_probe_ddc) from [<c0651b98>]
> > (drm_get_edid+0x60/0x2e0)
> > [   42.306743] [<c0651b98>] (drm_get_edid) from [<c067d710>]
> > (dw_hdmi_connector_get_modes+0x30/0x78)
> > [   42.316669] [<c067d710>] (dw_hdmi_connector_get_modes) from
> > [<c0634f38>] (drm_helper_probe_single_connector_modes+0x218/0x5c0)
> > [   42.329413] [<c0634f38>] (drm_helper_probe_single_connector_modes)
> > from [<c065b38c>] (drm_mode_getconnector+0x144/0x418)
> > [   42.341573] [<c065b38c>] (drm_mode_getconnector) from [<c0646844>]
> > (drm_ioctl_kernel+0xa0/0xf0)
> > [   42.351303] [<c0646844>] (drm_ioctl_kernel) from [<c0646d34>]
> > (drm_ioctl+0x32c/0x3c0)
> > [   42.360063] [<c0646d34>] (drm_ioctl) from [<c03ed0cc>] (vfs_ioctl+0x28/0x44)
> > [   42.367946] [<c03ed0cc>] (vfs_ioctl) from [<c03edee8>]
> > (do_vfs_ioctl+0x718/0x8b0)
> > [   42.376315] [<c03edee8>] (do_vfs_ioctl) from [<c03ee0dc>]
> > (ksys_ioctl+0x5c/0x84)
> > [   42.384587] [<c03ee0dc>] (ksys_ioctl) from [<c03ee11c>] (sys_ioctl+0x18/0x1c)
> > [   42.392570] [<c03ee11c>] (sys_ioctl) from [<c02011d4>]
> > (__sys_trace_return+0x0/0x10)
> >
> > ...I see several transfers fail and then finally a few seconds later
> > finally see the .enable call:
> 
> This is usually solved by wrapping the code in detect() with an enable/disable
> pair to turn on enough circuitry to do the i2c writes for edid read.
> 
> >
> > [   44.021501] DOUG: dw_hdmi_rockchip_encoder_enable start
> > [   44.027792] DOUG: dw_hdmi_rockchip_encoder_enable end
> >
> > I can gather more info if it's useful.
> >
> > ===
> >
> > ...any chance we can keep the patch as-is, or do you have ideas of how
> > to solve the above problems?
> 
> Yeah, given the context I think this is Ok to apply as-is. Maybe we could
> shave out some of the work done in resume and move it to a helper called in
> enable/detect, but I don't think it's necessary to hold up getting things
> working.
> 
> Thanks for the detailed explanation (as always :)
> 
> Reviewed-by: Sean Paul <sean@poorly.run>

Applied both patches to drm-misc-next, thank you!

Sean

> 
> 
> >
> >
> > Thanks!
> >
> > -Doug
> 
> -- 
> Sean Paul, Software Engineer, Google / Chromium OS
> > [   42.351303] [<c0646844>] (drm_ioctl_kernel) from [<c0646d34>]
> > (drm_ioctl+0x32c/0x3c0)
> > [   42.360063] [<c0646d34>] (drm_ioctl) from [<c03ed0cc>] (vfs_ioctl+0x28/0x44)
> > [   42.367946] [<c03ed0cc>] (vfs_ioctl) from [<c03edee8>]
> > (do_vfs_ioctl+0x718/0x8b0)
> > [   42.376315] [<c03edee8>] (do_vfs_ioctl) from [<c03ee0dc>]
> > (ksys_ioctl+0x5c/0x84)
> > [   42.384587] [<c03ee0dc>] (ksys_ioctl) from [<c03ee11c>] (sys_ioctl+0x18/0x1c)
> > [   42.392570] [<c03ee11c>] (sys_ioctl) from [<c02011d4>]
> > (__sys_trace_return+0x0/0x10)
> >
> > ...I see several transfers fail and then finally a few seconds later
> > finally see the .enable call:
> >
> > [   44.021501] DOUG: dw_hdmi_rockchip_encoder_enable start
> > [   44.027792] DOUG: dw_hdmi_rockchip_encoder_enable end
> >
> > I can gather more info if it's useful.
> >
> > ===
> >
> > ...any chance we can keep the patch as-is, or do you have ideas of how
> > to solve the above problems?
> >
> >
> > Thanks!
> >
> > -Doug
> 
> -- 
> Sean Paul, Software Engineer, Google / Chromium OS

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
