Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F118CA6AAF
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 16:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrYZmbxKjHaQ2FmfOJfyVv5dtxbXVCbs48Ap3i0gIZQ=; b=PWsBlVSDwewEIU
	jGhaIv6uPmmebwx/++B/rlWCq0N6TIkNhxcjHTuJw5b4e5oLYdtxakSuS4joWlbqYCMOWLmawE/x+
	69ShJLs+8vMIuCDWjpLbFnPLnLQjev9KOe4/QrgGOAbahqkkxSuJb7gIB9n4IODv3h2TA73bbZafk
	nQ549k6KG8Bf49Ni67A6wyvaknqriwOic3gSL++HigLhQ/72smYykBEaQzajLAgNdCtOM8F8SVF46
	87Fjti0DARvdVL8EUQ2wOx4F2WN4QQcUjzt2DzhbFRYO1ys1bQX2IYOjWXUlB8aT7lMXQO13YNFJ+
	1QnQxI4Kgfgg7uyjXEKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59Og-0001VS-8u; Tue, 03 Sep 2019 14:03:02 +0000
Received: from mail-oln040092072017.outbound.protection.outlook.com
 ([40.92.72.17] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59Ob-0001V5-NB
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 14:03:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OxsekYERNJAfyAKZGcHlPuZ3V0SkoPwjzL/qEnRaFyvs2AEZy+RpNTILcAjwFIZsobpzjP2+CuUe2mjPriLXGVH2R6pQdyYEyWZSvov3YUfAuuzIw1rNF7ZR4QETfjRnsBdsBcEJ+PDrQJQC09xO5APMNGamCyNPwk8T6j/vILO/mD87RR+iw9ls5k+2TOW9pz0zPbCEA++zw6U0JfVuxTDGUDKMdZEqaavqq7kv8FNnLQMwGNX+79MfgUivr2cOoArcdm7PGt2cMjRcffDsOWksI3Mr0fNsDjqZHP8WVKcKtfunISmVRPH1b9NLFsQtfWK4PmfUMp4vNQfhdayJZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TqM9p6RJLKJtxmpC96mS+nXRdns0OViSqiwmfO5MKNU=;
 b=PR1VrSaz3eWo+7+5jsey3MBFrj7YhshDu5ecIJhcWZSki76FXNg0z6/ZpSQtPIvryEgnxwslqd0q3eoYNj7GlSOBvmOAffp5fQn9wIzrgN1m83SkAiQQyDdZpkNCt1moqFxT0iKZp9nKIwiTTeBTt9Q6CBQDUNHjIoa4rH2R24WQ+QdXl7VDxu/d05XiTv4RC60f/3kf9ctFRb7h8wautK+2/7mgXVbwz9KXy/Dz/pTKQKWchU8snEYWBazrHw4+cTKmUmcy2ghd+H+TP18HaXePEDUraxxTV+OV8B1msx+lHWc+iNXmlhf6yIp7oWwfMuDItgnj9OvovErLicadZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DB5EUR03FT003.eop-EUR03.prod.protection.outlook.com
 (10.152.20.52) by DB5EUR03HT226.eop-EUR03.prod.protection.outlook.com
 (10.152.21.48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.16; Tue, 3 Sep
 2019 14:02:53 +0000
Received: from DB6PR06MB4007.eurprd06.prod.outlook.com (10.152.20.55) by
 DB5EUR03FT003.mail.protection.outlook.com (10.152.20.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2220.16 via Frontend Transport; Tue, 3 Sep 2019 14:02:53 +0000
Received: from DB6PR06MB4007.eurprd06.prod.outlook.com
 ([fe80::ed3f:186c:c80e:a861]) by DB6PR06MB4007.eurprd06.prod.outlook.com
 ([fe80::ed3f:186c:c80e:a861%6]) with mapi id 15.20.2220.021; Tue, 3 Sep 2019
 14:02:53 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Philipp Zabel <p.zabel@pengutronix.de>, Ezequiel Garcia
 <ezequiel@collabora.com>
Subject: Re: [RFC 08/12] media: hantro: Fix H264 decoding of field encoded
 content
Thread-Topic: [RFC 08/12] media: hantro: Fix H264 decoding of field encoded
 content
Thread-Index: AQHVYMMtmxM+aDjHykiwJVJ++y1ATacZ840AgAALdwA=
Date: Tue, 3 Sep 2019 14:02:53 +0000
Message-ID: <DB6PR06MB4007C0F89BAEC6F9F1F2AA18ACB90@DB6PR06MB4007.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB4011EA39133818A85768B91FACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <1567516908.5229.7.camel@pengutronix.de>
In-Reply-To: <1567516908.5229.7.camel@pengutronix.de>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR07CA0020.eurprd07.prod.outlook.com
 (2603:10a6:7:67::30) To DB6PR06MB4007.eurprd06.prod.outlook.com
 (2603:10a6:6:4e::32)
x-incomingtopheadermarker: OriginalChecksum:0AD587C4DDF68D0BE92746EC0BCF4188B55B13B958FF6B76FA6286FA544CBA2F;
 UpperCasedChecksum:EE5C83F3266AEE46D4ED95766FB7266447941189325B361038B766EF89F3F393;
 SizeAsReceived:8004; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [EKcRiY0N4ZqYzzGlhfmMx5m69Glz6lN9]
x-microsoft-original-message-id: <21b90892-95c9-8667-6cd2-f0561dd09a59@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR03HT226; 
x-ms-traffictypediagnostic: DB5EUR03HT226:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: epH+vmNZqzls1d6wZQ2WvYbuMnAEmTPkUppYVL401EpmPgr8uV2WpGhZjKqLe6RqqBpp1LuW5wwy8PJ9IX4mO8A8QHBnDPdGKeGUTCht7o7KJNIJGKlR9D/k1NXu/UQ/RmxsqJm/xUyRuurhFhn6s3j/sdPE2bp+uRAD8ETiu/9B2Tb06dWA6+en5sTFoYHh
x-ms-exchange-transport-forked: True
Content-ID: <EAE2B8124614BD4796F3367D6951D1F1@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d6fe429f-24b7-448c-f2cd-08d730776a06
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 14:02:53.8234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT226
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_070257_921927_E1A3D8B1 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.72.17 listed in list.dnswl.org]
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

On 2019-09-03 15:21, Philipp Zabel wrote:
> On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
>> This need code cleanup and formatting
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> The previous patches all work, but this patch breaks decoding of
> progressive content for me (i.MX8MQ with FFmpeg based on Ezequiel's
> branch).

Please try with ffmpeg based on my v4l2-request-hwaccel-4.0.4-hantro branch at [1],
up to and including the commit "HACK: add dpb flags for reference usage and field picture".
That commit adds code to set reference flags needed by the changes in this patch.

There is probably also some other minor difference between our two ffmpeg branches.
I have not observed any issues with progressive content with this patch and my ffmpeg branch (on a RK3288 device).
Some H264 reference samples do have visual issues after this patch, however all my real world samples does seem to work.

My branch use libudev to probe media/video devices and needs to be configured with:
--enable-v4l2-request --enable-libudev --enable-libdrm

[1] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-hwaccel-4.0.4-hantro

Regards,
Jonas

>
> regards
> Philipp
>
>> ---
>>  .../staging/media/hantro/hantro_g1_h264_dec.c |  26 ++--
>>  drivers/staging/media/hantro/hantro_h264.c    | 126 ++++++++++++------
>>  drivers/staging/media/hantro/hantro_hw.h      |   4 +
>>  3 files changed, 100 insertions(+), 56 deletions(-)
>>
>> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>> index 16f21d258f6a..bc628ef73b29 100644
>> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>> @@ -130,28 +130,20 @@ static void set_params(struct hantro_ctx *ctx)
>>  
>>  static void set_ref(struct hantro_ctx *ctx)
>>  {
>> +	const struct v4l2_ctrl_h264_decode_params *dec_param;
>> +	const struct v4l2_ctrl_h264_slice_params *slice;
>>  	struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
>>  	const u8 *b0_reflist, *b1_reflist, *p_reflist;
>>  	struct hantro_dev *vpu = ctx->dev;
>> -	u32 dpb_longterm = 0;
>> -	u32 dpb_valid = 0;
>>  	int reg_num;
>>  	u32 reg;
>>  	int i;
>>  
>> -	/*
>> -	 * Set up bit maps of valid and long term DPBs.
>> -	 * NOTE: The bits are reversed, i.e. MSb is DPB 0.
>> -	 */
>> -	for (i = 0; i < HANTRO_H264_DPB_SIZE; ++i) {
>> -		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
>> -			dpb_valid |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
>> +	dec_param = ctx->h264_dec.ctrls.decode;
>> +	slice = ctx->h264_dec.ctrls.slices;
>>  
>> -		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
>> -			dpb_longterm |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
>> -	}
>> -	vdpu_write_relaxed(vpu, dpb_valid << 16, G1_REG_VALID_REF);
>> -	vdpu_write_relaxed(vpu, dpb_longterm << 16, G1_REG_LT_REF);
>> +	vdpu_write_relaxed(vpu, ctx->h264_dec.dpb_valid, G1_REG_VALID_REF);
>> +	vdpu_write_relaxed(vpu, ctx->h264_dec.dpb_longterm, G1_REG_LT_REF);
>>  
>>  	/*
>>  	 * Set up reference frame picture numbers.
>> @@ -223,10 +215,8 @@ static void set_ref(struct hantro_ctx *ctx)
>>  
>>  	/* Set up addresses of DPB buffers. */
>>  	for (i = 0; i < HANTRO_H264_DPB_SIZE; i++) {
>> -		struct vb2_buffer *buf =  hantro_h264_get_ref_buf(ctx, i);
>> -
>> -		vdpu_write_relaxed(vpu, vb2_dma_contig_plane_dma_addr(buf, 0),
>> -				   G1_REG_ADDR_REF(i));
>> +		dma_addr_t addr = hantro_h264_get_ref_dma_addr(ctx, i);
>> +		vdpu_write_relaxed(vpu, addr, G1_REG_ADDR_REF(i));
>>  	}
>>  }
>>  
>> diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
>> index a77cc28e180a..85c86d728b1a 100644
>> --- a/drivers/staging/media/hantro/hantro_h264.c
>> +++ b/drivers/staging/media/hantro/hantro_h264.c
>> @@ -228,17 +228,65 @@ static void prepare_table(struct hantro_ctx *ctx)
>>  {
>>  	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
>>  	const struct v4l2_ctrl_h264_decode_params *dec_param = ctrls->decode;
>> +	const struct v4l2_ctrl_h264_slice_params *slices = ctrls->slices;
>>  	struct hantro_h264_dec_priv_tbl *tbl = ctx->h264_dec.priv.cpu;
>>  	const struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
>> +	u32 dpb_longterm = 0;
>> +	u32 dpb_valid = 0;
>>  	int i;
>>  
>> +	/*
>> +	 * Set up bit maps of valid and long term DPBs.
>> +	 * NOTE: The bits are reversed, i.e. MSb is DPB 0.
>> +	 */
>> +	if ((slices[0].flags & V4L2_H264_SLICE_FLAG_FIELD_PIC) || (slices[0].flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)) {
>> +		for (i = 0; i < HANTRO_H264_DPB_SIZE * 2; ++i) {
>> +			// check for correct reference use
>> +			u32 flag = (i & 0x1) ? V4L2_H264_DPB_ENTRY_FLAG_REF_BOTTOM : V4L2_H264_DPB_ENTRY_FLAG_REF_TOP;
>> +			if (dpb[i / 2].flags & flag)
>> +				dpb_valid |= BIT(HANTRO_H264_DPB_SIZE * 2 - 1 - i);
>> +
>> +			if (dpb[i / 2].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
>> +				dpb_longterm |= BIT(HANTRO_H264_DPB_SIZE * 2 - 1 - i);
>> +		}
>> +
>> +		ctx->h264_dec.dpb_valid = dpb_valid;
>> +		ctx->h264_dec.dpb_longterm = dpb_longterm;
>> +	} else {
>> +		for (i = 0; i < HANTRO_H264_DPB_SIZE; ++i) {
>> +			if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
>> +				dpb_valid |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
>> +
>> +			if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
>> +				dpb_longterm |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
>> +		}
>> +
>> +		ctx->h264_dec.dpb_valid = dpb_valid << 16;
>> +		ctx->h264_dec.dpb_longterm = dpb_longterm << 16;
>> +	}
>> +
>>  	for (i = 0; i < HANTRO_H264_DPB_SIZE; ++i) {
>> -		tbl->poc[i * 2] = dpb[i].top_field_order_cnt;
>> -		tbl->poc[i * 2 + 1] = dpb[i].bottom_field_order_cnt;
>> +		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE) {
>> +			tbl->poc[i * 2] = dpb[i].top_field_order_cnt;
>> +			tbl->poc[i * 2 + 1] = dpb[i].bottom_field_order_cnt;
>> +		} else {
>> +			tbl->poc[i * 2] = 0;
>> +			tbl->poc[i * 2 + 1] = 0;
>> +		}
>>  	}
>>  
>> -	tbl->poc[32] = dec_param->top_field_order_cnt;
>> -	tbl->poc[33] = dec_param->bottom_field_order_cnt;
>> +	if ((slices[0].flags & V4L2_H264_SLICE_FLAG_FIELD_PIC) || !(slices[0].flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)) {
>> +		if ((slices[0].flags & V4L2_H264_SLICE_FLAG_FIELD_PIC))
>> +			tbl->poc[32] = (slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD) ?
>> +					dec_param->bottom_field_order_cnt :
>> +					dec_param->top_field_order_cnt;
>> +		else
>> +			tbl->poc[32] = min(dec_param->top_field_order_cnt, dec_param->bottom_field_order_cnt);
>> +		tbl->poc[33] = 0;
>> +	} else {
>> +		tbl->poc[32] = dec_param->top_field_order_cnt;
>> +		tbl->poc[33] = dec_param->bottom_field_order_cnt;
>> +	}
>>  
>>  	reorder_scaling_list(ctx);
>>  }
>> @@ -251,51 +299,36 @@ struct hantro_h264_reflist_builder {
>>  	u8 num_valid;
>>  };
>>  
>> -static s32 get_poc(enum v4l2_field field, s32 top_field_order_cnt,
>> -		   s32 bottom_field_order_cnt)
>> -{
>> -	switch (field) {
>> -	case V4L2_FIELD_TOP:
>> -		return top_field_order_cnt;
>> -	case V4L2_FIELD_BOTTOM:
>> -		return bottom_field_order_cnt;
>> -	default:
>> -		break;
>> -	}
>> -
>> -	return min(top_field_order_cnt, bottom_field_order_cnt);
>> -}
>> -
>>  static void
>>  init_reflist_builder(struct hantro_ctx *ctx,
>>  		     struct hantro_h264_reflist_builder *b)
>>  {
>>  	const struct v4l2_ctrl_h264_decode_params *dec_param;
>> -	struct vb2_v4l2_buffer *buf = hantro_get_dst_buf(ctx);
>> +	const struct v4l2_ctrl_h264_slice_params *slices;
>>  	const struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
>> -	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
>>  	unsigned int i;
>>  
>>  	dec_param = ctx->h264_dec.ctrls.decode;
>> +	slices = ctx->h264_dec.ctrls.slices;
>>  
>>  	memset(b, 0, sizeof(*b));
>>  	b->dpb = dpb;
>> -	b->curpoc = get_poc(buf->field, dec_param->top_field_order_cnt,
>> -			    dec_param->bottom_field_order_cnt);
>> +	b->curpoc = (slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD) ?
>> +		    dec_param->bottom_field_order_cnt :
>> +		    dec_param->top_field_order_cnt;
>>  
>>  	for (i = 0; i < ARRAY_SIZE(ctx->h264_dec.dpb); i++) {
>> -		int buf_idx;
>> -
>> -		if (!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
>> +		u32 ref_flag = dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_REF_FRAME;
>> +		if (!ref_flag)
>>  			continue;
>>  
>> -		buf_idx = vb2_find_timestamp(cap_q, dpb[i].reference_ts, 0);
>> -		if (buf_idx < 0)
>> -			continue;
>> +		if (ref_flag == V4L2_H264_DPB_ENTRY_FLAG_REF_FRAME)
>> +			b->pocs[i] = min(dpb[i].bottom_field_order_cnt, dpb[i].top_field_order_cnt);
>> +		else if (ref_flag == V4L2_H264_DPB_ENTRY_FLAG_REF_BOTTOM)
>> +			b->pocs[i] = dpb[i].bottom_field_order_cnt;
>> +		else if (ref_flag == V4L2_H264_DPB_ENTRY_FLAG_REF_TOP)
>> +			b->pocs[i] = dpb[i].top_field_order_cnt;
>>  
>> -		buf = to_vb2_v4l2_buffer(vb2_get_buffer(cap_q, buf_idx));
>> -		b->pocs[i] = get_poc(buf->field, dpb[i].top_field_order_cnt,
>> -				     dpb[i].bottom_field_order_cnt);
>>  		b->unordered_reflist[b->num_valid] = i;
>>  		b->num_valid++;
>>  	}
>> @@ -448,8 +481,7 @@ build_b_ref_lists(const struct hantro_h264_reflist_builder *builder,
>>  static bool dpb_entry_match(const struct v4l2_h264_dpb_entry *a,
>>  			    const struct v4l2_h264_dpb_entry *b)
>>  {
>> -	return a->top_field_order_cnt == b->top_field_order_cnt &&
>> -	       a->bottom_field_order_cnt == b->bottom_field_order_cnt;
>> +	return a->reference_ts == b->reference_ts;
>>  }
>>  
>>  static void update_dpb(struct hantro_ctx *ctx)
>> @@ -463,13 +495,13 @@ static void update_dpb(struct hantro_ctx *ctx)
>>  
>>  	/* Disable all entries by default. */
>>  	for (i = 0; i < ARRAY_SIZE(ctx->h264_dec.dpb); i++)
>> -		ctx->h264_dec.dpb[i].flags &= ~V4L2_H264_DPB_ENTRY_FLAG_ACTIVE;
>> +		ctx->h264_dec.dpb[i].flags = 0;
>>  
>>  	/* Try to match new DPB entries with existing ones by their POCs. */
>>  	for (i = 0; i < ARRAY_SIZE(dec_param->dpb); i++) {
>>  		const struct v4l2_h264_dpb_entry *ndpb = &dec_param->dpb[i];
>>  
>> -		if (!(ndpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
>> +		if (!(ndpb->flags & V4L2_H264_DPB_ENTRY_FLAG_VALID))
>>  			continue;
>>  
>>  		/*
>> @@ -480,8 +512,7 @@ static void update_dpb(struct hantro_ctx *ctx)
>>  			struct v4l2_h264_dpb_entry *cdpb;
>>  
>>  			cdpb = &ctx->h264_dec.dpb[j];
>> -			if (cdpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE ||
>> -			    !dpb_entry_match(cdpb, ndpb))
>> +			if (!dpb_entry_match(cdpb, ndpb))
>>  				continue;
>>  
>>  			*cdpb = *ndpb;
>> @@ -541,6 +572,25 @@ struct vb2_buffer *hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
>>  	return buf;
>>  }
>>  
>> +dma_addr_t hantro_h264_get_ref_dma_addr(struct hantro_ctx *ctx,
>> +					unsigned int dpb_idx)
>> +{
>> +	struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
>> +	const struct v4l2_ctrl_h264_decode_params *dec_param = ctx->h264_dec.ctrls.decode;
>> +	const struct v4l2_ctrl_h264_slice_params *slices = ctx->h264_dec.ctrls.slices;
>> +
>> +	struct vb2_buffer *buf = hantro_h264_get_ref_buf(ctx, dpb_idx);
>> +	s32 cur_poc = slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD ?
>> +		      dec_param->bottom_field_order_cnt :
>> +		      dec_param->top_field_order_cnt;
>> +	u32 flags = dpb[dpb_idx].flags & V4L2_H264_DPB_ENTRY_FLAG_FIELD_PICTURE ? 0x2 : 0;
>> +	flags |= abs(dpb[dpb_idx].top_field_order_cnt - cur_poc) <
>> +		 abs(dpb[dpb_idx].bottom_field_order_cnt - cur_poc) ?
>> +		 0x1 : 0;
>> +
>> +	return vb2_dma_contig_plane_dma_addr(buf, 0) | flags;
>> +}
>> +
>>  int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx)
>>  {
>>  	struct hantro_h264_dec_hw_ctx *h264_ctx = &ctx->h264_dec;
>> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
>> index 8adad8ac9b1d..d58f2a36ca40 100644
>> --- a/drivers/staging/media/hantro/hantro_hw.h
>> +++ b/drivers/staging/media/hantro/hantro_hw.h
>> @@ -86,6 +86,8 @@ struct hantro_h264_dec_hw_ctx {
>>  	struct v4l2_h264_dpb_entry dpb[HANTRO_H264_DPB_SIZE];
>>  	struct hantro_h264_dec_reflists reflists;
>>  	struct hantro_h264_dec_ctrls ctrls;
>> +	u32 dpb_longterm;
>> +	u32 dpb_valid;
>>  };
>>  
>>  /**
>> @@ -157,6 +159,8 @@ void hantro_jpeg_enc_exit(struct hantro_ctx *ctx);
>>  
>>  struct vb2_buffer *hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
>>  					   unsigned int dpb_idx);
>> +dma_addr_t hantro_h264_get_ref_dma_addr(struct hantro_ctx *ctx,
>> +					unsigned int dpb_idx);
>>  int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx);
>>  void hantro_g1_h264_dec_run(struct hantro_ctx *ctx);
>>  int hantro_h264_dec_init(struct hantro_ctx *ctx);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
