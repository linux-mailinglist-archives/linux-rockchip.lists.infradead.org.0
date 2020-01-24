Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11605148B3C
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 Jan 2020 16:27:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0hk2bKucgd16b98EQrNzBOnf0XyVzpMJW8GxsZEoOAI=; b=Y7r+/SedjCxvYFf8W+3GjvUzN
	LtFWN70OJJu2ziUPbrB1x1JnPa0vx2GlLn06z0hlPk83TbrQfRK+g5YG/IBGod9Lj48NPTFmbrOsR
	H7q/JXCfOUb5gPssdzGOhjOVfG9p0Cu6t2sRgbDhRU/lrLidenDvRUwR5ATFylfFeXSQJk9VE4cGL
	g3CSpESjd4BR0olOzjlg6ms6WiqHsQLcm4ihiPIqyJDHBMyJiqVDgziaE3w9X3jGsbcnqd8LutIJZ
	rPIvmcBKoaw36xLTPJjtEXs4UkRVHaelSpqF0OW4RT99FJfcQc+zTUavQKvMgsLiV+fj9ESSYqbvv
	vnpaFdvnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0s7-00052d-Ft; Fri, 24 Jan 2020 15:27:47 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0s4-00051X-D7
 for linux-rockchip@lists.infradead.org; Fri, 24 Jan 2020 15:27:45 +0000
Received: by mail-yb1-xb43.google.com with SMTP id w17so1094152ybm.1
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Jan 2020 07:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=o+khmEMULcXFe9gz0YtrtP6zNw5Aafrnh4/Sys25Mt4=;
 b=c046JTA8LB2BkRpeLM7lZZxTgbfvXP22hBW/DIE/82pJ1xzqqayflqmnKD/0UoBsbP
 f7OEUDLxrWdghVSrsG1IasIRwNfjMxiHY07XDiURewReZhV5HtBMV+uO7RugS7ZVC0w8
 ShJToOGBHslxVIqojQdT2uwUThytCF1WQgRAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=o+khmEMULcXFe9gz0YtrtP6zNw5Aafrnh4/Sys25Mt4=;
 b=UsV2vKLvwxwKrZDpbnBIc8BlizSY7nJ9tSXXjk5fbfPM+FYXNJDiHHxLQutqYbf0t8
 L0AwIwfEQLd2FmE8TIsxMCLWhSmLQJgm7uVlmSt8nLY3o8Ml+PtmkHsy8SVm63z2HGh9
 rn6VyEDA5FNXXRm2M0mJjp/FHKu36Kd4niwxb/Wy9Q6XQCi4phLDQhdD66xfBdXjmPlI
 8tswLSyJPp8xhGYwrQBPEe9VXo/QhYq9Pb9Ge7WuwDklSDm4I8SGl8XVNmFJnzcz19BN
 ImOrLSqUgTU/OKmjqzohNNu0TK0RBWeRtWpeNz0IFksPLIYOVbe+sc8CvXrgFyh1evGr
 Ksgg==
X-Gm-Message-State: APjAAAWefpwYAEIZi8XFugpp0zkDiO/wUYL7uPfAyEl/xhBuK9+w+vfB
 8vR3w4ujEKYJyuMCH49qHLwW2w==
X-Google-Smtp-Source: APXvYqynMsW9i8Yo3EErW+NZ0kJ6mmjtoliw7baBUC6yLdPGQrW9sOQPwiO3X8QJvYLe+OgYfIfRlA==
X-Received: by 2002:a25:d9c3:: with SMTP id q186mr2898054ybg.466.1579879658727; 
 Fri, 24 Jan 2020 07:27:38 -0800 (PST)
Received: from bill-the-cat
 (2606-a000-1401-86dd-650b-9d45-de1d-6190.inf6.spectrum.com.
 [2606:a000:1401:86dd:650b:9d45:de1d:6190])
 by smtp.gmail.com with ESMTPSA id 71sm2366700ywd.59.2020.01.24.07.27.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 Jan 2020 07:27:38 -0800 (PST)
Date: Fri, 24 Jan 2020 10:27:35 -0500
From: Tom Rini <trini@konsulko.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Anatolij Gustschin <agust@denx.de>
Subject: Re: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Message-ID: <20200124152735.GR26536@bill-the-cat>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
 <20200123162845.10651-5-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20200123162845.10651-5-jagan@amarulasolutions.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_072744_456242_8676B946 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: multipart/mixed; boundary="===============5491684901911844395=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============5491684901911844395==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Uc2nn8srCdMFAHlk"
Content-Disposition: inline


--Uc2nn8srCdMFAHlk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 23, 2020 at 09:58:45PM +0530, Jagan Teki wrote:

> Enable config options and console setting to respective
> rk3399 board for HDMI output.
>=20
> Boards supported and tested on this patch are:
> - NanoPc T4
> - NanoPi M4
> - NanoPi Neo4
> - ROC-RK3399-PC
>=20
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  configs/nanopc-t4-rk3399_defconfig   | 6 ++++++
>  configs/nanopi-m4-rk3399_defconfig   | 6 ++++++
>  configs/nanopi-neo4-rk3399_defconfig | 6 ++++++
>  configs/roc-pc-rk3399_defconfig      | 6 ++++++
>  include/configs/evb_rk3399.h         | 5 +++++
>  5 files changed, 29 insertions(+)
>=20
> diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk339=
9_defconfig
> index bd6d60ff6c..17e8a18d31 100644
> --- a/configs/nanopc-t4-rk3399_defconfig
> +++ b/configs/nanopc-t4-rk3399_defconfig
> @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
>  CONFIG_USB_ETHER_SMSC95XX=3Dy
>  CONFIG_SPL_TINY_MEMSET=3Dy
>  CONFIG_ERRNO_STR=3Dy
> +CONFIG_DM_VIDEO=3Dy
> +CONFIG_VIDEO_BPP16=3Dy
> +CONFIG_VIDEO_BPP32=3Dy
> +CONFIG_DISPLAY=3Dy
> +CONFIG_VIDEO_ROCKCHIP=3Dy
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk339=
9_defconfig
> index 74ede13c23..b73b2fdc27 100644
> --- a/configs/nanopi-m4-rk3399_defconfig
> +++ b/configs/nanopi-m4-rk3399_defconfig
> @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
>  CONFIG_USB_ETHER_SMSC95XX=3Dy
>  CONFIG_SPL_TINY_MEMSET=3Dy
>  CONFIG_ERRNO_STR=3Dy
> +CONFIG_DM_VIDEO=3Dy
> +CONFIG_VIDEO_BPP16=3Dy
> +CONFIG_VIDEO_BPP32=3Dy
> +CONFIG_DISPLAY=3Dy
> +CONFIG_VIDEO_ROCKCHIP=3Dy
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-r=
k3399_defconfig
> index a44124aac0..2ecb50967b 100644
> --- a/configs/nanopi-neo4-rk3399_defconfig
> +++ b/configs/nanopi-neo4-rk3399_defconfig
> @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
>  CONFIG_USB_ETHER_SMSC95XX=3Dy
>  CONFIG_SPL_TINY_MEMSET=3Dy
>  CONFIG_ERRNO_STR=3Dy
> +CONFIG_DM_VIDEO=3Dy
> +CONFIG_VIDEO_BPP16=3Dy
> +CONFIG_VIDEO_BPP32=3Dy
> +CONFIG_DISPLAY=3Dy
> +CONFIG_VIDEO_ROCKCHIP=3Dy
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defc=
onfig
> index 3a051d9b0c..a9f99f992d 100644
> --- a/configs/roc-pc-rk3399_defconfig
> +++ b/configs/roc-pc-rk3399_defconfig
> @@ -56,3 +56,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
>  CONFIG_USB_ETHER_SMSC95XX=3Dy
>  CONFIG_SPL_TINY_MEMSET=3Dy
>  CONFIG_ERRNO_STR=3Dy
> +CONFIG_DM_VIDEO=3Dy
> +CONFIG_VIDEO_BPP16=3Dy
> +CONFIG_VIDEO_BPP32=3Dy
> +CONFIG_DISPLAY=3Dy
> +CONFIG_VIDEO_ROCKCHIP=3Dy
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk3399.h
> index c0b0358893..09eb361655 100644
> --- a/include/configs/evb_rk3399.h
> +++ b/include/configs/evb_rk3399.h
> @@ -6,6 +6,11 @@
>  #ifndef __EVB_RK3399_H
>  #define __EVB_RK3399_H
> =20
> +#define ROCKCHIP_DEVICE_SETTINGS \
> +		"stdin=3Dserial,cros-ec-keyb\0" \
> +		"stdout=3Dserial,vidconsole\0" \
> +		"stderr=3Dserial,vidconsole\0"
> +
>  #include <configs/rk3399_common.h>
> =20
>  #if defined(CONFIG_ENV_IS_IN_MMC)

This seems like another commit (along with the question I saw about
i.MX FB not showing the right colors) 2cc393f32fd9 needs to be reworked
so that we default to enabling everything still but let boards opt out
rather than forcing everyone to opt-in as it seems like there's a lot of
cases where people need to opt-in and didn't know.

--=20
Tom

--Uc2nn8srCdMFAHlk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl4rDOQACgkQh/n2NdMd
dlIMsw//Siyk8dgBJqO6PiD3hE1PRyWVMcCzfwmhths5+0v1V/PVbwNhrFfXdBkA
r4NKvMI1AvM+LzpEBrn8djgxEaVHd0mc1INJ1lFDNvc6/fU3qgiOXYE7WKm2If02
4n84lqqk7o1vE3cw1UikooTOj4uOkrW0m7lSvb8mUbBaq50awDWfmdGZbEk5P0g8
jMIOpVBkK4pHHfr9uP+uAilmqeQcZG8rf1lTXl89eBDn2LuCR6Fc/JVb+fW11zoY
lYgJdhDonDM2pIPI7QJdP9Hr+u6E5nnQ95TAbUb7g0OPTvlT7CE+gTdhsG0rTmSk
eQTiLRz8zPQlWe+Swm5JIhAJaimS3hoXTNfM0zh4kt7MmWVs3u8/uxDn7s/m0pcG
THKyK1SWi+VlmUV1TB7ZIyL8/eWD6925H8dt+joKY2Au1l71JH44G2AUDSvotr0U
mv6nfL8LRO+ukzE3BGucDo5o9WKnqpANpoXplwcL8Ak4UTZbDOdTnz3EwhPcLTtz
GJQEMqIV2yoEEsasdcvSMnP7FEtZgy4xhsDwasEadBa8m1tIGeG/UcknTEoSLKEV
ezlouc1q4FllnD507PkuwpEs2ilI1/NCBD70mpxV0IeUrDa4BeqPiq8ZPqJUv0ev
er68P7cEoVr5d053nyIVM7SK4pR380h1pitLcA8Ac6Dv0O6u5ik=
=4o2C
-----END PGP SIGNATURE-----

--Uc2nn8srCdMFAHlk--


--===============5491684901911844395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5491684901911844395==--

