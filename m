Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DBB1508BB
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Feb 2020 15:47:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=weKkCV2z4i7ebDsRO6PM0pGtB72K9BlFg2yJ9YuyBEM=; b=NtaVT915yebYQa5+glai/Qv8e
	TKWJ4ff/fKKJx/b0vscHOGGzhbVForPmUkC8n9zMLBr6AHlR6XmCVzwaqe/HyCGCgRyCH1ydthXrz
	iJK6e6RxPRRIlnpQQOSoPuvWZttN0MzSLGLcZyX3lceXYEk+hvu1tgMFNTQxf2yP34iIURegcfo/J
	5fAyWmhbZHSVspIFY9RUAv4MuyqZD8gtoMGoej9l+k3JOmGSFZcB9FzXGYJvtokD25+FGuGHmp52W
	FFN6IpZnbrNeiN9b2T7YiWVtGttQQ00/5GaEd4lOWT6II7aRLKXzwZ8eb8rWgPfhC6rT5DS+aiSFa
	n/OYOXUCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyd0P-0001Gs-DJ; Mon, 03 Feb 2020 14:47:17 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyd0M-0001GV-Ak
 for linux-rockchip@lists.infradead.org; Mon, 03 Feb 2020 14:47:15 +0000
Received: by mail-yw1-xc41.google.com with SMTP id z141so13328943ywd.13
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Feb 2020 06:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gA0W/KlV+U57cz/mUwDb4ZUOBEFGKerqsHFmmFk8tpQ=;
 b=Y1gJV+zbRzb/xSq7AjtDz3XNfSzz/xRK1GvL+HqC2n9lllZFQu2D/n45oJrnye/IDV
 m4pmfpIajhxH5fiZUFW0h/Q0TlSZ89WeaXq+VIFh2tjfb/EfTFqfEkocJfeRZvMKumF+
 v3D/Q/3U+Q3TzK6RU5aT/XxWBal3+3l8jGlVg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gA0W/KlV+U57cz/mUwDb4ZUOBEFGKerqsHFmmFk8tpQ=;
 b=VxQ9xn11xUBr8WhZxVmLCQ3QjfKbGUVtfSSeHdEpTXXQG67Xk9fUKesF49shnqY4DV
 1BctkHpHSl2vHFMaY3Offo5rX8ANn8Gkct2Ns272XyGVuOCAtq5k6xx18kUZMay95qNr
 cwX+pAv4RTqYTFJA1uw+BYO523mr/3xfK4EvnUOkqzjWwG1QrWOeYPwID4O+fkzH5qeQ
 knWFVGpfigYbEn9yXW6+Qz4JAFrAzkkpD5Ahqn1s/J0YTtXO+rp79G7zna/ObbTHp7GF
 coHaun4Qwa5iMHCjfAqIIHufbVf++iVtxJREQnrLoUYJUv8m198KEtyI6sQORjz7tCQk
 I9bA==
X-Gm-Message-State: APjAAAXC5tVlMBN+Ex4+/W/6JHG0kTcgVU1Boj2sO8DEARGyVH597eJw
 VMaFg3YiU0lTVBFXlQWyIcqCeQ==
X-Google-Smtp-Source: APXvYqyK+Gi5coqs7sMMygeO7co1ojETPl1HhtBbb+QOlF94GF+XAarM1JwpIsN/0X2lFoklSSqVVg==
X-Received: by 2002:a25:2cf:: with SMTP id 198mr8629313ybc.383.1580741231299; 
 Mon, 03 Feb 2020 06:47:11 -0800 (PST)
Received: from bill-the-cat
 (2606-a000-1401-86dd-9de4-814a-dc32-2a12.inf6.spectrum.com.
 [2606:a000:1401:86dd:9de4:814a:dc32:2a12])
 by smtp.gmail.com with ESMTPSA id g65sm8203127ywd.109.2020.02.03.06.47.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Feb 2020 06:47:10 -0800 (PST)
Date: Mon, 3 Feb 2020 09:47:08 -0500
From: Tom Rini <trini@konsulko.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Anatolij Gustschin <agust@denx.de>
Subject: Re: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Message-ID: <20200203144708.GK13379@bill-the-cat>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
 <20200123162845.10651-5-jagan@amarulasolutions.com>
 <20200124152735.GR26536@bill-the-cat>
 <CAMty3ZBQ_mRY4ojo_4iHUzup2tD-FO6ZmskwJyXskg4O4iHz+Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZBQ_mRY4ojo_4iHUzup2tD-FO6ZmskwJyXskg4O4iHz+Q@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_064714_383229_FE3EF84D 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: multipart/mixed; boundary="===============1481525903255366705=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============1481525903255366705==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OaJtNTxAPudgaAxc"
Content-Disposition: inline


--OaJtNTxAPudgaAxc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 03, 2020 at 04:55:27PM +0530, Jagan Teki wrote:
> On Fri, Jan 24, 2020 at 8:57 PM Tom Rini <trini@konsulko.com> wrote:
> >
> > On Thu, Jan 23, 2020 at 09:58:45PM +0530, Jagan Teki wrote:
> >
> > > Enable config options and console setting to respective
> > > rk3399 board for HDMI output.
> > >
> > > Boards supported and tested on this patch are:
> > > - NanoPc T4
> > > - NanoPi M4
> > > - NanoPi Neo4
> > > - ROC-RK3399-PC
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > >  configs/nanopc-t4-rk3399_defconfig   | 6 ++++++
> > >  configs/nanopi-m4-rk3399_defconfig   | 6 ++++++
> > >  configs/nanopi-neo4-rk3399_defconfig | 6 ++++++
> > >  configs/roc-pc-rk3399_defconfig      | 6 ++++++
> > >  include/configs/evb_rk3399.h         | 5 +++++
> > >  5 files changed, 29 insertions(+)
> > >
> > > diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-r=
k3399_defconfig
> > > index bd6d60ff6c..17e8a18d31 100644
> > > --- a/configs/nanopc-t4-rk3399_defconfig
> > > +++ b/configs/nanopc-t4-rk3399_defconfig
> > > @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
> > >  CONFIG_USB_ETHER_SMSC95XX=3Dy
> > >  CONFIG_SPL_TINY_MEMSET=3Dy
> > >  CONFIG_ERRNO_STR=3Dy
> > > +CONFIG_DM_VIDEO=3Dy
> > > +CONFIG_VIDEO_BPP16=3Dy
> > > +CONFIG_VIDEO_BPP32=3Dy
> > > +CONFIG_DISPLAY=3Dy
> > > +CONFIG_VIDEO_ROCKCHIP=3Dy
> > > +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> > > diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-r=
k3399_defconfig
> > > index 74ede13c23..b73b2fdc27 100644
> > > --- a/configs/nanopi-m4-rk3399_defconfig
> > > +++ b/configs/nanopi-m4-rk3399_defconfig
> > > @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
> > >  CONFIG_USB_ETHER_SMSC95XX=3Dy
> > >  CONFIG_SPL_TINY_MEMSET=3Dy
> > >  CONFIG_ERRNO_STR=3Dy
> > > +CONFIG_DM_VIDEO=3Dy
> > > +CONFIG_VIDEO_BPP16=3Dy
> > > +CONFIG_VIDEO_BPP32=3Dy
> > > +CONFIG_DISPLAY=3Dy
> > > +CONFIG_VIDEO_ROCKCHIP=3Dy
> > > +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> > > diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-ne=
o4-rk3399_defconfig
> > > index a44124aac0..2ecb50967b 100644
> > > --- a/configs/nanopi-neo4-rk3399_defconfig
> > > +++ b/configs/nanopi-neo4-rk3399_defconfig
> > > @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
> > >  CONFIG_USB_ETHER_SMSC95XX=3Dy
> > >  CONFIG_SPL_TINY_MEMSET=3Dy
> > >  CONFIG_ERRNO_STR=3Dy
> > > +CONFIG_DM_VIDEO=3Dy
> > > +CONFIG_VIDEO_BPP16=3Dy
> > > +CONFIG_VIDEO_BPP32=3Dy
> > > +CONFIG_DISPLAY=3Dy
> > > +CONFIG_VIDEO_ROCKCHIP=3Dy
> > > +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> > > diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_=
defconfig
> > > index 3a051d9b0c..a9f99f992d 100644
> > > --- a/configs/roc-pc-rk3399_defconfig
> > > +++ b/configs/roc-pc-rk3399_defconfig
> > > @@ -56,3 +56,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
> > >  CONFIG_USB_ETHER_SMSC95XX=3Dy
> > >  CONFIG_SPL_TINY_MEMSET=3Dy
> > >  CONFIG_ERRNO_STR=3Dy
> > > +CONFIG_DM_VIDEO=3Dy
> > > +CONFIG_VIDEO_BPP16=3Dy
> > > +CONFIG_VIDEO_BPP32=3Dy
> > > +CONFIG_DISPLAY=3Dy
> > > +CONFIG_VIDEO_ROCKCHIP=3Dy
> > > +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> > > diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk339=
9.h
> > > index c0b0358893..09eb361655 100644
> > > --- a/include/configs/evb_rk3399.h
> > > +++ b/include/configs/evb_rk3399.h
> > > @@ -6,6 +6,11 @@
> > >  #ifndef __EVB_RK3399_H
> > >  #define __EVB_RK3399_H
> > >
> > > +#define ROCKCHIP_DEVICE_SETTINGS \
> > > +             "stdin=3Dserial,cros-ec-keyb\0" \
> > > +             "stdout=3Dserial,vidconsole\0" \
> > > +             "stderr=3Dserial,vidconsole\0"
> > > +
> > >  #include <configs/rk3399_common.h>
> > >
> > >  #if defined(CONFIG_ENV_IS_IN_MMC)
> >
> > This seems like another commit (along with the question I saw about
> > i.MX FB not showing the right colors) 2cc393f32fd9 needs to be reworked
> > so that we default to enabling everything still but let boards opt out
> > rather than forcing everyone to opt-in as it seems like there's a lot of
> > cases where people need to opt-in and didn't know.
>=20
> yes, this evb board config is common across most of the rk3399
> defconfig boards. this patch enable hdmi on few rk3399 boards all use
> same config file, evb_rk3399.h

Yes, the ROCKCHIP_DEVICE_SETTINGS part makes sense, but the rest looks
very much like part of we need to rework the commit I mentioned.  I
don't object to this going in as-is.  Anatolij, how goes the rework of
things however?  I do want to see that get in sooner rather than later
so we can sort out other regressions from just a lack of CONFIG options
being enabled.  Thanks!

--=20
Tom

--OaJtNTxAPudgaAxc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl44MmgACgkQh/n2NdMd
dlKFpBAAw+P/LOk3G7OEc+n8jERjDEiuDojQgTz6ttbwPuWFfCkje6tNsk4pLK0N
TQPS/dXd4NN+N0BK2RBCFxmdgToG/jQWMQg1YpjluJrIPcvsSjq3b9FsQffr/3Vb
Pak55/JgIKWaufHVNmdV8/SetWdFCorsztik+Hz5AptJLobQ64Ay7J/CtZQ5vd8o
o0ymUGirKnlBhB3LW6uLxrHc30OnbycozyRWUmOr0tC5d83szGVYEPOQgRAU7iQ6
EfvsP3dDZpxrY+LbMs/eSy0QvHb2dUi+6zenGo5DotspGtNj7YpQjCVhoNBHuNJS
Z3ad/MF8LW3xZw02hPs68g6UWwcCVq4mxjJQ1qnvmdAFjDEbZzP3xlVS83/96vCM
Y1uBE1z//D6g7KWr58opuW2auYrLA+ZzXbRbn0fejBIY49heXGftEptBYD3vqMnr
/HnOsu8SASdQGgZEty4VTkjO6Z1B60aFL6vcFOWzZeXAAKbqggKTfy2rTZghWXME
SxvEaF6kK6oFqf6YECgZC2gI9ikK1myy3nCo1nTWCtyK2TFd15TV9gT1930uVelJ
LJY1g+PyE9cDhU7DyS5ss1BbBKxYdhhsMtNDyKf6EHSFKnAXjXwdF4HaMAgrFhMx
tZSh4I8DV66fF0o+L2f4YpnURi2FH6fLWEBH+WbOn6VwJ7KklnM=
=0vZQ
-----END PGP SIGNATURE-----

--OaJtNTxAPudgaAxc--


--===============1481525903255366705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1481525903255366705==--

