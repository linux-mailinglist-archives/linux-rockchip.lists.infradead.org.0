Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AF110230C
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 12:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g8E8EKBR2/WUFr4Nol6xtfWNa5zpYtdiehgpYQZKcLE=; b=bmsISfiS87pxHts/qpdFQykiE
	FrVtcIqLY5Pmpip9Nh80xtD8uoKP8L7bdb4j3/u4CW+zW3L7cVMDlOMcrSHLgONvTiKEk0Uytlkd0
	Txa0JAheIkp+BgXQCDqvAKWkOt0oDlpAMPh1ZB5ETyyNSiy92eQtGJV6Ef/gxJY537jGfBwxWXzBb
	7d8ygr8eczS0x1JtYXzTPgzmFstXcyZUHqNUibn2coxFnf1ElhOZThNWh+c5sSWfxoN4KAovPmbFj
	pSDMz3yCqREHHWV/2+S+ida9xGRveBmqg2PWhXq9N1Mkbpc56fDzwow401TCZ4dlFX9OWWWLFewzg
	X00zpSdTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1ip-0001C7-Re; Tue, 19 Nov 2019 11:31:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1id-00011u-JV; Tue, 19 Nov 2019 11:30:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EFF35BC38;
 Tue, 19 Nov 2019 11:30:49 +0000 (UTC)
Message-ID: <052d07fb4eb79b29dd58cab577d59bab6684329a.camel@suse.de>
Subject: Re: [PATCH v2 1/6] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>
Date: Tue, 19 Nov 2019 12:30:47 +0100
In-Reply-To: <20191119111320.GP43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-2-nsaenzjulienne@suse.de>
 <20191119111320.GP43905@e119886-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_033051_788303_FCC9737B 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-rdma@vger.kernel.org,
 maz@kernel.org, phil@raspberrypi.org, iommu@lists.linux-foundation.org,
 linux-rockchip@lists.infradead.org, f.fainelli@gmail.com,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 mbrugger@suse.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 jeremy.linton@arm.com, Tom Joseph <tjoseph@cadence.com>, wahrenst@gmx.net,
 james.quinlan@broadcom.com, Robin Murphy <robin.murphy@arm.com>, "David S.
 Miller" <davem@davemloft.net>, Tariq Toukan <tariqt@mellanox.com>
Content-Type: multipart/mixed; boundary="===============4990028327401752511=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============4990028327401752511==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-JCAElqvKu605DtMG+rxz"


--=-JCAElqvKu605DtMG+rxz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew, thanks for the review.
> > +/**
> > + * __roundup_pow_of_two64() - round 64bit value up to nearest power of=
 two
> > + * @n: value to round up
> > + */
> > +static inline __attribute__((const)) __u64 __roundup_pow_of_two64(__u6=
4 n)
>=20
> To be consistent with other functions in the same file (__ilog_u64) you m=
ay
> want to rename this to __roundup_pow_of_two_u64.

Sounds good to me.

> Also do you know why u64 is used in some places and __u64 in others?

That's unwarranted, it should be __u64 everywhere.

> > +{
> > +	return 1UL << fls64(n - 1);
>=20
> Does this need to be (and for the others):
>=20
> return 1ULL << fls64(n - 1);
>=20
> Notice that the PCI drivers you convert, all use 1ULL.

Noted

Regards,
Nicolas


--=-JCAElqvKu605DtMG+rxz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3T0mcACgkQlfZmHno8
x/6BgQf9EPIQKoR6phksU0S8lgk9wqpGnUdxBbs82aHnTqsDgCrCDSnKXEYjrytg
JP7gToqXjInWjAuYTza/e4u4j4nQShrZSrX/Wo7n0g/iOPzIrKgFEwt/I8JlZnxn
eGSGgGDLXcFOIXzSy7aNsDEOHM1JS3Nan1xj+4vfNYb5bx3U7VlJuAAVsNZ7aLHu
1JSo56OTcTN6DejhWw1GzvlTsqzLUa41v8BUgW19GyOv185sXkbfJImn1hgkRuKj
JHu3GwUlrQkRrcAs0xqLRflUJHE8If7t+Xh+Su4ToLjWKyWvMu4fnPpwFXCyHhyG
T2k6eYGiEuyKMYHxJg9YLmvjNMdJuA==
=s9/D
-----END PGP SIGNATURE-----

--=-JCAElqvKu605DtMG+rxz--



--===============4990028327401752511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4990028327401752511==--


