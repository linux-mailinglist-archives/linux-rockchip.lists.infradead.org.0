Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0C010B497
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 Nov 2019 18:37:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=66f1k4wBwpLZ4tZNDCfYJYEGNmIo5WD3/dAFzPy8tUE=; b=c7Z2lMZM/ZAKklDIwmv59LQgC
	DvGhAUfCuJYU1pUahjBR83o8cAAf6e/HSmH0p/nNDfqZJzjpben7kfmCZ5fEmeJ8cILmmVnAPKE/E
	Bgd+CQtQZ+BttmmyALD5W1CxjtMwnzR79xzAxPxCCtpUQmU29SXU0O4hAfNBxgCwmOwCE0+kKmeXy
	2VM2mdv+3Mwd29rvcniphk2KURu3XmSNGZLRVia6mQ46NXKda20tzP7/Tq4xj2KsqBDl/qCrkkfAO
	yQMoIuY0ns/cZOK18DnO/HFA+LHTt4E3Hqf0YaJC5UlUMUwRbSKqV3CbNuZZmIy5mwwQ65faeeTTa
	fjtXTGhgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1FP-0007ip-OE; Wed, 27 Nov 2019 17:37:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1FD-0007ZO-G4; Wed, 27 Nov 2019 17:36:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BE0F9B042;
 Wed, 27 Nov 2019 17:36:49 +0000 (UTC)
Message-ID: <4e77aa14b0fd1150a186d5d6e540f115beb7cd2f.camel@suse.de>
Subject: Re: [PATCH v3 1/7] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: andrew.murray@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org, 
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Hanjun Guo
 <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,  Tariq Toukan
 <tariqt@mellanox.com>, Rob Herring <robh+dt@kernel.org>, Frank Rowand
 <frowand.list@gmail.com>,  Shawn Lin <shawn.lin@rock-chips.com>, Heiko
 Stuebner <heiko@sntech.de>, Christoph Hellwig <hch@lst.de>,  Marek
 Szyprowski <m.szyprowski@samsung.com>, Robin Murphy <robin.murphy@arm.com>
Date: Wed, 27 Nov 2019 18:36:43 +0100
In-Reply-To: <20191126091946.7970-2-nsaenzjulienne@suse.de>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-2-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_093651_685285_9FD2593E 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
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
Cc: "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, f.fainelli@gmail.com, devicetree@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 jeremy.linton@arm.com, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, mbrugger@suse.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, netdev@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 Len Brown <lenb@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5230830924120828690=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============5230830924120828690==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-pGA2H6iLsoqumxPFnjV/"


--=-pGA2H6iLsoqumxPFnjV/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-11-26 at 10:19 +0100, Nicolas Saenz Julienne wrote:
> Some users need to make sure their rounding function accepts and returns
> 64bit long variables regardless of the architecture. Sadly
> roundup/rounddown_pow_two() takes and returns unsigned longs. Create a
> new generic 64bit variant of the function and cleanup rougue custom
> implementations.
>=20
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Small Nit: I corrected the patch subject for next version.

linux/log2.h: Add roundup/rounddown_pow_two_u64() family of functions

Note the change here:                      ^^^^

Regards,
Nicolas


--=-pGA2H6iLsoqumxPFnjV/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3etCsACgkQlfZmHno8
x/4AJwf9Eq0ZM4NqHmqyyrS7BQmYgPtM7piuXLZCM3vqnnuHZTenFUoHxhH60Ffb
HzBZeEMXW4jW8lQIOtwAy6+cQ19qTmM3uR2gAPmNzuvcFvpVOXPvKGMKSte+IYqI
s5O/WUAFckUhcZRDrI4P0P2PdZLOgYXsQU9k6jGXPnWW1my63yF6W+01o/Oy/Oef
x+WobkWQtp9ozxgzG9Six/Sx7Bmn22OPxFSiGftu00G9AYSX1jkgv8yUPyoT0buj
aNTTrueG/JVXF9afKDupaKDAV69F7eYTFjYiMxl53jTQAshV6s9FV+tOdnFWqBRX
abK/iKFoC2e1Sip+k57Zx8tFXUexGg==
=qoBY
-----END PGP SIGNATURE-----

--=-pGA2H6iLsoqumxPFnjV/--



--===============5230830924120828690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5230830924120828690==--


