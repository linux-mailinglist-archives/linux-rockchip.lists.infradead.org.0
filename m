Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE9D3817E
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Jun 2019 01:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4f9rf854jeS6CYNtll8+CJVWGpPeOG+6BG0W19vg00=; b=pJJzMBJSzPFHxj
	yvm+6ITCBspDMNihfQVCpDmTKyY6UAL8SqZj7dHQZnRQ3CASXrvRGoQVypZlIiU2nldAdgQuK18HB
	wrC2yDCgkashRDHtbRjGrIXAu47yKqj2rCXR94dBKGuCgJP3SAv67131TDXdi9GnJYQkN/yXZENCR
	/BYkUTlWhBiOICjt1Xv8KWs5NRpf7cLprzlM9KcWzltbxHjQPTx0lHh8MRSoDM05kSILB8zPNQOQk
	CzqCpJXbLbOpsRElGA95/38/SWg+Wu9hch4IiIzFx4SjnGwG93UKCHjCXPo26mnoADCdf18vxyWZx
	A886ZsLZQVYpA2d6G1cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1OF-0006vW-RV; Thu, 06 Jun 2019 23:01:47 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ1LC-0004ny-N8
 for linux-rockchip@lists.infradead.org; Thu, 06 Jun 2019 22:58:41 +0000
Received: by mail-it1-x143.google.com with SMTP id m187so2669939ite.3
 for <linux-rockchip@lists.infradead.org>; Thu, 06 Jun 2019 15:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nZyg+4+QNKbKPq0WwkGA+iMce1tFBIQolx/rr5mhJFU=;
 b=SQ6VQ7xXspnotBNh7TJpasqfkB9SD+WXfZFDbmWBNN4+1xeq/tt2vj7xg9kOfp8Jn+
 2tqwB/HzqlKfvSfg7a25R8OwV1bJh1loaTbudTWz8QmBkGkLMkmobmKogKb/+FnTOa1g
 /sie1KrlCOWdVZiWWJLXrlxPkf/E1T1lI1Wqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nZyg+4+QNKbKPq0WwkGA+iMce1tFBIQolx/rr5mhJFU=;
 b=lFEksXYRIjrajWYxE9SgPmFawV0HigePb7q74HIgV9ehupOxMxamizdjbErUhsYbDn
 XihMiEQVId7JseA6QNCYVB3MkXZg9NiudZh8eRRtOidzKqU6G/gLpJp20iR5pvMfKd7J
 uVyHj7adeD3a06I42kOzMofYW7ZroQrE7Nzode4H7fYAkqKpDYNDXgUlhr8fmULZ3rJw
 3kpOhLNsWWyrTy++VdM9WcCFw+TRsyHYtcVqhEo7PD+GXhjGhMof0yppC5pDkrUReBZM
 nhYFUAE0Y45sv7kN+NtXEf0Kp0RYN3tj4G5DxHgyBkP5veZ+c7BtR1HZz0UITxucAVzk
 SzyQ==
X-Gm-Message-State: APjAAAWGCAdqVVUdkZt21Bu7cLmXoGnksdSK6wsB9iaPzUagHItUNqFS
 jiWQFy4PG7kIEYPZJj3VH4bPjBdJrx0=
X-Google-Smtp-Source: APXvYqzEzqSqaZRoTqhpaIlrPlyRHeyumpijAPAGJQrk7dwOWiZpqQecqfFubfe5XwqdJA3JVwRJ8g==
X-Received: by 2002:a24:5547:: with SMTP id e68mr2148299itb.83.1559861916253; 
 Thu, 06 Jun 2019 15:58:36 -0700 (PDT)
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com.
 [209.85.166.180])
 by smtp.gmail.com with ESMTPSA id e195sm5814748itc.1.2019.06.06.15.58.33
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 15:58:33 -0700 (PDT)
Received: by mail-it1-f180.google.com with SMTP id m187so2669797ite.3
 for <linux-rockchip@lists.infradead.org>; Thu, 06 Jun 2019 15:58:33 -0700 (PDT)
X-Received: by 2002:a02:9143:: with SMTP id b3mr9564655jag.12.1559861912576;
 Thu, 06 Jun 2019 15:58:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190604204207.168085-1-dianders@chromium.org>
 <20190604204207.168085-2-dianders@chromium.org>
 <20190606164221.GI17077@art_vandelay>
In-Reply-To: <20190606164221.GI17077@art_vandelay>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 6 Jun 2019 15:58:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xt6Oad9yQHZz+nwANV1MCvGc6XCgOf8HawimVQtwWsEg@mail.gmail.com>
Message-ID: <CAD=FV=Xt6Oad9yQHZz+nwANV1MCvGc6XCgOf8HawimVQtwWsEg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_155838_801507_72F9EFB1 
X-CRM114-Status: GOOD (  24.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

Hi,

On Thu, Jun 6, 2019 at 9:42 AM Sean Paul <sean@poorly.run> wrote:
>
> On Tue, Jun 04, 2019 at 01:42:07PM -0700, Douglas Anderson wrote:
> > On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> > cycle:
> >
> > 1. You lose the ability to detect an HDMI device being plugged in.
> >
> > 2. If you're using the i2c bus built in to dw_hdmi then it stops
> > working.
> >
> > Let's call the core dw-hdmi's suspend/resume functions to restore
> > things.
> >
> > NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
> > "late/early" versions of suspend/resume because we found that the VOP
> > was sometimes resuming before dw_hdmi and then calling into us before
> > we were fully resumed.  For now I have gone back to the normal
> > suspend/resume because I can't reproduce the problems.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> > Changes in v3:
> > - dw_hdmi_resume() is now a void function (Laurent)
> >
> > Changes in v2:
> > - Add forgotten static (Laurent)
> > - No empty stub for suspend (Laurent)
> >
> >  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > index 4cdc9f86c2e5..7bb0f922b303 100644
> > --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > @@ -542,11 +542,25 @@ static int dw_hdmi_rockchip_remove(struct platform_device *pdev)
> >       return 0;
> >  }
> >
> > +static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
> > +{
> > +     struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
> > +
> > +     dw_hdmi_resume(hdmi->hdmi);
>
> The rockchip driver is already using the atomic suspend/resume helpers (via the
> modeset helpers). Would you be able to accomplish the same thing by just moving
> this call into the encoder enable callback?
>
> .enable is called on resume via the atomic commit framework, so everything is
> ordered properly. Of course, this would reset the dw_hdmi bridge on each enable,
> but I don't think that would be a problem?

I tried and it sorta kinda half worked, but...

1. One of the problems solved by this patch is making "hot plug
detect" work after suspend / resume.  AKA: if you have nothing plugged
in to the HDMI port and then suspend/resume you need to be able to
detect when something is plugged in.  When nothing is plugged in then
the ".enable" isn't called at resume time.

2. I'm not so convinced about the whole ordering being correct.
Unfortunately on my system (Chrome OS running the chromeos-4.19
kernel) we end up getting an i2c transfer before the ".enable" is
called.  I put a dump_stack() in the i2c transfer:

[   42.212516] CPU: 0 PID: 1479 Comm: DrmThread Tainted: G         C
     4.19.47 #60
[   42.221182] Hardware name: Rockchip (Device Tree)
[   42.226449] [<c0211a64>] (unwind_backtrace) from [<c020cf0c>]
(show_stack+0x20/0x24)
[   42.235114] [<c020cf0c>] (show_stack) from [<c0a1b8d4>]
(dump_stack+0x84/0xa4)
[   42.243195] [<c0a1b8d4>] (dump_stack) from [<c067d7c4>]
(dw_hdmi_i2c_wait+0x6c/0xa8)
[   42.251858] [<c067d7c4>] (dw_hdmi_i2c_wait) from [<c067d9a8>]
(dw_hdmi_i2c_xfer+0x1a8/0x30c)
[   42.261298] [<c067d9a8>] (dw_hdmi_i2c_xfer) from [<c0798704>]
(__i2c_transfer+0x3a8/0x5d8)
[   42.270543] [<c0798704>] (__i2c_transfer) from [<c07989c8>]
(i2c_transfer+0x94/0xc4)
[   42.279204] [<c07989c8>] (i2c_transfer) from [<c064e6b0>]
(drm_do_probe_ddc_edid+0xbc/0x11c)
[   42.288642] [<c064e6b0>] (drm_do_probe_ddc_edid) from [<c064e744>]
(drm_probe_ddc+0x34/0x5c)
[   42.298081] [<c064e744>] (drm_probe_ddc) from [<c0651b98>]
(drm_get_edid+0x60/0x2e0)
[   42.306743] [<c0651b98>] (drm_get_edid) from [<c067d710>]
(dw_hdmi_connector_get_modes+0x30/0x78)
[   42.316669] [<c067d710>] (dw_hdmi_connector_get_modes) from
[<c0634f38>] (drm_helper_probe_single_connector_modes+0x218/0x5c0)
[   42.329413] [<c0634f38>] (drm_helper_probe_single_connector_modes)
from [<c065b38c>] (drm_mode_getconnector+0x144/0x418)
[   42.341573] [<c065b38c>] (drm_mode_getconnector) from [<c0646844>]
(drm_ioctl_kernel+0xa0/0xf0)
[   42.351303] [<c0646844>] (drm_ioctl_kernel) from [<c0646d34>]
(drm_ioctl+0x32c/0x3c0)
[   42.360063] [<c0646d34>] (drm_ioctl) from [<c03ed0cc>] (vfs_ioctl+0x28/0x44)
[   42.367946] [<c03ed0cc>] (vfs_ioctl) from [<c03edee8>]
(do_vfs_ioctl+0x718/0x8b0)
[   42.376315] [<c03edee8>] (do_vfs_ioctl) from [<c03ee0dc>]
(ksys_ioctl+0x5c/0x84)
[   42.384587] [<c03ee0dc>] (ksys_ioctl) from [<c03ee11c>] (sys_ioctl+0x18/0x1c)
[   42.392570] [<c03ee11c>] (sys_ioctl) from [<c02011d4>]
(__sys_trace_return+0x0/0x10)

...I see several transfers fail and then finally a few seconds later
finally see the .enable call:

[   44.021501] DOUG: dw_hdmi_rockchip_encoder_enable start
[   44.027792] DOUG: dw_hdmi_rockchip_encoder_enable end

I can gather more info if it's useful.

===

...any chance we can keep the patch as-is, or do you have ideas of how
to solve the above problems?


Thanks!

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
