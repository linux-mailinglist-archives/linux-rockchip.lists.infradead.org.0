Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65503A5B3E
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Sep 2019 18:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEVqSh68/eiZeeQXreUJUJSCuItuWNM7NoW7NtUxR8k=; b=AzwwjQJgfDOpNm
	0AiE6hke7vbuX9INkpBzZUYv//eYd6sab+e7lS213NC1cIxYDV57kfxsEz3dCF3MkO0JQrwMq5l6w
	ypZ6YpZBhsaTzCQ36U17EL93u2OgYmeHmc8hiawe3hmGiVMrDDveDqIsralGMSFGo43GuQ0RdMhWI
	7q40nXgYcD4sStPtZCFx7CIUxVBJvR7R2g1ntKevoxacXh3mTU+7zIxQlt1NKoiFhloUlo80b/2Ik
	Xr/OLdY2GDHFzcOwUQkBsWvGiZZ6OPROcfWjwJwOOd8YZEs58BKbvCp13uryXUNOS4EmGS621zH5v
	qpYqJ8nK+W0+1Ms3MRGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4p2D-0002QO-8L; Mon, 02 Sep 2019 16:18:29 +0000
Received: from mail-oln040092066109.outbound.protection.outlook.com
 ([40.92.66.109] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4p29-0002Pr-7V
 for linux-rockchip@lists.infradead.org; Mon, 02 Sep 2019 16:18:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YbfAFoSirBQHx13fspOwDYZOTHt3grLrOVihgDrA6VXVTJFwbYaR49NRzefsbBpGoHnAVVzqoECEnCTWHqlFHXXYGTFdrbZG0QGqbqreLi4KF0E7clyrzT78MFvTsxIwjcLqiJBlXifD9wTEiHJxIL/E4a27SceE2Py6IUm3d9KLCPWbz1sDPIwJ83GElwg9vm3gxGl3ZqEg72a4rSczmX7vMSArapd1Pzx9FOt0chUDYcQ96wgbz5ZxrXvhPAFPswAU66OXySijFQZ99NPlfwFF2dEqpZOAUpdemdmhuTySSNj/JZ57oawI9ti6mBKUnMfTlPRtK8Al2BNf9Z4zuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4fzDSVCmA2oWp1MKxWsn371x7TEDVn17TZWeTHsYU5E=;
 b=ajBNE49EL5shmPiL7pRm1mRJ7uD80eTfbN/jCgQ4Ggg+kS8JNVlK6PQ7FqqFRSWndAD6oIzuLWHqzXcrJNo2vUr9bbWZUFXiQUoOCKa0oP50NfolBoTFzqxLc0z6vL4r+YCCevmYbxiW7s8Z3svqBMZpzBt3s/HdWHPnh1SloekX7DdPdLQlQISIYPV2U7UC2qJpI86s3duUiYZuuX2nUGKgAwcpCSy/J5Plez+fxuQyJxdRgEZ8D0Jyodx9ESHWfIFyGc+XnQk22BaSuziqBeL1fuvq7R9JirgBA1f9wabz0i4fe68Nr2hWdpz129vaeLis2HniL932XA6dvzu1RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR01FT059.eop-EUR01.prod.protection.outlook.com
 (10.152.2.56) by VE1EUR01HT081.eop-EUR01.prod.protection.outlook.com
 (10.152.3.86) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.16; Mon, 2 Sep
 2019 16:18:21 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.2.59) by
 VE1EUR01FT059.mail.protection.outlook.com (10.152.3.127) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2220.16 via Frontend Transport; Mon, 2 Sep 2019 16:18:21 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::1188:7e7d:69b:a036]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::1188:7e7d:69b:a036%5]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 16:18:21 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Philipp Zabel <p.zabel@pengutronix.de>, Ezequiel Garcia
 <ezequiel@collabora.com>
Subject: Re: [PATCH 02/12] media: hantro: Do not reorder H264 scaling list
Thread-Topic: [PATCH 02/12] media: hantro: Do not reorder H264 scaling list
Thread-Index: AQHVYMMq6YIWopjAr0aH2udYAseNuKcYbBiAgAAmcoA=
Date: Mon, 2 Sep 2019 16:18:21 +0000
Message-ID: <HE1PR06MB4011A8F99D58E5ACFAE3CECAACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB40116C92C3D52C5957EF48E9ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <1567432843.3666.6.camel@pengutronix.de>
In-Reply-To: <1567432843.3666.6.camel@pengutronix.de>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR07CA0025.eurprd07.prod.outlook.com
 (2603:10a6:7:66::11) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:31E445FCBB845A9FCE702A3375A8ACD2A28AF5675377321219182999179F28C7;
 UpperCasedChecksum:BD39351A400D7D118E86867B947BDACCA039CF6C5981FE869922EA7347D80811;
 SizeAsReceived:7981; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Dgh32+Cd6gD4n+jIu7mFHGZSJIUr4kB7]
x-microsoft-original-message-id: <3b6e961f-7a68-0ef9-86d7-7e3067eb1ee3@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR01HT081; 
x-ms-traffictypediagnostic: VE1EUR01HT081:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-message-info: jFNZcZnFn2qTzExrm+U4mFe4/dpgmMbKxpS0K1c/eEuaq7D9eJUA9XZIaChYYYSlTh9BnDvli5wecLMOhzGM5LOjRHJhdjehSgGdQwkDp3c5paMh9ehxUKmTJ+AhkQ165v6ejHRUbjZSKO/Gde9NPXEeupoIzMXE9Pr91LjAydsXcT6DpxtZNdnwSv/6EYGv
x-ms-exchange-transport-forked: True
Content-ID: <A5C1535628DDEA408A5375644C3BEF32@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ccac5c1-fdda-41ba-2180-08d72fc12c2e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 16:18:21.5946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_091825_278090_F24E5A88 
X-CRM114-Status: GOOD (  25.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.66.109 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 2019-09-02 16:00, Philipp Zabel wrote:
> Hi Jonas,
>
> On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
>> Scaling list supplied from userspace using ffmpeg and libva-v4l2-request
>> is already in matrix order and can be used without applying the inverse
>> scanning process.
> "in matrix order" is equivalent to "in raster scan order"?

The values supplied by ffmpeg and libva-v4l2-request is in the order after the
inverse scanning process has been applied (scaling list has been transformed
into a scaling matrix). Not sure what this is called, "matrix order" seemed
close enough.

Since there is two scan orders, zig-zag and field, and cedrus already expecting
the values in "matrix" order, it seems more logical to let userspace handle the
inverse scanning process.

>
> Could you add this requirement to the
> V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX documentation?

Sure, I will update documentation in v2.

>
>> The HW also only support 8x8 scaling list for the Y component, indices 0
>> and 3 in the scaling list supplied from userspace.
>>
>> Remove reordering and write the scaling matrix in an order expected by
>> the VPU, also only allocate memory for the two 8x8 lists used.
>>
>> Fixes: a9471e25629b ("media: hantro: Add core bits to support H264 decoding")
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  drivers/staging/media/hantro/hantro_h264.c | 64 +++++++---------------
>>  1 file changed, 20 insertions(+), 44 deletions(-)
>>
>> diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
>> index 0d758e0c0f99..e2d01145ac4f 100644
>> --- a/drivers/staging/media/hantro/hantro_h264.c
>> +++ b/drivers/staging/media/hantro/hantro_h264.c
>> @@ -20,7 +20,7 @@
>>  /* Size with u32 units. */
>>  #define CABAC_INIT_BUFFER_SIZE		(460 * 2)
>>  #define POC_BUFFER_SIZE			34
>> -#define SCALING_LIST_SIZE		(6 * 16 + 6 * 64)
>> +#define SCALING_LIST_SIZE		(6 * 16 + 2 * 64)
> This changes the size of struct hantro_h264_dec_priv_tbl. Did this
> describe the auxiliary buffer format incorrectly before?

Based on RKMPP and Hantro SDK the HW expects the 8x8 inter/intra list for
Y-component to be located at indices 0 and 1, lists for Cr/Cb is only used for
4:4:4 and HW only supports 4:0:0/4:2:0 if I am not mistaken. So the unused
extra 4 lists at the end of the auxiliary buffer seemed like a waste,
also RKMPP and Hantro SDK only seemed to allocate space for 2 lists.

>
>>  #define POC_CMP(p0, p1) ((p0) < (p1) ? -1 : 1)
>>  
>> @@ -194,57 +194,33 @@ static const u32 h264_cabac_table[] = {
>>  	0x1f0c2517, 0x1f261440
>>  };
>>  
>> -/*
>> - * NOTE: The scaling lists are in zig-zag order, apply inverse scanning process
>> - * to get the values in matrix order. In addition, the hardware requires bytes
>> - * swapped within each subsequent 4 bytes. Both arrays below include both
>> - * transformations.
>> - */
>> -static const u32 zig_zag_4x4[] = {
>> -	3, 2, 7, 11, 6, 1, 0, 5, 10, 15, 14, 9, 4, 8, 13, 12
>> -};
>> -
>> -static const u32 zig_zag_8x8[] = {
>> -	3, 2, 11, 19, 10, 1, 0, 9, 18, 27, 35, 26, 17, 8, 7, 6,
>> -	15, 16, 25, 34, 43, 51, 42, 33, 24, 23, 14, 5, 4, 13, 22, 31,
>> -	32, 41, 50, 59, 58, 49, 40, 39, 30, 21, 12, 20, 29, 38, 47, 48,
>> -	57, 56, 55, 46, 37, 28, 36, 45, 54, 63, 62, 53, 44, 52, 61, 60
>> -};
>> -
>>  static void
>>  reorder_scaling_list(struct hantro_ctx *ctx)
>>  {
>>  	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
>>  	const struct v4l2_ctrl_h264_scaling_matrix *scaling = ctrls->scaling;
>> -	const size_t num_list_4x4 = ARRAY_SIZE(scaling->scaling_list_4x4);
>> -	const size_t list_len_4x4 = ARRAY_SIZE(scaling->scaling_list_4x4[0]);
>> -	const size_t num_list_8x8 = ARRAY_SIZE(scaling->scaling_list_8x8);
>> -	const size_t list_len_8x8 = ARRAY_SIZE(scaling->scaling_list_8x8[0]);
>>  	struct hantro_h264_dec_priv_tbl *tbl = ctx->h264_dec.priv.cpu;
>> -	u8 *dst = tbl->scaling_list;
>> -	const u8 *src;
>> -	int i, j;
>> -
>> -	BUILD_BUG_ON(ARRAY_SIZE(zig_zag_4x4) != list_len_4x4);
>> -	BUILD_BUG_ON(ARRAY_SIZE(zig_zag_8x8) != list_len_8x8);
>> -	BUILD_BUG_ON(ARRAY_SIZE(tbl->scaling_list) !=
>> -		     num_list_4x4 * list_len_4x4 +
>> -		     num_list_8x8 * list_len_8x8);
>> -
>> -	src = &scaling->scaling_list_4x4[0][0];
>> -	for (i = 0; i < num_list_4x4; ++i) {
>> -		for (j = 0; j < list_len_4x4; ++j)
>> -			dst[zig_zag_4x4[j]] = src[j];
>> -		src += list_len_4x4;
>> -		dst += list_len_4x4;
>> +	u32 *dst = (u32 *)tbl->scaling_list;
>> +	u32 i, j, tmp;
>> +
>> +	for (i = 0; i < ARRAY_SIZE(scaling->scaling_list_4x4); i++) {
>> +		for (j = 0; j < ARRAY_SIZE(scaling->scaling_list_4x4[0]) / 4; j++) {
>> +			tmp = (scaling->scaling_list_4x4[i][4 * j + 0] << 24) |
>> +			      (scaling->scaling_list_4x4[i][4 * j + 1] << 16) |
>> +			      (scaling->scaling_list_4x4[i][4 * j + 2] << 8) |
>> +			      (scaling->scaling_list_4x4[i][4 * j + 3]);
>> +			*dst++ = tmp;
>> +		}
> This looks like it could use swab32().

Thanks for the tip, will look into and change in v2.

>
>>  	}
>>  
>> -	src = &scaling->scaling_list_8x8[0][0];
>> -	for (i = 0; i < num_list_8x8; ++i) {
>> -		for (j = 0; j < list_len_8x8; ++j)
>> -			dst[zig_zag_8x8[j]] = src[j];
>> -		src += list_len_8x8;
>> -		dst += list_len_8x8;
>> +	for (i = 0; i < ARRAY_SIZE(scaling->scaling_list_8x8); i += 3) {
>> +		for (j = 0; j < ARRAY_SIZE(scaling->scaling_list_8x8[0]) / 4; j++) {
>> +			tmp = (scaling->scaling_list_8x8[i][4 * j + 0] << 24) |
>> +			      (scaling->scaling_list_8x8[i][4 * j + 1] << 16) |
>> +			      (scaling->scaling_list_8x8[i][4 * j + 2] << 8) |
>> +			      (scaling->scaling_list_8x8[i][4 * j + 3]);
>> +			*dst++ = tmp;
>> +		}
> After this change, the second 8x8 scaling list has moved to a different
> offset. Is this where the hardware has always been looking for it, or is
> there a change missing in another place?

As mentioned above HW only looks at indices 0 and 1, and ffmpeg will store the
inter/intra Y list at indices 0 and 3 as seen at [1], in similar way cedrus only
use indices 0 and 3 at [2].
FFmpeg memcpy entire scaling_matrix8 to scaling_list_8x8 for v4l2-request-api
and memcpy scaling_matrix8[0] and scaling_matrix8[3] for vaapi.

You can see the effect of this patch using the h264_tivo_sample.ts sample from
cover letter, patch 3-8 must be applied. With this patch applied the green
football field will stay green, without the patch the field will shift in colors.

[1] https://github.com/FFmpeg/FFmpeg/blob/master/libavcodec/h264_ps.c#L299-L308
[2] https://git.linuxtv.org/media_tree.git/tree/drivers/staging/media/sunxi/cedrus/cedrus_h264.c#n231

Regards,
Jonas

>
> regards
> Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
