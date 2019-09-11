Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E391B04A6
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Sep 2019 21:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ovUvySLorBFZBNfIqvHOWpM8LNmGzl4AQ6EaFL+BjCQ=; b=OwfSxCGzBrr5igInixtduhd9Q
	1PkQS6g9+54nl5G47InrjsZXRoSwpCFmtnNYNt21dmMgYzJrFi8uo4QuTMdg5bxx2EykSXsDQHdDa
	Ed/X7jxw03WN/SA8qTeKqJRwpprDXw3AeEh7Qn6ZJHXhHSP0DV4DpyeKQ5L7RtVVXbkSs76Fzgi+B
	CNpd8l2R8B7/FfN8yB0b9BF2x7Ius8p0gTIYARZxVhOQKyNWjVoGczdrKnvi42mQ/WJWzY/zzWTZl
	hk1Y7BARB9kZqbxW0NnICKBwbkGSy3aLZNh7tK/VWVjrt33jXACaUA2gneFX67d6hO85LdfVopQjy
	BSpTZ9YNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i88ce-0004YB-6N; Wed, 11 Sep 2019 19:49:48 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i88ca-0004XX-SX
 for linux-rockchip@lists.infradead.org; Wed, 11 Sep 2019 19:49:46 +0000
Received: by mail-ed1-x532.google.com with SMTP id c20so12805957eds.1
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Sep 2019 12:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=v3mgNJx4oG3sOd0s0/8iNdeiQGEHPFmY0wcwefa76ac=;
 b=Iw7ZAVq0XliGKL+EWtqH0rdNmLLCbg3UPsmQyGopj5KGDTEMrNkKBiGTL66WciZ08g
 dFu6JtGz5RHbUWUPH85QeJJsOfkXw3QbAnsL6KjmQHe9bwoVU9UCSM3i6APX/3eX/JPh
 VpkXEhOVqDEwqlqn8FNN59lZ/+cfhCmYIXZMYGlP5SwCdgdSbq2ssVk8U5PC56BaGSKQ
 cR8A9Z4v3MiHZyQHT9ofeGTEJdzXpMhJZADeYELFxRkxAU4ko0jtDLhKek5RIkacJI33
 93Ow04E/yn3uh/xuP8zZjOYrNZIee8E7+QTPp29Qyor31e3n2Svk8BFX7/rGjHKOx7A2
 yGdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=v3mgNJx4oG3sOd0s0/8iNdeiQGEHPFmY0wcwefa76ac=;
 b=hoQySXdNiRVmUFxdiD4Nw0pvL/71k6qGO6FCwZJvdUKrqXnYbtXkZPXfUM5H9H9NgP
 Qb4ZnR86pIQGCilgNTl2l6Edy5D/YnxNT5McuOTM0/OTCzhBjEiikG7mRpQ9a1OuZG0C
 IonGR12+3Row4CYMHzIE9cDHx4IY8m9hskywzB3Nk+xQj7ex9YF9+rD1RddKWT4S6aDv
 Kyg62RDbXCgbmmmRiyWi/nliksAyggtNc7FkgqYuBXB5RtwrSlKLNftpt6Mzh68X2ImY
 wr2jmsUocy+FHsBPcxIlgBZqLf+GfkG7aBw1Hqm139kBcOHkB07gS7BSgg9uZBcMNe3k
 NKEA==
X-Gm-Message-State: APjAAAVbcLmpQAUa9Kh5Gpg2OHuUIFrfiRIFj/a03Kf3h6vyVyz10992
 2DBETE/gSBLVRdMdDjH6v6XG9w==
X-Google-Smtp-Source: APXvYqwyvHcR4sCaGmFTbCVqN+AbRRwLHK9jU9Me2Ux6oKu2c1pYWT41ezAIZ4sUJIP99Cq5Dw/dKw==
X-Received: by 2002:a17:906:3715:: with SMTP id
 d21mr30787397ejc.24.1568231380558; 
 Wed, 11 Sep 2019 12:49:40 -0700 (PDT)
Received: from tpx230-nicolas.home ([86.85.109.110])
 by smtp.gmail.com with ESMTPSA id a11sm4356622edf.73.2019.09.11.12.49.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 12:49:39 -0700 (PDT)
Message-ID: <c7b62640ae0e57a9da0c6c5245b5454af08ad2a0.camel@ndufresne.ca>
Subject: Re: [PATCH 0/4] Enable Hantro G1 post-processor
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>, Tomasz Figa <tfiga@chromium.org>
Date: Wed, 11 Sep 2019 15:49:38 -0400
In-Reply-To: <6e493142690d48ee7e65c1cb2a4d6aec1e3b671b.camel@collabora.com>
References: <20190903181711.7559-1-ezequiel@collabora.com>
 <CAAFQd5AdikoN+7TG=0ZGFkSzaK2UFHM4VG7SYtfUtmjQgD61zA@mail.gmail.com>
 <6e493142690d48ee7e65c1cb2a4d6aec1e3b671b.camel@collabora.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_124944_927826_D2A3480C 
X-CRM114-Status: GOOD (  20.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============0211386631024562723=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0211386631024562723==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-a9ozNFCk/x1M6OTkHF6F"


--=-a9ozNFCk/x1M6OTkHF6F
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 11 septembre 2019 =C3=A0 09:27 +0100, Ezequiel Garcia a =C3=A9c=
rit :
> On Mon, 2019-09-09 at 16:07 +0900, Tomasz Figa wrote:
> > Hi Ezequiel,
> >=20
> > On Wed, Sep 4, 2019 at 3:17 AM Ezequiel Garcia <ezequiel@collabora.com>=
 wrote:
> > > Hi all,
> > >=20
> > > This series enables the post-processor support available
> > > on the Hantro G1 VPU. The post-processor block can be
> > > pipelined with the decoder hardware, allowing to perform
> > > operations such as color conversion, scaling, rotation,
> > > cropping, among others.
> > >=20
> > > The decoder hardware needs its own set of NV12 buffers
> > > (the native decoder format), and the post-processor is the
> > > owner of the CAPTURE buffers. This allows the application
> > > get processed (scaled, converted, etc) buffers, completely
> > > transparently.
> > >=20
> > > This feature is implemented by exposing other CAPTURE pixel
> > > formats to the application (ENUM_FMT). When the application
> > > sets a pixel format other than NV12, the driver will enable
> > > and use the post-processor transparently.
> >=20
> > I'll try to review the series a bit later, but a general comment here
> > is that the userspace wouldn't have a way to distinguish between the
> > native and post-processed formats. I'm pretty much sure that
> > post-processing at least imposes some power penalty, so it would be
> > good if the userspace could avoid it if unnecessary.
> >=20
>=20
> Hm, that's true, good catch.
>=20
> So, it would be desirable to retain the current behavior of allowing
> the application to just set a different pixel format and get
> a post-processed frame, transparently.
>=20
> But at the same time, it would be nice if the application is somehow
> aware of the post-processing happening. Maybe we can expose a more
> accurate media controller topology, have applications enable
> the post-processing pipeline explicitly.

How it works on the stateful side is that userspace set the encoding
type (the codec), then passes a header (in our case, there will be
parsed structures replacing this) first. The driver then configure
capture format, giving a hint of the "default" or "native" format. This
may or may not be sufficient, but it does work in giving userspace a
hint.

>=20
> Thanks for the feedback,
> Ezequiel
>=20

--=-a9ozNFCk/x1M6OTkHF6F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXXlP0gAKCRBxUwItrAao
HNw+AKCQcVOG1SaxOGLL555nItsPa9cvMQCeK4EDSk7KrRai+IkgEBCyQDHa8Yo=
=ffC4
-----END PGP SIGNATURE-----

--=-a9ozNFCk/x1M6OTkHF6F--



--===============0211386631024562723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0211386631024562723==--


