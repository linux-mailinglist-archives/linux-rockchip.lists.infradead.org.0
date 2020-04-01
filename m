Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4410119A60F
	for <lists+linux-rockchip@lfdr.de>; Wed,  1 Apr 2020 09:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oKr7Mdxn7QGl1ecZaa5KQv/H0gvianxODblLdAKvrVY=; b=rcnar+E8p6lWUewQaQtsETHs9
	fnHniidO3jEwXKxBexWmdC2zjJxwe4uXrsae27MAKD/0Yl8jmuKyqP1DWfTvq/xNoobCH1FYeSrox
	w6K/v1vzDidH0H7XGWls+LFEiZB4WJEDJROY7qbeeJoU+qbi9dhBM4cxzEh1HTtHX1UIaCSF2GMQO
	FObSufmd1/eSEwdkt6ssH4APDiPdcG3sB6Rv/eRV7iK0HNdcYEncl7xjoSCS+BUZ3sZkZC9osP9nA
	i6R7WVmTc8fD71oa86Qgk2g85ewM1D6dxvCkgGf8/UvhOUSUtYzG6UcHfETP6j+vzTLXy8Cw3AvkA
	HevzddFkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJXd2-0002My-Lc; Wed, 01 Apr 2020 07:17:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXcy-0002M2-2A; Wed, 01 Apr 2020 07:17:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D0132AB3D;
 Wed,  1 Apr 2020 07:17:25 +0000 (UTC)
Subject: Re: [PATCH 20/22] drm/vkms: Use simple encoder
To: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
References: <20200305155950.2705-1-tzimmermann@suse.de>
 <20200305155950.2705-21-tzimmermann@suse.de>
 <20200324115905.dp5jqzbmvhbmk2rn@smtp.gmail.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 mQENBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAG0J1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPokBVAQTAQgAPhYh
 BHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsDBQkDwmcABQsJCAcCBhUKCQgLAgQWAgMB
 Ah4BAheAAAoJEGgNwR1TC3ojR80H/jH+vYavwQ+TvO8ksXL9JQWc3IFSiGpuSVXLCdg62AmR
 irxW+qCwNncNQyb9rd30gzdectSkPWL3KSqEResBe24IbA5/jSkPweJasgXtfhuyoeCJ6PXo
 clQQGKIoFIAEv1s8l0ggPZswvCinegl1diyJXUXmdEJRTWYAtxn/atut1o6Giv6D2qmYbXN7
 mneMC5MzlLaJKUtoH7U/IjVw1sx2qtxAZGKVm4RZxPnMCp9E1MAr5t4dP5gJCIiqsdrVqI6i
 KupZstMxstPU//azmz7ZWWxT0JzgJqZSvPYx/SATeexTYBP47YFyri4jnsty2ErS91E6H8os
 Bv6pnSn7eAq5AQ0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRH
 UE9eosYbT6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgT
 RjP+qbU63Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+R
 dhgATnWWGKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zb
 ehDda8lvhFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r
 12+lqdsAEQEAAYkBPAQYAQgAJhYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsMBQkD
 wmcAAAoJEGgNwR1TC3ojpfcIAInwP5OlcEKokTnHCiDTz4Ony4GnHRP2fXATQZCKxmu4AJY2
 h9ifw9Nf2TjCZ6AMvC3thAN0rFDj55N9l4s1CpaDo4J+0fkrHuyNacnT206CeJV1E7NYntxU
 n+LSiRrOdywn6erjxRi9EYTVLCHcDhBEjKmFZfg4AM4GZMWX1lg0+eHbd5oL1as28WvvI/uI
 aMyV8RbyXot1r/8QLlWldU3NrTF5p7TMU2y3ZH2mf5suSKHAMtbE4jKJ8ZHFOo3GhLgjVrBW
 HE9JXO08xKkgD+w6v83+nomsEuf6C6LYrqY/tsZvyEX6zN8CtirPdPWu/VXNRYAl/lat7lSI
 3H26qrE=
Message-ID: <3c8c9567-2eca-55a7-072e-5d5c9517ba7d@suse.de>
Date: Wed, 1 Apr 2020 09:17:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200324115905.dp5jqzbmvhbmk2rn@smtp.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_001732_394083_525B6560 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: hamohammed.sa@gmail.com, alexandre.belloni@bootlin.com, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com,
 paul@crapouillou.net, matthias.bgg@gmail.com, wens@csie.org,
 thierry.reding@gmail.com, kraxel@redhat.com, sam@ravnborg.org,
 linux-samsung-soc@vger.kernel.org, jy0922.shim@samsung.com,
 linux-rockchip@lists.infradead.org, tomi.valkeinen@ti.com,
 abrodkin@synopsys.com, linux@armlinux.org.uk, krzk@kernel.org,
 jonathanh@nvidia.com, xinliang.liu@linaro.org, kong.kongxinwei@hisilicon.com,
 kgene@kernel.org, linux-imx@nxp.com, nicolas.ferre@microchip.com,
 puck.chen@hisilicon.com, s.hauer@pengutronix.de, alison.wang@nxp.com,
 jsarha@ti.com, linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 virtualization@lists.linux-foundation.org, jernej.skrabec@siol.net,
 bbrezillon@kernel.org, jingoohan1@gmail.com, sw0312.kim@samsung.com,
 hjc@rock-chips.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, ludovic.desroches@microchip.com,
 kernel@pengutronix.de, zourongrong@gmail.com, shawnguo@kernel.org,
 laurent.pinchart@ideasonboard.com
Content-Type: multipart/mixed; boundary="===============8709938234598463455=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8709938234598463455==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="POql06Hk2VcpYBHcwhf1TtupB5WQ7dTFU"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--POql06Hk2VcpYBHcwhf1TtupB5WQ7dTFU
Content-Type: multipart/mixed; boundary="1z7j8ob092evHfaOe3VHZ65Kyw81DNEUf";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Cc: hamohammed.sa@gmail.com, alexandre.belloni@bootlin.com, airlied@linux.ie,
 linux@armlinux.org.uk, paul@crapouillou.net, thierry.reding@gmail.com,
 krzk@kernel.org, sam@ravnborg.org, sebastian.reichel@collabora.com,
 linux-samsung-soc@vger.kernel.org, jy0922.shim@samsung.com,
 hjc@rock-chips.com, abrodkin@synopsys.com, kong.kongxinwei@hisilicon.com,
 jonathanh@nvidia.com, xinliang.liu@linaro.org,
 ludovic.desroches@microchip.com, kgene@kernel.org, linux-imx@nxp.com,
 linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 puck.chen@hisilicon.com, s.hauer@pengutronix.de, alison.wang@nxp.com,
 jsarha@ti.com, matthias.bgg@gmail.com, wens@csie.org, kernel@pengutronix.de,
 jernej.skrabec@siol.net, kraxel@redhat.com, tomi.valkeinen@ti.com,
 bbrezillon@kernel.org, jingoohan1@gmail.com,
 dri-devel@lists.freedesktop.org, sw0312.kim@samsung.com,
 nicolas.ferre@microchip.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, zourongrong@gmail.com,
 linux-mediatek@lists.infradead.org, shawnguo@kernel.org,
 laurent.pinchart@ideasonboard.com
Message-ID: <3c8c9567-2eca-55a7-072e-5d5c9517ba7d@suse.de>
Subject: Re: [PATCH 20/22] drm/vkms: Use simple encoder
References: <20200305155950.2705-1-tzimmermann@suse.de>
 <20200305155950.2705-21-tzimmermann@suse.de>
 <20200324115905.dp5jqzbmvhbmk2rn@smtp.gmail.com>
In-Reply-To: <20200324115905.dp5jqzbmvhbmk2rn@smtp.gmail.com>

--1z7j8ob092evHfaOe3VHZ65Kyw81DNEUf
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 24.03.20 um 12:59 schrieb Rodrigo Siqueira:
> Hi Thomas,
>=20
> First of all, thanks for your patch!
>=20
> I applied all your series, compiled it, and when I tried
> `make INSTALL_MOD_PATH=3D/PATH/ modules_instal` I got the following
> message:
>=20
>  depmod: ERROR: Cycle detected: drm_kms_helper -> drm -> drm_kms_helper=

>  depmod: ERROR: Found 2 modules in dependency cycles!
>  make: *** [Makefile:1317: _modinst_post] Error 1
>=20
> I cleaned up my local files and tried again, but I got the same error;
> If I just use `drm-misc-next` everything is fine.  Did I miss something=
?

I figured out that this problem is caused by the patch for the writeback
encoder, which is located in the DRM core. I'll drop the patch. Thanks
for testing!

Best regards
Thomas

>=20
> Thanks
>=20
> On 03/05, Thomas Zimmermann wrote:
>> The vkms driver uses an empty implementation for its encoder. Replace
>> the code with the generic simple encoder.
>>
>> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>> ---
>>  drivers/gpu/drm/vkms/vkms_output.c | 8 ++------
>>  1 file changed, 2 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/vkms/vkms_output.c b/drivers/gpu/drm/vkms=
/vkms_output.c
>> index fb1941a6522c..85afb77e97f0 100644
>> --- a/drivers/gpu/drm/vkms/vkms_output.c
>> +++ b/drivers/gpu/drm/vkms/vkms_output.c
>> @@ -3,6 +3,7 @@
>>  #include "vkms_drv.h"
>>  #include <drm/drm_atomic_helper.h>
>>  #include <drm/drm_probe_helper.h>
>> +#include <drm/drm_simple_kms_helper.h>
>> =20
>>  static void vkms_connector_destroy(struct drm_connector *connector)
>>  {
>> @@ -17,10 +18,6 @@ static const struct drm_connector_funcs vkms_connec=
tor_funcs =3D {
>>  	.atomic_destroy_state =3D drm_atomic_helper_connector_destroy_state,=

>>  };
>> =20
>> -static const struct drm_encoder_funcs vkms_encoder_funcs =3D {
>> -	.destroy =3D drm_encoder_cleanup,
>> -};
>> -
>>  static int vkms_conn_get_modes(struct drm_connector *connector)
>>  {
>>  	int count;
>> @@ -70,8 +67,7 @@ int vkms_output_init(struct vkms_device *vkmsdev, in=
t index)
>> =20
>>  	drm_connector_helper_add(connector, &vkms_conn_helper_funcs);
>> =20
>> -	ret =3D drm_encoder_init(dev, encoder, &vkms_encoder_funcs,
>> -			       DRM_MODE_ENCODER_VIRTUAL, NULL);
>> +	ret =3D drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_VIRTU=
AL);
>>  	if (ret) {
>>  		DRM_ERROR("Failed to init encoder\n");
>>  		goto err_encoder;
>> --=20
>> 2.25.1
>>
>=20
>=20
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=FCrnberg, Germany
(HRB 36809, AG N=FCrnberg)
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer


--1z7j8ob092evHfaOe3VHZ65Kyw81DNEUf--

--POql06Hk2VcpYBHcwhf1TtupB5WQ7dTFU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl6EQAMACgkQaA3BHVML
eiMuBAgAj5UES4iSvgdvGXsxU7JelWDRvIin40v50Ya1mepztavcMF/QTOeQUs60
90Kgxj2ohhObilKOzxm70RxWHHGRrMK0BMLE+Rwm3TpTZJ+s1Fojn484ZLBnu3hr
gWp05xuYFrQ/1GtsHStjvUB8ADDEVqnvf2ZomnKZWikHIYl5uCHzW6iumQwBzD/b
Sh76yaJjOWgjnisEpmCbCQPvN6I21dIM2aH11JFvn0S56vUdylZC7EeLjtjrV3nm
ix90pnKiwhpohP8Kho+t46VgGEUhDvObTrjNocgBpjdCdbUqINtFh362oJRGeoF/
Af05YTLOMakHmAB5r4RrZQVsdxYn8A==
=IKy5
-----END PGP SIGNATURE-----

--POql06Hk2VcpYBHcwhf1TtupB5WQ7dTFU--


--===============8709938234598463455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8709938234598463455==--

