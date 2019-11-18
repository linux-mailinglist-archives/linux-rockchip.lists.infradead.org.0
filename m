Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C701006B9
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 14:44:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQWXjac7206g0eY2SwMEB2gwvei7+4pxlmjFiFAuyso=; b=LKM7L7SAOE9wKV
	pHUEeO6Sf0Yo4yoitBLJYwf+xQJ8PLmR4kalWcHpUF6j+GBQcyjyOGi5CC/vEFcwSiiMWfi8VmH1W
	IV4OUGKXqSw3+d+szn++jTiDrcrUkXVxk9+IEhxNVc2LspDo3EI/74uBSPRFPpvytfb2sKPWfA4Xg
	HM+idt4kxzAd5W9nYTRgg4dTMaTkkzbD89nE8dc+wmbNEBEOf+cLpWaw/Jcr12zirLepdkY3fSSjL
	M1u6lU3afRlQRJ0T9ULeR+LVqc5aBBm9zl2bSod3YLzH245/dQnsywh6w0lXD0uX1sZJBCoZLsryZ
	iL4zxSYqs6PvT7bA0ZRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWhKd-0004x3-EN; Mon, 18 Nov 2019 13:44:43 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWhKZ-0004w5-6D
 for linux-rockchip@lists.infradead.org; Mon, 18 Nov 2019 13:44:41 +0000
Received: by mail-io1-xd42.google.com with SMTP id i13so18802046ioj.5
 for <linux-rockchip@lists.infradead.org>; Mon, 18 Nov 2019 05:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=87IElShL6N9Kabohqsk3H7zh3qUg8dr6qIWmOyoVTpo=;
 b=bBGP122+i5/ni/xnVHNzS/hBJqYHV//MSV7lKndNo8Y8bIp+4C9wNi3iv8lchiYWxD
 AUGkwd4YDOtzeJJngLbnKVffbl0fUflj8QTzMDn3znH/fA5oi+n+VYaQtogtEsz444TG
 Ycc5E5nEmPxCn+RNJE6SP0X3C5E36W1s83MNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=87IElShL6N9Kabohqsk3H7zh3qUg8dr6qIWmOyoVTpo=;
 b=gAJhl1g9W3ba9TTndSGwFvZ4in9drP1S1a5jAUR7hDLYKO+fMPK2LENoJXFzsWBHeT
 8S+ByR44MnI4BoYdjQmXxHa6nkoqkVSRTxroQlgr3y+3vIAATF2ifWLguJrwowZG0jYh
 9DXCnG0V+HI2/S0XpMXr8ChbB2gWa1+iuqTPqPISwQLYoJA3yeOOpqB0ymieDPjemfhu
 SQpCe0HT8LWs15MtpaLsKwJPskw+SWY4Xpu7HNhAshoonHEJZHdwKi4kR92owCrGbcbD
 jU7lK2fs2RI7DzvJpdJQiMvXlrgJ8G7HaUG8nUaVXltVPx2J1jmAcf/5zd6rON8x14y+
 ugLQ==
X-Gm-Message-State: APjAAAV5+Z7u2DrdLYpExL5fYRMKkYxNEMmi4DMmKERfA1eHpW6MuS23
 DtKJ+KUQEdNm24zWb6ZtTtLv/hovH2V3CdIjI4hRgarYWC9H7w==
X-Google-Smtp-Source: APXvYqw+C6ZU6askRUHDxlCVHCUMQf7uQmElDISICObJSOqhIKXQFiAcJkbZZ8NDnk2oKtZleV6U1fofdCXNOqWW/Hc=
X-Received: by 2002:a6b:7111:: with SMTP id q17mr13477861iog.28.1574084677149; 
 Mon, 18 Nov 2019 05:44:37 -0800 (PST)
MIME-Version: 1.0
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
 <20191022175458.22604-8-jagan@amarulasolutions.com>
 <87y2x3ga9q.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
In-Reply-To: <87y2x3ga9q.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 18 Nov 2019 19:14:26 +0530
Message-ID: <CAMty3ZDkW98E=BfimQM7XiUkxKOqcOnvEwe44iQ_KphUXZth1g@mail.gmail.com>
Subject: Re: [PATCH 7/9] gadget: rockchip: Add rk3399 USB_GADGET_PRODUCT_NUM
To: Levin Du <djw@t-chip.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_054439_375158_FFA04972 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 3:10 PM <djw@t-chip.com.cn> wrote:
>
> Jagan Teki <jagan@amarulasolutions.com> writes:
>
> > Add 0x330a for rk3399 gadget product number.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  drivers/usb/gadget/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
> > index 2da8b40e05..b0e61f3fcd 100644
> > --- a/drivers/usb/gadget/Kconfig
> > +++ b/drivers/usb/gadget/Kconfig
> > @@ -61,7 +61,7 @@ config USB_GADGET_PRODUCT_NUM
> >       default 0x310a if ROCKCHIP_RK3036
> >       default 0x310c if ROCKCHIP_RK3128
> >       default 0x320a if ROCKCHIP_RK3229 || ROCKCHIP_RK3288
> > -     default 0x330a if ROCKCHIP_RK3328
> > +     default 0x330a if ROCKCHIP_RK3328 || ROCKCHIP_RK3399
> >       default 0x0
> >       help
> >         Product ID of the USB device emulated, reported to the host device.
>
> With 0x330a, the device shown in `lsusb` is:
>
>     Bus 002 Device 024: ID 2207:330a Fuzhou Rockchip Electronics Company RK3368 in Mask ROM mode
> While using 0x330c, the device shown in `lsusb` is:
>
>     Bus 002 Device 025: ID 2207:330c Fuzhou Rockchip Electronics Company RK3399 in Mask ROM mode
>
> Therefore, this should be modified to use 0x330c:
>
> +       default 0x330c if ROCKCHIP_RK3399

Can you link the host driver for the rockchip gadget, I didn't see the
name using lsusb. My output on ubuntu host is
Bus 001 Device 009: ID 2207:330a

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
