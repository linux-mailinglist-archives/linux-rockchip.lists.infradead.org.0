Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D71EBCEC00
	for <lists+linux-rockchip@lfdr.de>; Mon,  7 Oct 2019 20:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbO9f/zR9Ek+1yHLvNxs0VlCuAWlnJYSSRJmIue+jek=; b=kb2+0PRnokXF/i
	UAMlsmGMnBev8uXjDqkF1juhjFyCzvnAeDrY7V+8IOeG8482QSC2REnM2eXGCL1y1HKg1UYo595PU
	HQ1Tw2HuJKgLkXuRaP0RFjSSDlY4+1xGYJTTd1auOnKpESls7MuGg9MUHs2lTEjuGaJxmLK4kH36X
	r7lZo/OVEU5pW8UMdK6dg0XDmDt5+zrK3QtqhFRWGNwfOOHJzEyyA3DhaYSHveb8RvDww5U7SGlOZ
	+wTJQapLkyVGyoXSy2vkITudTcJM1xsrl/POSpVQL7ob7wqGeBSuLcbVg4HftHtmZCbeAHoDGawng
	W0a/XcCdFKrf1bAFPCZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHXpj-0001B0-TD; Mon, 07 Oct 2019 18:34:11 +0000
Received: from mail-oln040092071108.outbound.protection.outlook.com
 ([40.92.71.108] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHXpV-0000si-FO
 for linux-rockchip@lists.infradead.org; Mon, 07 Oct 2019 18:34:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PzC+CtRz8zApziSU6RaGpNLSv5IMrDPgfE4oXxHtt5AxwE9ZbUyNMWM2aQkm4dfMlkTi3E9Z3he6Y6zYJeCcZnaHp0SMhLmUZxsPbFymR26e3daNXIcFn1q3NlT+MJwMXJUVkvDuUERz0v8KHUktoYhzFpXGs/F/Qe1pykOxmDVmbAvWo5a62vtmLZqcSinmIWYS6TOq0++CNlEoLP04cYJuCwsYFZOIISzx2Po86BkCzN7bwr8Fcjxrn8zWOfT9SFurm1eqrTdLeRynPGHqfhZ1yZt7RCWMfNYoopr2v41Ysc7TavfZ7Eg9aImcWh1xX9Hs8KyInzDqrEyTwAPUWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gv/rWJhNzSxfYffBOdNDgTZKoNhZl/1l0r+f1m1j2SQ=;
 b=ds0o4tZr0qtPaB/bqDF+k9Nj7guMaP4BJGb8jHsh+/TBLzT/IBjQxXvG1c2WKo5imGC+u2la5J82s6aUzarTjMKnuoNVJ2G2GV4ddCMqdGM3HkSvGKbRScLxHrv/nW60qb2HClXwU/wUZRvj6gP21YyMku+m7IuLN/uKrmKuBvx0HGA0Ziq09+rh2FhRHvI5xJIsS2lHTRpeNwpRGUsE/++rSjeca9U9Lri1C1aHdajRssqn6A6fhSCR6ugYcI5HZURkbELsgJ4IYo/cMoKwF7qQ4bXz6InfmdfIFZkqavXouZq5kVrVGyBcSUrS8JfOmTSFTEp0dPJewhGPFImL7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from AM5EUR03FT023.eop-EUR03.prod.protection.outlook.com
 (10.152.16.58) by AM5EUR03HT008.eop-EUR03.prod.protection.outlook.com
 (10.152.16.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.15; Mon, 7 Oct
 2019 18:33:53 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.16.55) by
 AM5EUR03FT023.mail.protection.outlook.com (10.152.16.169) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Mon, 7 Oct 2019 18:33:53 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8%4]) with mapi id 15.20.2305.023; Mon, 7 Oct 2019
 18:33:52 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@collabora.com>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>
Subject: Re: [PATCH v2 for 5.4 3/4] media: hantro: Fix motion vectors usage
 condition
Thread-Topic: [PATCH v2 for 5.4 3/4] media: hantro: Fix motion vectors usage
 condition
Thread-Index: AQHVfTc5j58jepLQQEujLcDcYkaduadPgRaA
Date: Mon, 7 Oct 2019 18:33:52 +0000
Message-ID: <HE1PR06MB4011204B3FC2DAABB4BD1BACAC9B0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-4-ezequiel@collabora.com>
In-Reply-To: <20191007174505.10681-4-ezequiel@collabora.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0221.eurprd05.prod.outlook.com
 (2603:10a6:3:fa::21) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:49284390698F95E349DEB478EB2430A8870D4DB416F62A400A8F266140FFC451;
 UpperCasedChecksum:4F92DD6035FE886F19CD68B67CA8F12580B75676CED0F81661C49F4223916D9C;
 SizeAsReceived:8137; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [3e3yQm2qrRRttsWuOTk9jkZyALgVhhVF]
x-microsoft-original-message-id: <f89199a9-0b23-343c-7456-d003ecedce2d@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: AM5EUR03HT008:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wyoIY13z+kw+xTtJwBbf+Am7TOKkl1qpmUuxROSTL+cqkjmiMbR2ftH4GR3wAMuYXlpOvzRPRx3A35cH9VFGayKYOjpBaBmVzf+ffN1ONC6J0NR1mVpOXp3UszProbQbtn6Lrgr1kdlyTEQQ7NNgpn6aBXq1XQLb26vtqkgd7ySHMATYmd+2RKC7IYJ60zMc
x-ms-exchange-transport-forked: True
Content-ID: <940378B8E35A0A4AAADCC3F80571F034@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d69403e-8247-4b01-23bb-08d74b54e68b
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 18:33:52.7590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_113357_635465_C9003141 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.71.108 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Douglas Anderson <dianders@chromium.org>,
 "fbuergisser@chromium.org" <fbuergisser@chromium.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "kernel@collabora.com" <kernel@collabora.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-10-07 19:45, Ezequiel Garcia wrote:
> From: Francois Buergisser <fbuergisser@chromium.org>
>
> The setting of the motion vectors usage and the setting of motion
> vectors address are currently done under different conditions.
>
> When decoding pre-recorded videos, this results of leaving the motion
> vectors address unset, resulting in faulty memory accesses. Fix it
> by using the same condition everywhere, which matches the profiles
> that support motion vectors.

This does not fully match hantro sdk:

=A0 enable direct MV writing and POC tables for high/main streams.
=A0 enable it also for any "baseline" stream which have main/high tools ena=
bled.

=A0 (sps->profile_idc > 66 && sps->constrained_set0_flag =3D=3D 0) ||
=A0 sps->frame_mbs_only_flag !=3D 1 ||
=A0 sps->chroma_format_idc !=3D 1 ||
=A0 sps->scaling_matrix_present_flag !=3D 0 ||
=A0 pps->entropy_coding_mode_flag !=3D 0 ||
=A0 pps->weighted_pred_flag !=3D 0 ||
=A0 pps->weighted_bi_pred_idc !=3D 0 ||
=A0 pps->transform8x8_flag !=3D 0 ||
=A0 pps->scaling_matrix_present_flag !=3D 0

Above check is used when DIR_MV_BASE should be written.
And WRITE_MVS_E is set to nal_ref_idc !=3D 0 when above is true.

I think it may be safer to always set DIR_MV_BASE and keep the existing nal=
_ref_idc check for WRITE_MVS_E.
(That is what I did in my "media: hantro: H264 fixes and improvements" seri=
es, v2 is incoming)
Or have you found any video that is having issues in such case?

Regards,
Jonas

>
> Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
> Signed-off-by: Francois Buergisser <fbuergisser@chromium.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> v2:
> * New patch.
>
>  drivers/staging/media/hantro/hantro_g1_h264_dec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/=
staging/media/hantro/hantro_g1_h264_dec.c
> index 7ab534936843..c92460407613 100644
> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> @@ -35,7 +35,7 @@ static void set_params(struct hantro_ctx *ctx)
>  	if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
>  		reg |=3D G1_REG_DEC_CTRL0_SEQ_MBAFF_E;
>  	reg |=3D G1_REG_DEC_CTRL0_PICORD_COUNT_E;
> -	if (dec_param->nal_ref_idc)
> +	if (sps->profile_idc > 66)
>  		reg |=3D G1_REG_DEC_CTRL0_WRITE_MVS_E;
>  =

>  	if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY) &&


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
