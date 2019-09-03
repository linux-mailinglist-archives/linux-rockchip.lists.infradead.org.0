Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E41DA7456
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 22:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHz93rmexoP3hf0Fshh3S4mkQJrch73X5h/2hDEKBd8=; b=iC0ZTgYnEhDANP
	LOhGJquxbZ5BULydW5t9mJzf5YdCoicAGRvBpeT4gsezLNOAovln4iloC3YlkD1vR1WA5unsHoger
	zYDT3IXepvy5zlSMM5RGcpl7mTqE5ngzeLpjD/+P12x5aa+3UbRMYjC979LEcGe6EMSqQHLhNrbL5
	oOWHh78fXBC4Lz7vl1HOQd4xNAanlQNd4k0iwh2951FCv0dVIzvnirSVNnP4ovgfm17LH9F8mu9WC
	y1lu6Edh0SCnq6Rd69Qq0IOIZBVXG71FpKId6ViTh9ueG/3bIjmlQwKrd9PyVkqvmiCoKdCio4zDD
	EV/CnpZYrauBSsUr6Nqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5FAy-0000L1-CR; Tue, 03 Sep 2019 20:13:16 +0000
Received: from mail-he1eur01olkn0804.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::804]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5FAu-0000JC-Ol
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 20:13:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UIXCJIDF39sLRApHp+eAvQEgG2kGT7bFg9VXwR/uCO2tuph+GiqB5JFdnf7AwI7WCsdk5KLOYywdUafvTTiH/VtZhPPYRdvdgMG4qVTe7Wmn1c5pRq1P0cCNkw/EWDvUQwkTKKgEMN31Nq0BlvgY/jhdb1oz7QYsvaFD3bPHiPwtmOsorRn41UH8NmH9zy75r4J1rAYnjYcitCcS2FPjYE0w6opsYfZOMW8TEa6yY6lUEjv3/9900/hOVIY5K7EXkNSbXidqMnaNdVhufwLAJDX5hlbIWETZiLJP2NEmQeAagxVm668oqexk7maoEaAdcvdyAnwiKGTVwwnjX1YLfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wkbzfw94ZovJnRbTc+uMA5aFjAxPR2BJT65NTKwk2n4=;
 b=nNwl9Swj2cRWGllJnz77gFDfDnLEGvQmeR9Vt1/TvuBcWgGusvieBMiGfEjnuXSA4JPtLf7nX73iA2pCgExqKC4qCxKHRNxnPYSLFrYH18bf7JNSpZei/Xpe2FwvA4pNQWyrPupfNTxxGqw1V6BEkGLc6EZ5pEHNTjqbdEmLkSlooLTM7t9KoD9LRQIaZa/lTbOriwoPDWT/B3+D3k10QszXSv2icIqwrbrrOqm38agwmN577tzU7lfPf5I93gmvmI9iJaKrEILeWj23V2RyZRDGfZj7GDX8Ftkth1vDvb+kppppb4CwHrksl0gZ5QJHFWA+j+rNLACuFRUR/4g7aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DB5EUR01FT045.eop-EUR01.prod.protection.outlook.com
 (10.152.4.60) by DB5EUR01HT225.eop-EUR01.prod.protection.outlook.com
 (10.152.5.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.16; Tue, 3 Sep
 2019 20:13:08 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.4.58) by
 DB5EUR01FT045.mail.protection.outlook.com (10.152.4.180) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2220.16 via Frontend Transport; Tue, 3 Sep 2019 20:13:08 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::59e6:329d:5fc7:5181]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::59e6:329d:5fc7:5181%5]) with mapi id 15.20.2241.014; Tue, 3 Sep 2019
 20:13:08 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Philipp Zabel <p.zabel@pengutronix.de>, Ezequiel Garcia
 <ezequiel@collabora.com>
Subject: Re: [PATCH 03/12] media: hantro: Fix H264 motion vector buffer offset
Thread-Topic: [PATCH 03/12] media: hantro: Fix H264 motion vector buffer offset
Thread-Index: AQHVYMMqTL16PRzVbkakeBcuIqgT/qcZy4qAgACa7gA=
Date: Tue, 3 Sep 2019 20:13:08 +0000
Message-ID: <HE1PR06MB401167BD655F537D4136737AACB90@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB40115337CD86C429EF24430CACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <1567508315.5229.3.camel@pengutronix.de>
In-Reply-To: <1567508315.5229.3.camel@pengutronix.de>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0381.eurprd05.prod.outlook.com
 (2603:10a6:7:94::40) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:A1D0513A921B7CB73DC04472AAE55CC7CB084039ECCC2B4F70013F220F2B074B;
 UpperCasedChecksum:5C63691025E9445E533495F08A886F2AF851E41277955C9169C4704572765C5F;
 SizeAsReceived:7968; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [5cLWjUJ8VeupLS07pQSFJ4ue3jhVye99]
x-microsoft-original-message-id: <bb2b94e8-0dab-9bbc-4211-fa1d99136dff@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR01HT225; 
x-ms-traffictypediagnostic: DB5EUR01HT225:
x-microsoft-antispam-message-info: OBsC2l1tb9gg2iwyc8Vjpf9Y+s4Lbd5CfXTKCDy5Wsq54Kf1CTYP9ai23d0MG0xw/WzDb7D9qjVue73l2za2Or3VPp6IYczzLC4+SeywZDXe1OHxbl8xUlpwDgwP2kPO8fSeWvGO5EAAQsV4EedxyKhs3dBua/IAbpDWJDjP6AZr72H61cjnO5bOaPYEpV8M
x-ms-exchange-transport-forked: True
Content-ID: <0AEA8BFA2FB26D429009542510288FBE@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 74632d7d-249c-41b3-0656-08d730ab232e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 20:13:08.6572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_131312_814089_1BBAAEFE 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:804 listed in]
 [list.dnswl.org]
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-09-03 12:58, Philipp Zabel wrote:
> Hi Jonas,
>
> On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
>> A decoded 8-bit 4:2:0 frame need memory for up to 448 macroblocks
>> and is laid out in memory as follow:
> Do you mean "A decoded 8-bit 4:2:0 frame needs up to 448 bytes per
> macroblock"?
>
> A 1280x720 frame already consists of 3600 macroblocks (each 16x16 Y +
> 2x8x8 Cb,Cr).

You are correct, thanks for pointing out, I will change in a v2.

>
>> +-------------------+
>>> Y-plane   256 MBs |
> So that looks like it should be 256 bytes * number of macroblocks
> instead, same for the following two.

Ack.

>
>> +-------------------+
>>> UV-plane  128 MBs |
>> +-------------------+
>>> MV buffer  64 MBs |
>> +-------------------+
>>
>> The motion vector buffer offset is currently correct for 4:2:0 because
>> the extra space for motion vectors is overallocated with an extra 64 MBs.
>>
>> Wrong offset for both destination and motion vector buffer are used
>> for the bottom field of field encoded content, wrong offset is
>> also used for 4:0:0 (monochrome) content.
>>
>> Fix this by always setting the motion vector address to the expected
>> 384 MBs offset for 4:2:0 and 256 MBs offset for 4:0:0 content.
> Expected by whom? For example, could these be placed in separate buffers
> instead of appended to the VB2 allocated buffers?

From what I understand main and high profile decoding have hw constraints in that
the direct mode motion vectors buffer must be located continuously after the YUV buffer.

I also observed instances where the current requirement for profile_idc > 66 caused issues
for some streams, e.g. big_buck_bunny_1080p_H264_AAC_25fps_7200K.mp4

Because of this it was just easier to always configure the motion vector buffer address.

>
>> Also use correct destination and motion vector buffer offset
>> for the bottom field of field encoded content.
>>
>> While at it also extend the check for 4:0:0 (monochrome) to include an
>> additional check for High Profile (100).
>>
>> Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  .../staging/media/hantro/hantro_g1_h264_dec.c | 33 +++++++++++--------
>>  1 file changed, 19 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>> index 7ab534936843..159bd67e0a36 100644
>> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>> @@ -19,6 +19,9 @@
>>  #include "hantro_hw.h"
>>  #include "hantro_v4l2.h"
>>  
>> +#define MV_OFFSET_420	384
>> +#define MV_OFFSET_400	256
>> +
>>  static void set_params(struct hantro_ctx *ctx)
>>  {
>>  	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
>> @@ -49,8 +52,8 @@ static void set_params(struct hantro_ctx *ctx)
>>  	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL0);
>>  
>>  	/* Decoder control register 1. */
>> -	reg = G1_REG_DEC_CTRL1_PIC_MB_WIDTH(sps->pic_width_in_mbs_minus1 + 1) |
>> -	      G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(sps->pic_height_in_map_units_minus1 + 1) |
>> +	reg = G1_REG_DEC_CTRL1_PIC_MB_WIDTH(H264_MB_WIDTH(ctx->dst_fmt.width)) |
>> +	      G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(H264_MB_HEIGHT(ctx->dst_fmt.height)) |
>>  	      G1_REG_DEC_CTRL1_REF_FRAMES(sps->max_num_ref_frames);
>>  	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL1);
>>  
>> @@ -79,7 +82,7 @@ static void set_params(struct hantro_ctx *ctx)
>>  		reg |= G1_REG_DEC_CTRL4_CABAC_E;
>>  	if (sps->flags & V4L2_H264_SPS_FLAG_DIRECT_8X8_INFERENCE)
>>  		reg |= G1_REG_DEC_CTRL4_DIR_8X8_INFER_E;
>> -	if (sps->chroma_format_idc == 0)
>> +	if (sps->profile_idc >= 100 && sps->chroma_format_idc == 0)
>>  		reg |= G1_REG_DEC_CTRL4_BLACKWHITE_E;
>>  	if (pps->flags & V4L2_H264_PPS_FLAG_WEIGHTED_PRED)
>>  		reg |= G1_REG_DEC_CTRL4_WEIGHT_PRED_E;
>> @@ -233,6 +236,7 @@ static void set_buffers(struct hantro_ctx *ctx)
>>  	struct vb2_v4l2_buffer *src_buf, *dst_buf;
>>  	struct hantro_dev *vpu = ctx->dev;
>>  	dma_addr_t src_dma, dst_dma;
>> +	unsigned int offset = MV_OFFSET_420;
>>  
>>  	src_buf = hantro_get_src_buf(ctx);
>>  	dst_buf = hantro_get_dst_buf(ctx);
>> @@ -243,19 +247,20 @@ static void set_buffers(struct hantro_ctx *ctx)
>>  
>>  	/* Destination (decoded frame) buffer. */
>>  	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
>> +	if (ctrls->slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD)
>> +		dst_dma += ALIGN(ctx->dst_fmt.width, H264_MB_DIM);
> How does this work? Does userspace decode two fields into the same
> capture buffer and the hardware writes each field with a stride of 2
> lines? I suppose this corresponds to V4L2_FIELD_INTERLACED. Could this
> also be made to support V4L2_FIELD_SEQ_TB output?

Yes, both fields are decoded into the same capture buffer, top field to odd numbered lines
and bottom field to even numbered lines, so I guess this corresponds to V4L2_FIELD_INTERLACED.
This is also how the cedrus driver handles field decoding with Jernej's h264 patches.

I do not know if it is possible to configure the hw to decode into a V4L2_FIELD_SEQ_TB type output.

Regards,
Jonas

>
> regards
> Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
