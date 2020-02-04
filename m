Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 202D2151ED7
	for <lists+linux-rockchip@lfdr.de>; Tue,  4 Feb 2020 18:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N2qWY8MCMbIWMVBR3sKmiilaB7jSsUuxXHZPndHhhyY=; b=CWkLJrWay2FBBFzl5Bao8F0vP
	kn6XU8i7nUMTE/yWO4L/F8vPip0B8HRjnWBDeMn6Y7RlmLTAtd35rx3U0KUWK+vxJW3bQUP3cRnX8
	4FpGyJgONZdnw1C43eqP+VJPXqdhY6t7rm7BOMIsq+Dc3/1cIndcAdaMeThsT95uzSbE0fMLUdXSR
	U6PuuWeWXZ4YE+O166mF/M9Ai8vbrGSbUqClK3j8CE+0Lpc4gwNyR+IWe4dbLd15SP0HGbsYzlkV6
	6dOiLGezfRLqIcQYuVsM+2rbFSRg6kiqfXfk9verbc8kdO/WpI++5sSTBc5JaAb3j8IsKhk+DQNds
	LkNoGDwtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz1ZT-0004PE-1K; Tue, 04 Feb 2020 17:01:07 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz1ZP-0004On-2d
 for linux-rockchip@lists.infradead.org; Tue, 04 Feb 2020 17:01:05 +0000
Received: by mail-qv1-xf42.google.com with SMTP id db9so8890241qvb.3
 for <linux-rockchip@lists.infradead.org>; Tue, 04 Feb 2020 09:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MWQy9n/3aEKDGg2g8pvvFkj+PQO1oVWfVOmil8iD4bw=;
 b=EIpZAGfeAO9IplYiCaDu7pit7cEMiaDfW1kZ6JGjYq9tl0i68FWO4acxw+xyFuYxqY
 aUDdRsFIKgBrQWPFZovSv+/KNbHKvLSt8IFrI2ZMVZ5sBPiL+Xd0nC+1C1ZjLiK4h1qN
 t6fOel3N+MtrHWfAH6MTFd8/f0gIRNQsYyk0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MWQy9n/3aEKDGg2g8pvvFkj+PQO1oVWfVOmil8iD4bw=;
 b=Xufs2+oCZE+FLau1qB8RMacsxQUIjBIhwMxHV7/L6YFzAs0ATSbimH1sD5qkjmYV6D
 qaV2c49DX7TvDZ1R93Npt5yBMXYdqrKOCs5M6naZwsoK5hHDmCKg+/cMk4gO5Ab4Kixw
 RJZr4mJQiAS9S8sV8AQRu8NvSlXgvnvuiDNt/MtIpEOl5LBKar4YREE3lDgz5Y5kgeIN
 wetxm0SAfuExQgIbxMtE0pf0IvznOuEH65qkZjPquePhDllo4y6L0xoABw79eE9iwtn9
 geEpELy+vliHKxFO98B7pCGi/GgOu0+WFiP86VV0Uvtv3chqXG1XyjP671OwhIG1Qhdp
 OYFQ==
X-Gm-Message-State: APjAAAUpfIs4SSp28QAzkmwjM3XTPRakqaeMEDH7eebJL5FkFYMqrn+R
 phG4qslh3hCjGW1jwhhgOVerfw==
X-Google-Smtp-Source: APXvYqxzwwr4+lcRoZCoJdOJ4qOa6kBXWGSVBSv3CGJV7Y9lxxuQNiWf2i/6XliMvzlQpVX9foVx8Q==
X-Received: by 2002:a0c:f6c8:: with SMTP id d8mr29107487qvo.234.1580835661606; 
 Tue, 04 Feb 2020 09:01:01 -0800 (PST)
Received: from bill-the-cat
 (2606-a000-1401-86dd-f0fd-eb62-6062-7840.inf6.spectrum.com.
 [2606:a000:1401:86dd:f0fd:eb62:6062:7840])
 by smtp.gmail.com with ESMTPSA id x6sm11153285qkh.20.2020.02.04.09.01.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Feb 2020 09:01:00 -0800 (PST)
Date: Tue, 4 Feb 2020 12:00:58 -0500
From: Tom Rini <trini@konsulko.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 2/2] rockchip: Add SF distro bootcmd
Message-ID: <20200204170058.GK13379@bill-the-cat>
References: <20200203091924.15385-1-jagan@amarulasolutions.com>
 <20200203091924.15385-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20200203091924.15385-2-jagan@amarulasolutions.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_090103_129259_0AAD7162 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-rockchip@lists.infradead.org, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: multipart/mixed; boundary="===============3341779400679018586=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============3341779400679018586==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="K7jxEI7rEZN6gxvu"
Content-Disposition: inline


--K7jxEI7rEZN6gxvu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 03, 2020 at 02:49:24PM +0530, Jagan Teki wrote:

> Add distro boot command support for SPI flash in Rockchip.
>=20
> This distro boot will read the boot script at specific
> location at the flash and start sourcing the same.
>=20
> Included the SF device at the last of the target devices
> list since all the rest of the devices on the list have
> more possibility to boot the distribution due to the
> size of the SPI flash is concern.
>=20
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  include/configs/rockchip-common.h | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/configs/rockchip-common.h b/include/configs/rockchip=
-common.h
> index b55e09a9ca..8e7c994266 100644
> --- a/include/configs/rockchip-common.h
> +++ b/include/configs/rockchip-common.h
> @@ -41,11 +41,26 @@
>  	#define BOOT_TARGET_DHCP(func)
>  #endif
> =20
> +#if CONFIG_IS_ENABLED(CMD_SF)
> +	#define BOOT_TARGET_SF(func)	func(SF, sf, na)
> +#else
> +	#define BOOT_TARGET_SF(func)
> +#endif
> +
> +#define BOOTENV_DEV_SF(devtypeu, devtypel, instance) \
> +	"bootcmd_sf=3Dsf probe 0 0 0 && " \
> +		"sf read ${scriptaddr} ${script_offset_f} ${script_size_f} && " \
> +		"source ${scriptaddr}; echo SCRIPT FAILED: continuing...;\0"
> +
> +#define BOOTENV_DEV_NAME_SF(devtypeu, devtypel, instance) \
> +	"sf "
> +
>  #define BOOT_TARGET_DEVICES(func) \
>  	BOOT_TARGET_MMC(func) \
>  	BOOT_TARGET_USB(func) \
>  	BOOT_TARGET_PXE(func) \
> -	BOOT_TARGET_DHCP(func)
> +	BOOT_TARGET_DHCP(func) \
> +	BOOT_TARGET_SF(func)
> =20
>  #ifdef CONFIG_ARM64
>  #define ROOT_UUID "B921B045-1DF0-41C3-AF44-4C6F280D3FAE;\0"

Something I lamented in another thread is that we need to move things to
include/environment/ so that they can be re-used easily.  Lets start by
putting the "distro boot" SF stuff in to include/environment/distro/sf.h
and #include that here.  That way anything else that really does have
something written to SPI flash in this manner can opt-in without
duplication of the logic.

Thanks!

--=20
Tom

--K7jxEI7rEZN6gxvu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl45o0cACgkQh/n2NdMd
dlIJVA/+LYWNOCrEOXtp6OQbell8TSLP5thzSfglbL5z4HwuWQkAPfJA/UXb6uqB
ZQ2fbYJg0zu8DaCgjeNxh2I5D88szY/igoJopcZjaCeF0G4+CnAddXP2pID5Iasi
NX1sFFq/K8lLZ/Vs4V3jTGNqK+d3IfsIgJKaBGw4RZx5O2apjQ67L2VIb5y0mnGH
+FfjZqljLD2cfR4nUU2vKqu4vwCPW2mFGomX3mgyXHP1ipTxKt5n/gVoFXgge/aY
R39qhjwFvwuTm1VoTdoztPr+YFB825pF5p5QkoinFOtN+nEJySRV0hrqGM65cMKa
9qFwjuHrJIQQQOhdeMPQKsDf3lg2SGCbSQusNttyh4LSKmvNlj3Ygi+Ug8oKaYUu
R1yEzS9kS/weiad/2bo67DQUTrBiVKWj42DmUe1EgoSON1+MljzBNpGJCm/UjnY5
vFE8nBA9pYhDcaqIurpwREfTRVb7N8lntBw1/9wu73zaSj0i7q2MGJAzYokwclRn
tojrA2bqircGqXFotxPkB5hFi5OTqDkvivkZPRxZ/LPzkwlbqlYlaQw/ued7vKY+
Bgl8mQQ9ko+DX3UFFyrrThl30ZZoC4LsLjehcN0nXovgSgGSkVD4jM68vK7urH4k
x0cenRdkjvZxAsrJ2AVQT7SrBIj5f3r7OWIJwD1jSWAVkIx3owU=
=SGbc
-----END PGP SIGNATURE-----

--K7jxEI7rEZN6gxvu--


--===============3341779400679018586==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3341779400679018586==--

