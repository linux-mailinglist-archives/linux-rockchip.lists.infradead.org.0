Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CFE1BFF2C
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 16:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=puhJS6iMOB2pgkB4xH4JYpYW8JOHQFugy95294SjtMM=; b=KsgMJVdHg9eHfHGZ6qYxE9vIK
	Dp6pklFeBEVsBC7lrk7Dub06ZTmbEup76y19Z7gr38e86Pev8ycneSLgxK+CmAX2CBJi6J2l7pKrQ
	MgHuJ7DxJwHUDA7QrrPApwFNs9PmKPvOidrCYBLwRfGAdJsFjNkLfqU04X19ZqICvZoYcAjonVeNi
	f8lp9NvyA3T5h2nmoGAIygCaGX8zyS36JRRSVmgN/VLS8BJCxZpvOo8qG52Z2Y9CgUBnevqwVhq8J
	O6XrAVK7pIRaykgXnUliZOrhhGIMDZ/tFhaatDw9jsWn3TRb6ljR0HcMPUsRuxoNH4U/bAmxS84t6
	aMA/24yhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAWA-0007BC-5h; Thu, 30 Apr 2020 14:50:26 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUASP-0001be-TP
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 14:46:35 +0000
Received: by mail-qv1-xf42.google.com with SMTP id v38so3095814qvf.6
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 07:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CnpYvQLwwLu0Y9UGKvYlQI4kASy4HLntwvEH6RLRd/0=;
 b=h1SniFp13/mKtbivcmFiZo+TVxx9TDhDu7e7NI6bPY19AMcbTw1TadMEwY6N9UtNkH
 gaTnecbPOLrxc+nFMZZx8ynbdurdEG6HuSvG7YmGfXscW0qc4cj0/2NO0uBN//UKQ+A8
 lImx4qRfVpnAQQQMW1RKrKmQW+VUtnq3h3QjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CnpYvQLwwLu0Y9UGKvYlQI4kASy4HLntwvEH6RLRd/0=;
 b=qcUnezsmOnP7/lVM+0OWLrps8GpaUrhO3KbReyJXS2WyWJ7/EVOub8WH7q74dMumGK
 sy3UrSkw2CQC/05r17xcq3CKemDLPVQqfy+TLJscbYpB7uBR+aEZ2M35FlbNt/ZwyaZ6
 X4Y/wmjUE4SA8bPyS+ZwG1DshjMcMAzl94smDJaR+apjH0NfkuiUrVxkrG6C98oVurRt
 ERJZjTW/8gZY/p7e34VaRz2UmM0uNXvZw+9mkEHWOLMJ+She/vu9aSQVa79LhI3vt5E6
 oTWCESSs+9TBJ2HXk8KnI8MrbkMFxDiXXn8wipavLFCZ/xF4ZYhD2AUkFZIaj4MxUHWg
 l1cA==
X-Gm-Message-State: AGi0PuZ80qo0w2XIhFXq/4Sx3ivngiwfeKXzWYWoKMQRFRAdmuUCQi4p
 GpoH4n2sqdR8iglzSHD34GMElw==
X-Google-Smtp-Source: APiQypKx/IVGQTZm+Jj5oFyByOzYxpJX2LdUMn22Wnx0RMoauSb5Ae+2aAY2xYHQg2nmeE7+xvW4hg==
X-Received: by 2002:a0c:f50a:: with SMTP id j10mr3238189qvm.172.1588257991720; 
 Thu, 30 Apr 2020 07:46:31 -0700 (PDT)
Received: from bill-the-cat
 (2606-a000-1401-826f-7000-e455-d080-caf2.inf6.spectrum.com.
 [2606:a000:1401:826f:7000:e455:d080:caf2])
 by smtp.gmail.com with ESMTPSA id x22sm2189795qtr.57.2020.04.30.07.46.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 Apr 2020 07:46:30 -0700 (PDT)
Date: Thu, 30 Apr 2020 10:46:28 -0400
From: Tom Rini <trini@konsulko.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 1/8] iopoll: Add dealy to read poll
Message-ID: <20200430144628.GU4468@bill-the-cat>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
 <20200430070412.12499-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20200430070412.12499-2-jagan@amarulasolutions.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074633_962795_9AF7C980 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
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
Cc: patrick@blueri.se, linux-rockchip@lists.infradead.org,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 u-boot@lists.denx.de, sunil@amarulasolutions.com,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: multipart/mixed; boundary="===============0210685735448516004=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0210685735448516004==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="S6B99WLZuskppeJo"
Content-Disposition: inline


--S6B99WLZuskppeJo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 30, 2020 at 12:34:05PM +0530, Jagan Teki wrote:

> Some drivers and other bsp code not only poll the
> register with timeout but also required to delay
> on each transaction.
>=20
> This patch add that requirement by adding sleep_us
> variable so-that read_poll_timeout now support
> delay as well.
>=20
> Cc: Tom Rini <trini@konsulko.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

This (and 2/8) need to say what kernel commit you're taking this from,
thanks.

--=20
Tom

--S6B99WLZuskppeJo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAl6q5LgACgkQFHw5/5Y0
tyzghgv+JjlDlsfrIrJ5nJGFcQC/yKrtAnoiFfdR6+k/xgUtymu4hpxrPpvFFTZj
ICh83/84Y2pksBUDCyupYXRywjK5994e+cP+FaU0lUQHHHo8K1d4g4Yqu62buhjf
lvbUuxnPO/fBkbeW+bi6Aku7nKHSuO9BIQayKq1FGlEvrJJRyp+IOV6eDcUPOv9v
5L9BwGHJskrRKZ2lojlreykpGOtxm+L/fqSKAYwSBGPOKoPXaW7oPTJaUV6GNTGY
KEifSNuLTFDOojE+fZr1PP7No4GI4unTUZ1KL4lVC3ye/Ofd8AqRrBspE/z+eb5s
NAF9unKxODtfGzGkdCJf0VZLRgSgjiooGVx2dVEtwHkTE8N4kGIujfJJPkRd4FKf
aunOOUtKbISZQ3pd8Fcf+C02qy1aAKYNn0vVS351YDVtDQjeCqEbOQftJw4yucC4
e2+yBexZ6oxe+kGG36IVmc8/MrXjRxUao4fBM7ubW5qGOiVIzUhQRBqIUVLrHF3b
7M4srWzQ
=Ma2Y
-----END PGP SIGNATURE-----

--S6B99WLZuskppeJo--


--===============0210685735448516004==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0210685735448516004==--

