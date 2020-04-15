Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8901AB232
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Apr 2020 22:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S7UDljMralo+CAaxbe0V1beyh9Az/LK+d6xkBMCh38U=; b=rupRfjx121DPfnR2RwtcbQVy3
	O5guJCQK0Y2geKsXxYN3hTAT9fSOjYo2BKnnKEa3nEciEwiNLVr9qqMzHzTNCVB2YtOiGC7vlfpPD
	p+Tez5y09MmUlJUO/DcWVDEnM+qW5YoxSeqegfEEYHq1db25jOULqB3jOL1uzwjwTh56k15q3yhXs
	YJvrOBC+UIX5vD+lWtm/VGIL3P5OKA8uhUekItJM/0mY0bujTSYqp8DojL1MgL7CYVDuU6nOWXjHR
	v0ScQOh/Di4ZyOWOS+FP8FeBt22pUV0YXYAwlYSAoOjZqeO7tN+1B0u/DXkXMvJjXphOUOIQ8zvio
	5PSh5/+uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOoCy-00078u-Ad; Wed, 15 Apr 2020 20:00:28 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOoCv-00078P-Hy
 for linux-rockchip@lists.infradead.org; Wed, 15 Apr 2020 20:00:26 +0000
Received: by mail-qt1-x843.google.com with SMTP id 71so14444884qtc.12
 for <linux-rockchip@lists.infradead.org>; Wed, 15 Apr 2020 13:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tOQDvmN/FkNTSVI0zLqdf1kf9SCWn+FzLCppDs6wGoY=;
 b=Q4grfrEfdmuOzieWT+SaPLzBuq+2jYyJiAm007mZ03xan/6PiU225yZVraXuoXBR4P
 9bqo4fvdSulClLptp3c0/959uTqwk7kzDTCON12kpcFVe5WYVO4Ts4HXbgHmU0kqvqMD
 N0DeXLS2MOTp/FDF/1uRdeEFdPeltKGycAt/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tOQDvmN/FkNTSVI0zLqdf1kf9SCWn+FzLCppDs6wGoY=;
 b=fDEeSahvFh+N3IyPPQdLbvvnh+PjwHOKO8Kctx+EKd4c8BQGLlab6q0yv20icwSLIJ
 3olY8XLL/4T7NduMy7hpeONL3vc7GyseXcXJY6mbesIiwBdTY1VT0kNH3eenU4rUyKmf
 JzaQtky2HMe3L/VoR9JO1DKiF5VbzxgSlP4zKkpjuEzdyM0WFA8EfpK8edeXzmhyTkLi
 cm3EB2DYI7gdHbUXj/JHJQMrgdDdJvEXwwqblPPzc0N0kt5haYr1N2kgDR4GQU3jnDql
 QCYDCqI+diIZ3mOkAQOQS/mRuTQRbUCfO61QFzCYJpxduTY+9pmAs+dx4/4sbLsn9eyE
 HOdQ==
X-Gm-Message-State: AGi0PuYBqFFqo3D0W9Pl+QwNzVApNLvc0shmqhcq98J1RMTqS2aIG8dV
 ddES5MyOFLQ8P/of1WlAElTPwg==
X-Google-Smtp-Source: APiQypJY+whzk1AVWMgmIzW4xh/OJGtaNToyDSuXOa188j9H9Lq/7LIFsqhMiUufQgsUBYOCqfqSEA==
X-Received: by 2002:ac8:90c:: with SMTP id t12mr22531423qth.12.1586980820866; 
 Wed, 15 Apr 2020 13:00:20 -0700 (PDT)
Received: from bill-the-cat
 (2606-a000-1401-826f-e4d0-34ea-46de-51b1.inf6.spectrum.com.
 [2606:a000:1401:826f:e4d0:34ea:46de:51b1])
 by smtp.gmail.com with ESMTPSA id z6sm13046649qke.56.2020.04.15.13.00.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Apr 2020 13:00:19 -0700 (PDT)
Date: Wed, 15 Apr 2020 16:00:17 -0400
From: Tom Rini <trini@konsulko.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 1/3] environment: distro: Add SF distro command
Message-ID: <20200415200017.GH12111@bill-the-cat>
References: <20200410182631.11951-1-jagan@amarulasolutions.com>
 <20200410182631.11951-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20200410182631.11951-2-jagan@amarulasolutions.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_130025_602321_3690E8E5 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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
Cc: u-boot@lists.denx.de, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 sunil@amarulasolutions.com,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: multipart/mixed; boundary="===============6283993431510749349=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============6283993431510749349==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wayzTnRSUXKNfBqd"
Content-Disposition: inline


--wayzTnRSUXKNfBqd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 10, 2020 at 11:56:29PM +0530, Jagan Teki wrote:

> Add distro boot command support for SPI flash (SF).
>=20
> This distro boot will read the boot script at specific
> location at the flash and start sourcing the same.
>=20
> This file need to include on required include/config
> file.
>=20
> Cc: Tom Rini <trini@konsulko.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Tom Rini <trini@konsulko.com>

--=20
Tom

--wayzTnRSUXKNfBqd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAl6XZ9EACgkQFHw5/5Y0
tyx7JgwAoMrgOz3n3RgpUbpqGAiC3vthKl6cIohB+T2P1V44o/nC81nysrykBb1b
kTztUHEsZT4nK1k+9OXVKZkGP96fYTcwSzZtUSPiYqOvBgVP4YYJBPLAf0sDsvyY
fM/LkMpv6uQp8dTjCYBRkFi3pYC0kacad1zLdRGH6HM2Fg4wleXzJuDgsrfrJjiI
ok9IlX28+zKQ6wkXmEJwFk4N7jcRyqIJ39msc8pSTqDaLtb0J4cnZAY8oVg0+t0G
ONz2L+ZXTUDRtSy/bT4EpK97MwEcUx3H5Hey7WxE2KittmK3EeAhQpyA3P3oueIy
MWvO5fKfH7oLyAPL08EctSgsjuG6m/rQTGm0BggzCh+s+CB4cZyY/r38eeJj7LYF
WakBgyGNw0hVzCUX+mVbF25I+48f5m9tauHhItztwigZ8lHQuAkRwNvC349WIqMy
eokX9WmTe6GJaiG40CU2Lk3AkOgDxREkyemF49PweCJK3AT4uvjj80Nt0zBDyxI+
bP807D7X
=vqDA
-----END PGP SIGNATURE-----

--wayzTnRSUXKNfBqd--


--===============6283993431510749349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6283993431510749349==--

