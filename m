Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0160710B473
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 Nov 2019 18:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n7XVzDnju/tGw9PJZbviQm5M5j3s2UYeEi5oMQ0/7d0=; b=URvZ8YPr+1swWeRJBP+Z4ZZ80
	p+UNlUAHkiX0TrE6s4SjiyWY/OQGkU1L5p5aaP1mOpQO3AugVpCIUsTzB0/lYR88b1tD0O3BsJ0sz
	d5LiqfIMG+kaedrbFfU1eAz5caAYp8yvylBQPbZ0Z7VUbV8Iz+fi676UGeRhH8Xehcv0v5oK8k05p
	NeEgpTm061X46LiFUf2PDoMJIryegz0rf/KrG6Knp09u2zzKmsN31Ecv7uFM4YLoQQpq9Xs0en6N6
	4yC/AoHS+BM1Pn0vcLJ8WeOlnt5CQZXo3JHpigN+0VCWYrJ5nrLPW8yNSgiAdtNXXq9qlXUxmBHl2
	wIr7T1L+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia17W-0003JX-DW; Wed, 27 Nov 2019 17:28:54 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia17J-00039F-6k; Wed, 27 Nov 2019 17:28:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 25895AF22;
 Wed, 27 Nov 2019 17:28:39 +0000 (UTC)
Message-ID: <eccd6a23d8dbc577058c538fa4ef79ba376cd04a.camel@suse.de>
Subject: Re: [PATCH v3 0/7] Raspberry Pi 4 PCIe support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Wed, 27 Nov 2019 18:28:35 +0100
In-Reply-To: <20191126215020.GA191414@google.com>
References: <20191126215020.GA191414@google.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_092841_391782_BB6D9087 
X-CRM114-Status: UNSURE (   9.84  )
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-rockchip@lists.infradead.org, linux-rdma@vger.kernel.org, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org, andrew.murray@arm.com,
 Robin Murphy <robin.murphy@arm.com>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0843626943262334212=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0843626943262334212==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-LD8Ga7xd6xkOxp2WErAx"


--=-LD8Ga7xd6xkOxp2WErAx
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bjorn,

On Tue, 2019-11-26 at 15:50 -0600, Bjorn Helgaas wrote:
> On Tue, Nov 26, 2019 at 10:19:38AM +0100, Nicolas Saenz Julienne wrote:
> > This series aims at providing support for Raspberry Pi 4's PCIe
> > controller, which is also shared with the Broadcom STB family of
> > devices.
> > Jim Quinlan (3):
> >   dt-bindings: PCI: Add bindings for brcmstb's PCIe device
> >   PCI: brcmstb: add Broadcom STB PCIe host controller driver
> >   PCI: brcmstb: add MSI capability
>=20
> Please update these subjects to match the others, i.e., capitalize
> "Add".  Also, I think "Add MSI capability" really means "Add support
> for MSI ..."; in PCIe terms the "MSI Capability" is a structure in
> config space and it's there whether the OS supports it or not.
>=20
> No need to repost just for this.

Noted, I'll update them.

Regards,
Nicolas


--=-LD8Ga7xd6xkOxp2WErAx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3eskMACgkQlfZmHno8
x/60Swf/Rwz7o3DibuLSdZZBrCQ9sK0AToOIKPKSSquZNgW7MKr1ByJjnNAS9/4r
9N3namc6tZJcCE7C+QKKVcikyMR0ENUSovq0hrCA6WCiUipefFyD22H/WEtsWvHf
1QcGifBBN6mjLDS1DSnBTPiDAVqWm5w1celUlauXFZAZc5YQftSwRQRVkZui2q9H
aljeQuVsPZ+CfdOFgqo1xlwJvk+BbfDIxgQ+cg4du/tS3enlrrMspevtkEw/awv9
aZl62mLNRTUPlsHW07akov+GIKROrknLnBTqiCKLg0Ei7J3dTo3Su/wzSyZQw7H4
hOq7QZ/9Qezc3LUiCtuauS3v8a6ang==
=dKU6
-----END PGP SIGNATURE-----

--=-LD8Ga7xd6xkOxp2WErAx--



--===============0843626943262334212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0843626943262334212==--


