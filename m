Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F540190CEC
	for <lists+linux-rockchip@lfdr.de>; Tue, 24 Mar 2020 12:59:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hx1T+8JBSfI3aeYFCbB7OxfJNtf9QnbFvuLnwDRF1Ew=; b=XctN1jxvMZbi3jdqww5Sxpr9h
	nxGNQ/ersY3Yvs+e6nGTwpra1/O4y5dfQMxm/fINCz2lltJZxK1ZFDmdBiV6re6bWm/ynvUzYkbC0
	8avuTOMTUQ8GQwIavGVs/XGuXwoW58MPdPO+dAp6/Xeff35npyOdEMsinhrKhSWHIeN30mk+/7DqG
	3Yc6sktOYe0lrDLn5lvd5IwE452XCM1antqMQTZUd+8y/642PaK2EZVF9ieo4947Z/opZId2gkRPI
	gq/ohBkI3bA2F/WxblVrvQpF9mz1zElmQBE+VKYpfyHOpdXazsPtGEje580rRBTV+LqowJXQdBvCJ
	tvME/xGXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGiDG-0007gY-J8; Tue, 24 Mar 2020 11:59:18 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiDC-0007ep-Ix; Tue, 24 Mar 2020 11:59:16 +0000
Received: by mail-qv1-xf42.google.com with SMTP id p60so9025982qva.5;
 Tue, 24 Mar 2020 04:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IzasdxRYqM7rOFN66DBG3h2VMkVrFQ3GhK1sACp5S8U=;
 b=Q5OL7hM7fhWYS7E1vvbqxwxRQU8X06B/qc/qoWD7sTquEt4AdWaJ1sJ2KH16uIw8P5
 JlylgRJqGl9LOMT+8ib1IR+jISmtrNuwj1cujpS+JjdlrGemau0YqDswan/GNG9gW4ul
 f3g8/tQJglQFuWT2C98zBaPwT/lxC5nd84FkPLpC8mlinjlf6xqdPGm30uOO29ZdCRSB
 9J7nvn2vrwACeElwn1eXKQfXZTRsIy92MHiaXyhDkOsWgowcqpYCD43Di3dQj8J5gRO6
 3CdGLfY7noTkcnXpNlnG0RQc2PLwEXZX06wRkIfiYcKJKFbRJJb5VV/j89Vw5UAS0Hrt
 JwPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IzasdxRYqM7rOFN66DBG3h2VMkVrFQ3GhK1sACp5S8U=;
 b=E3EK+P7WJNqL2wGk8Oqmgy426b4lmiDxWgC60rVbfsYHbPBpc1SYfL+oCVVs+k5rWT
 uLXTE9LFfQTcTIhvzyQwA0Z0YZZ2Jn/OOWr/MMQGQ1LBycjmlxJQzBUl5CXQ8mWW96TL
 NcVOj20ziCLYAKWGnxoj8adM1eOrXdBEh+HbTH+8VPrwUFDO0MfeX9LVjbI1Rr8xDlbI
 M1qSAYb4fLnd5Afv9CvA5mWiWKZDqpqW+c8Psfzh9u6J+r+/+k8iR3p6rC9NuVlJfhTk
 YcZ4VP+nzoNrLfDiqw0EeNnZY9uCLUfIDSQb1u1sxhANq7G9tLnV/HUX+WOXy7m7j4eX
 K6Gg==
X-Gm-Message-State: ANhLgQ3w7h2nwRhWMuI9+Bt5nquWIRFthQ9sRSFEUgPFj4EMGsxR/hzS
 VTn/9NkQGrADmyitvpKLvmo=
X-Google-Smtp-Source: ADFU+vsRrRM8GomjFcPHutO/gZSvZ9pBrvIDKkaAb0+Vm+OeJtn1ews7WZEp9PklwYeqveQN1bHBCQ==
X-Received: by 2002:a0c:edca:: with SMTP id i10mr6735372qvr.130.1585051152710; 
 Tue, 24 Mar 2020 04:59:12 -0700 (PDT)
Received: from smtp.gmail.com ([2607:fea8:56a0:11a1::4])
 by smtp.gmail.com with ESMTPSA id x124sm2222237qkc.70.2020.03.24.04.59.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 04:59:11 -0700 (PDT)
Date: Tue, 24 Mar 2020 07:59:05 -0400
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 20/22] drm/vkms: Use simple encoder
Message-ID: <20200324115905.dp5jqzbmvhbmk2rn@smtp.gmail.com>
References: <20200305155950.2705-1-tzimmermann@suse.de>
 <20200305155950.2705-21-tzimmermann@suse.de>
MIME-Version: 1.0
In-Reply-To: <20200305155950.2705-21-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_045914_653637_2E7F93E5 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rodrigosiqueiramelo[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: hamohammed.sa@gmail.com, alexandre.belloni@bootlin.com, heiko@sntech.de,
 airlied@linux.ie, stefan@agner.ch, linux@armlinux.org.uk, paul@crapouillou.net,
 eric@anholt.net, thierry.reding@gmail.com, krzk@kernel.org, sam@ravnborg.org,
 sebastian.reichel@collabora.com, linux-samsung-soc@vger.kernel.org,
 jy0922.shim@samsung.com, hjc@rock-chips.com, festevam@gmail.com,
 abrodkin@synopsys.com, kong.kongxinwei@hisilicon.com,
 patrik.r.jakobsson@gmail.com, jonathanh@nvidia.com, xinliang.liu@linaro.org,
 ludovic.desroches@microchip.com, kgene@kernel.org, linux-imx@nxp.com,
 ck.hu@mediatek.com, linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 p.zabel@pengutronix.de, puck.chen@hisilicon.com, s.hauer@pengutronix.de,
 alison.wang@nxp.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 inki.dae@samsung.com, john.stultz@linaro.org, jsarha@ti.com,
 matthias.bgg@gmail.com, wens@csie.org, kernel@pengutronix.de,
 jernej.skrabec@siol.net, kraxel@redhat.com, tomi.valkeinen@ti.com,
 bbrezillon@kernel.org, jingoohan1@gmail.com, dri-devel@lists.freedesktop.org,
 sw0312.kim@samsung.com, nicolas.ferre@microchip.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch,
 zourongrong@gmail.com, linux-mediatek@lists.infradead.org, shawnguo@kernel.org,
 laurent.pinchart@ideasonboard.com
Content-Type: multipart/mixed; boundary="===============4305643729390996857=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============4305643729390996857==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xyxw5g6b72ps7vfq"
Content-Disposition: inline


--xyxw5g6b72ps7vfq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Thomas,

First of all, thanks for your patch!

I applied all your series, compiled it, and when I tried
`make INSTALL_MOD_PATH=3D/PATH/ modules_instal` I got the following
message:

 depmod: ERROR: Cycle detected: drm_kms_helper -> drm -> drm_kms_helper
 depmod: ERROR: Found 2 modules in dependency cycles!
 make: *** [Makefile:1317: _modinst_post] Error 1

I cleaned up my local files and tried again, but I got the same error;
If I just use `drm-misc-next` everything is fine.  Did I miss something?

Thanks

On 03/05, Thomas Zimmermann wrote:
> The vkms driver uses an empty implementation for its encoder. Replace
> the code with the generic simple encoder.
>=20
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/vkms/vkms_output.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/vkms/vkms_output.c b/drivers/gpu/drm/vkms/vk=
ms_output.c
> index fb1941a6522c..85afb77e97f0 100644
> --- a/drivers/gpu/drm/vkms/vkms_output.c
> +++ b/drivers/gpu/drm/vkms/vkms_output.c
> @@ -3,6 +3,7 @@
>  #include "vkms_drv.h"
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
> =20
>  static void vkms_connector_destroy(struct drm_connector *connector)
>  {
> @@ -17,10 +18,6 @@ static const struct drm_connector_funcs vkms_connector=
_funcs =3D {
>  	.atomic_destroy_state =3D drm_atomic_helper_connector_destroy_state,
>  };
> =20
> -static const struct drm_encoder_funcs vkms_encoder_funcs =3D {
> -	.destroy =3D drm_encoder_cleanup,
> -};
> -
>  static int vkms_conn_get_modes(struct drm_connector *connector)
>  {
>  	int count;
> @@ -70,8 +67,7 @@ int vkms_output_init(struct vkms_device *vkmsdev, int i=
ndex)
> =20
>  	drm_connector_helper_add(connector, &vkms_conn_helper_funcs);
> =20
> -	ret =3D drm_encoder_init(dev, encoder, &vkms_encoder_funcs,
> -			       DRM_MODE_ENCODER_VIRTUAL, NULL);
> +	ret =3D drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_VIRTUAL);
>  	if (ret) {
>  		DRM_ERROR("Failed to init encoder\n");
>  		goto err_encoder;
> --=20
> 2.25.1
>=20

--=20
Rodrigo Siqueira
https://siqueira.tech

--xyxw5g6b72ps7vfq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl559gMACgkQWJzP/com
vP9BEQ//bENFpSJc2y0XTYIOh3A9lmWbJYMBLW1j5T3uUJJu8x0lC0hqd0fJW3V8
iT1Pedxmmf7duluAn7uKjUQ1sPztm2PcJB8F9ADs+bJdKN2CqmsL3kB4Ip1Q+US7
t7cptBTF6FrLPo4e1WpZAEEu4UdyVsq16+0v3+8icC0YSX6KMQdI9QNvvp/5PmXF
xYc6wwyGGqNZhmVRyLu0Im+zG5TvscTmK3iIu1BOMEubsgZD/BP8ZSx0efQJKRhA
aPhzGs8S7Sp+EnE4wiTU6iZch3+KUw6D0lc398rdlvbZXmvxSxe8WxCwciMksgu5
c+A/+oJ80KIhkjWCQNpF5oddWXUUqy6yHZrzIWzkPAj9oVxQa0jr7EwAkT1h+Zp1
wUDLrQw9ZRw/GHv6awiSFDukLpHIabDgN9F0fsvx9aa/PJ53FOR6hilCOn8tIVnJ
oZabUjqa7pV3L8N5CFott+8EV2y4GZK5R+VW6MX8px2bfa7SaJl+9HgeKssOYOkF
6cwm+IquaD3wz9h7elWGmEQgqj3jOviny3HT7I8U+ZlmMa6+JCMt4iq5e1R9q4du
PP4mh695VhSas/mbB3qjZFy/FCj1bvJ8J6AdHOoNDmjM4JVv9F5S5yi3UN5uEBXC
ZtKmSxghh2GJS2LFK6b88yxVNVNYrCX6bYWSyfovToU6C0QzbKs=
=srDw
-----END PGP SIGNATURE-----

--xyxw5g6b72ps7vfq--


--===============4305643729390996857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4305643729390996857==--

