Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E1B13358A
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Jan 2020 23:13:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efrqZp8kEZMQGS7w+FySCEvg5hrbO4dQwW52xDY4uwQ=; b=oRUtJaHIUAeF+8
	nhzKbifQrbP4SAOs1Vrc79ta/4dNKtJcMwUBMKed2W1DjGDPFLmyATJfH2cPpG5GY6NsRshVbgaoy
	LhesrEXrX5torX/9U0IMYFHTQCs2bdenoW/C5xmaUyfgn3JCIrNiZ2oeQB2BFkkNiu0HPlBgQ/nKd
	DA6Cw0UxP4V2XpiGGpJItcCaUbcxpNS9drZSUqhmgLEYL005y1eCZXyG4cUi0TINmn2zEQu97avGZ
	ZVmajxsaN2JjbocwvF3Zad48Efe31wycEwvb/ZPuyfp/UyYqR/MoySbcQtjFdsRH0uv84ALw8PNOh
	UcmOgH53GFa7Ypu1NaMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iox5w-0008BH-LA; Tue, 07 Jan 2020 22:13:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iox5t-0008Ar-Cd; Tue, 07 Jan 2020 22:12:59 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iox5Y-0004yI-O7; Tue, 07 Jan 2020 23:12:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v12 09/11] media: staging: dt-bindings: add Rockchip MIPI
 RX D-PHY yaml bindings
Date: Tue, 07 Jan 2020 23:12:35 +0100
Message-ID: <1854581.byi6MNbzft@phil>
In-Reply-To: <20200107215739.GB7869@pendragon.ideasonboard.com>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <2299954.gvZHxIxoM0@diego> <20200107215739.GB7869@pendragon.ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_141257_581502_7988FCD0 
X-CRM114-Status: GOOD (  31.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, gregkh@linuxfoundation.org, andrey.konovalov@linaro.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 robh+dt@kernel.org, hans.verkuil@cisco.com,
 linux-arm-kernel@lists.infradead.org, sakari.ailus@linux.intel.com,
 joacim.zetterling@gmail.com, mchehab@kernel.org,
 Ezequiel Garcia <ezequiel@collabora.com>, jacob-chen@iotwrt.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 7. Januar 2020, 22:57:39 CET schrieb Laurent Pinchart:
> Hi Heiko,
> =

> On Tue, Jan 07, 2020 at 10:30:28PM +0100, Heiko St=FCbner wrote:
> > Am Dienstag, 7. Januar 2020, 14:20:10 CET schrieb Ezequiel Garcia:
> > > On Tue, 2020-01-07 at 10:28 +0100, Heiko St=FCbner wrote:
> > > > Am Dienstag, 7. Januar 2020, 03:37:21 CET schrieb Laurent Pinchart:
> > > > > On Mon, Jan 06, 2020 at 11:06:12PM -0300, Ezequiel Garcia wrote:
> > > > > > On Tue, 2020-01-07 at 02:10 +0200, Laurent Pinchart wrote:
> > > > > > > Hi Helen,
> > > > > > > =

> > > > > > > Thank you for the patch.
> > > > > > > =

> > > > > > > On Fri, Dec 27, 2019 at 05:01:14PM -0300, Helen Koike wrote:
> > > > > > > > Add yaml DT bindings for Rockchip MIPI D-PHY RX
> > > > > > > > =

> > > > > > > > This was tested and verified with:
> > > > > > > > mv drivers/staging/media/phy-rockchip-dphy/Documentation/de=
vicetree/bindings/phy/rockchip-mipi-
> > > > > > > > dphy.yaml  Documentation/devicetree/bindings/phy/
> > > > > > > > make dt_binding_check DT_SCHEMA_FILES=3DDocumentation/devic=
etree/bindings/phy/rockchip-mipi-dphy.yaml
> > > > > > > > make dtbs_check DT_SCHEMA_FILES=3DDocumentation/devicetree/=
bindings/phy/rockchip-mipi-dphy.yaml
> > > > > > > > =

> > > > > > > > Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > > > > > > > =

> > > > > > > > ---
> > > > > > > > =

> > > > > > > > Changes in v12:
> > > > > > > > - The commit replaces the following commit in previous seri=
es named
> > > > > > > > media: staging: dt-bindings: Document the Rockchip MIPI RX =
D-PHY bindings
> > > > > > > > This new patch adds yaml binding and was verified with
> > > > > > > > make dtbs_check and make dt_binding_check
> > > > > > > > =

> > > > > > > > Changes in v11: None
> > > > > > > > Changes in v10:
> > > > > > > > - unsquash
> > > > > > > > =

> > > > > > > > Changes in v9:
> > > > > > > > - fix title division style
> > > > > > > > - squash
> > > > > > > > - move to staging
> > > > > > > > =

> > > > > > > > Changes in v8: None
> > > > > > > > Changes in v7:
> > > > > > > > - updated doc with new design and tested example
> > > > > > > > =

> > > > > > > >  .../bindings/phy/rockchip-mipi-dphy.yaml      | 75 +++++++=
++++++++++++
> > > > > > > >  1 file changed, 75 insertions(+)
> > > > > > > >  create mode 100644 drivers/staging/media/phy-rockchip-dphy=
/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
> > > > > > > > =

> > > > > > > > diff --git a/drivers/staging/media/phy-rockchip-dphy/Docume=
ntation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
> > > > > > > > b/drivers/staging/media/phy-
> > > > > > > > rockchip-dphy/Documentation/devicetree/bindings/phy/rockchi=
p-mipi-dphy.yaml
> > > > > > > > new file mode 100644
> > > > > > > > index 000000000000..af97f1b3e005
> > > > > > > > --- /dev/null
> > > > > > > > +++ b/drivers/staging/media/phy-rockchip-dphy/Documentation=
/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
> > > > > > > > @@ -0,0 +1,75 @@
> > > > > > > > +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > > > > > > +%YAML 1.2
> > > > > > > > +---
> > > > > > > > +$id: http://devicetree.org/schemas/phy/rockchip-mipi-dphy.=
yaml#
> > > > > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > > > > +
> > > > > > > > +title: Rockchip SoC MIPI RX0 D-PHY Device Tree Bindings
> > > > > > > =

> > > > > > > Should this be s/RX0/RX/ ? Or do you expect different binding=
s for RX1 ?
> > > > > > =

> > > > > > The driver currently only supports RX0, but I think you are rig=
ht,
> > > > > > it should say RX here. This binding could be extended for RX1.
> > > > > > =

> > > > > > > Looking at the PHY driver, it seems to handle all PHYs with a=
 single
> > > > > > > struct device. Should we thus use #phy-cells =3D <1> to selec=
t the PHY ?
> > > > > > =

> > > > > > I am not following this. The driver handles just one PHY. Each =
PHY
> > > > > > should have its own node.
> > > > > =

> > > > > Looking at the registers, it seems that the different PHYs are
> > > > > intertwined and we would could have trouble handling the differen=
t PHYs
> > > > > with different DT nodes and thus struct device instances.
> > > > =

> > > > I have to confess to not following _ALL_ of the threads, so may say
> > > > something stupid, but I don't think the PHYs are intertwined so muc=
h.
> > > > =

> > > > Where RX0 is controlled from the "General Register Files" alone
> > > > [register dumping ground for soc designers], the TX1RX1-phy
> > > > actually gets controlled from inside the dsi1 register area it seem=
s.
> > > > =

> > > > So in my previous (still unsucessful) tests, I was rolling with som=
ething like
> > > > https://github.com/mmind/linux-rockchip/commit/e0d4b03976d2aab85a8c=
1630be937ea003b5df88
> > > > =

> > > > With the actual "logic" picked from the vendor kernel, that just do=
uble-
> > > > maps the dsi1-registers in both dsi and dphy driver, which was stra=
nge.
> > > =

> > > Describing each PHY in its own device node (as we currently do)
> > > results in:
> > > =

> > >         mipi_dphy_tx1rx1: mipi-dphy-tx1rx1@ff968000 {
> > >                 compatible =3D "rockchip,rk3399-mipi-dphy";
> > >                 reg =3D <0x0 0xff968000 0x0 0x8000>;
> > >                 rockchip,grf =3D <&grf>;
> > >         };
> > =

> > 0xff968000 actually really is the dsi1 controller, so we'll already
> > have a node for that area. That is the reason I went that way to make
> > the rockchip-dsi optionally also behave as phy-provider.
> > =

> > So when it's used in combination with drm and a panel or so it will
> > behave as dsi controller, but when requested via the phy-framework
> > it will expose the dphy functionality.
> =

> Doesn't RX1/TX1 also expose controls through GRF ? For instance
> GRF_SOC_CON9 has a dphy_rx1_clk_inv_sel bit.

There are parts in the GRF but the whole phy-write stuff is inside
the dsi controller area. See the vendor kernel at
	https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/phy/rock=
chip/phy-rockchip-mipi-rx.c#L1427

where you get write_grf_reg() for GRF bits but also the write_txrx_reg()
and mipidphy1_wr_reg() calls that access registers inside the dsi1
controller space.


Heiko

> =

> > >         grf: syscon@ff770000 {
> > >                 mipi_dphy_rx0: mipi-dphy-rx0 {
> > >                         compatible =3D "rockchip,rk3399-mipi-dphy";
> > >                 };
> > >         };
> > > =

> > > Which is mildly ugly, as it uses two mechanism to describe
> > > the GRF resource. In addition, the driver will then _infer_
> > > which device node is RX0 and which is TX1RX1, from this.
> > > =

> > > Perhaps Laurent's proposal, describing each PHY explicitly,
> > > would be cleaner?
> > =

> > so I really think we shouldn't merge these two things together,
> > especially to not break the dsi1 controller part.
> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
