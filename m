Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD97BD5884
	for <lists+linux-rockchip@lfdr.de>; Mon, 14 Oct 2019 00:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oSHS+iw1baNo+vPxPwKvc2UFHxhu+D5OGLrGT/vA4Es=; b=GFAIwQudvmKnSROeQdKzhGkSn
	RXBWIVVtZPImhWvgFUj6L3OiDdcm4bCyLUX5rjkje9F1bid5SdeQS/nujn4PB7Io/uRf+7LdelAoX
	SJRdfMupR2UVV9KqVFFh00NpSN5M2Ed3YckBVoB5EvZTgww5V7QVYWXx4S9kcX+g7qwoD/FUpxk9D
	tPnMJ8Hy7eMogIuHUh91Qa227Imebr05CDojzYD4Y7xEzXNEfas1C0UQ88awhuovtW9hmKS/DHEd3
	fh/HyMC8mV138LESnXik/9mk+NjuC9NSmTqDVwauF1bFtdUqVdaOuZm06jxxu/T8We6jm8/+VOn2G
	VJD2n1c3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJm4C-0005xq-OD; Sun, 13 Oct 2019 22:10:20 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJm49-000553-0x
 for linux-rockchip@lists.infradead.org; Sun, 13 Oct 2019 22:10:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 8213226CDB7
Message-ID: <0d40f89059cd5aba96adcdd24340636df3315592.camel@collabora.com>
Subject: Re: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize
 supported on RK3288
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Tomasz Figa <tfiga@chromium.org>, Jonas Karlman <jonas@kwiboo.se>
Date: Sun, 13 Oct 2019 18:10:09 -0400
In-Reply-To: <CAAFQd5DEhHF+_oO_0ZKS1mi26hJ-JueFxXfdpyQ3ATzMW5Czaw@mail.gmail.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-3-ezequiel@collabora.com>
 <CAAFQd5BNu2ea3ei_imHmEwmdna0+iiSbQSv_SBsdHfP4Uh1h4Q@mail.gmail.com>
 <HE1PR06MB4011EC9E93ECBB6773252247AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5CWoAP1psrEW6bVMkRmhFeTvFKtDSLjT7nefc2YiFovqQ@mail.gmail.com>
 <CAAFQd5AYCiKcA9pGc44L3gGHLPx6iMSb7KywkO8OqVv4gS8KvQ@mail.gmail.com>
 <CAAFQd5AQXGX_2gmKLfymH5mLG-uVh-v+XXtGXzbfzYzVVV42mA@mail.gmail.com>
 <HE1PR06MB4011B897EA5497659A19BCC6AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5DEhHF+_oO_0ZKS1mi26hJ-JueFxXfdpyQ3ATzMW5Czaw@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_151017_332859_3FBA3BCE 
X-CRM114-Status: GOOD (  28.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Reply-To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: "fbuergisser@chromium.org" <fbuergisser@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "kernel@collabora.com" <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============0741512173407277546=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0741512173407277546==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-aUI3xDCIDb8TpAefVVVl"


--=-aUI3xDCIDb8TpAefVVVl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 10 octobre 2019 =C3=A0 16:23 +0900, Tomasz Figa a =C3=A9crit :
> On Tue, Oct 8, 2019 at 11:12 PM Jonas Karlman <jonas@kwiboo.se> wrote:
> > On 2019-10-08 15:53, Tomasz Figa wrote:
> > > On Tue, Oct 8, 2019 at 10:35 PM Tomasz Figa <tfiga@chromium.org> wrot=
e:
> > > > On Tue, Oct 8, 2019 at 7:42 PM Tomasz Figa <tfiga@chromium.org> wro=
te:
> > > > > On Tue, Oct 8, 2019 at 3:31 PM Jonas Karlman <jonas@kwiboo.se> wr=
ote:
> > > > > > On 2019-10-08 07:27, Tomasz Figa wrote:
> > > > > > > Hi Ezequiel, Jonas,
> > > > > > >=20
> > > > > > > On Tue, Oct 8, 2019 at 2:46 AM Ezequiel Garcia <ezequiel@coll=
abora.com> wrote:
> > > > > > > > From: Jonas Karlman <jonas@kwiboo.se>
> > > > > > > >=20
> > > > > > > > TRM specify supported image size 48x48 to 4096x2304 at step=
 size 16 pixels,
> > > > > > > > change frmsize max_width/max_height to match TRM.
> > > > > > > >=20
> > > > > > > > Fixes: 760327930e10 ("media: hantro: Enable H264 decoding o=
n rk3288")
> > > > > > > > Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> > > > > > > > ---
> > > > > > > > v2:
> > > > > > > > * No changes.
> > > > > > > >=20
> > > > > > > >  drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
> > > > > > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > > > >=20
> > > > > > > > diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b=
/drivers/staging/media/hantro/rk3288_vpu_hw.c
> > > > > > > > index 6bfcc47d1e58..ebb017b8a334 100644
> > > > > > > > --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
> > > > > > > > +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> > > > > > > > @@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288_v=
pu_dec_fmts[] =3D {
> > > > > > > >                 .max_depth =3D 2,
> > > > > > > >                 .frmsize =3D {
> > > > > > > >                         .min_width =3D 48,
> > > > > > > > -                       .max_width =3D 3840,
> > > > > > > > +                       .max_width =3D 4096,
> > > > > > > >                         .step_width =3D H264_MB_DIM,
> > > > > > > >                         .min_height =3D 48,
> > > > > > > > -                       .max_height =3D 2160,
> > > > > > > > +                       .max_height =3D 2304,
> > > > > > > This doesn't match the datasheet I have, which is RK3288 Data=
sheet Rev
> > > > > > > 1.4 and which has the values as in current code. What's the o=
ne you
> > > > > > > got the values from?
> > > > > > The RK3288 TRM vcodec chapter from [1], unknown revision and da=
te, lists 48x48 to 4096x2304 step size 16 pixels under 25.5.1 H.264 decoder=
.
> > > > > >=20
> > > > > > I can also confirm that one of my test samples (PUPPIES BATH IN=
 4K) is 4096x2304 and can be decoded after this patch.
> > > > > > However the decoding speed is not optimal at 400Mhz, if I recal=
l correctly you need to set the VPU1 clock to 600Mhz for 4K decoding on RK3=
288.
> > > > > >=20
> > > > > > I am not sure if I should include a v2 of this patch in my v2 s=
eries, as-is this patch do not apply on master (H264_MB_DIM has changed to =
MB_DIM in master).
> > > > > >=20
> > > > > > [1] http://www.t-firefly.com/download/firefly-rk3288/docs/TRM/r=
k3288-chapter-25-video-encoder-decoder-unit-(vcodec).pdf
> > > > > I checked the RK3288 TRM V1.1 too and it refers to 3840x2160@24fp=
s as
> > > > > the maximum.
> > > > >=20
> > > > > As for performance, we've actually been getting around 33 fps at =
400
> > > > > MHz with 3840x2160 on our devices (the old RK3288 Asus Chromebook
> > > > > Flip).
> > > > >=20
> > > > > I guess we might want to check that with Hantro.
> > > > Could you check the value of bits 10:0 in register at 0x0c8? That
> > > > should be the maximum supported stream width in the units of 16
> > > > pixels.
> > > Correction: The unit is 1 pixel and there are additional 2 most
> > > significant bits at 0x0d8, 15:14.
> >=20
> > I will check this later tonight when I have access to my devices.
> > The PUPPIES BATH IN 4K (4096x2304) sample decoded without issue using r=
ockchip 4.4 BSP kernel and mpp last time I tested.
> >=20
> > The vcodec driver in 4.4 BSP kernel use 300/400 Mhz as default clock ra=
te and will change to 600 Mhz when width is over 2560, see [1]:
> >   raise frequency for resolution larger than 1440p avc
> >=20
> > [1] https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/v=
ideo/rockchip/vcodec/vcodec_service.c#L2551-L2570
>=20
> How comes it works for us well at 400 MHz? Better DRAM? Differences in
> how Vcodec BSP handles the hardware that somehow make the decoding
> slower?

FWIW, here on the mainline driver, on RK3288, playing a 4K30 sample
(probably the max for this one) get stuck at 20fps with 400MHz. So
600MHz would in theory be perfect to reach 30fps. That being said,
different stream yield different performance with H264 and other
CODECs, so doing a completely objective evaluation is hard.

>=20
> Best regards,
> Tomasz

--=-aUI3xDCIDb8TpAefVVVl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXaOgwQAKCRBxUwItrAao
HAQ6AKDOBNbKhIm8UP7JoDVLpGqHjnQ8OQCgrkRiP/+Ii99dH1c26VQtoefYlTk=
=fZQf
-----END PGP SIGNATURE-----

--=-aUI3xDCIDb8TpAefVVVl--



--===============0741512173407277546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0741512173407277546==--


