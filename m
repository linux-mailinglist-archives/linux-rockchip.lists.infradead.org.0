Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12164CAF68
	for <lists+linux-rockchip@lfdr.de>; Thu,  3 Oct 2019 21:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Q7Z7Po1tqmYpXI0sJ1qkRN62rYMczOTNDrHVXTqcrY=; b=kurFwYVTIJ1QUa
	39tkSwbGePHEOLa67a8HJEsneSjNJLZvomA550jQ0mGzRgjXyS1AY5c/1f8/anSbqPV7WGv4TJqN0
	yeUdaTHXNIEIla4JXUiqtpBDuQHi0cxsogeScqDyial+s0QjOX5764XKJp6iY2Hkc6sJgzEFDHT6V
	27lk0BJHbTurmQ8I5ugaoBbPc+3C4JJHxkVILIFdwiJ8a3NIzOk5nmmvsmJb5APEVKL/pfJnl9TZy
	dz6FUIDcxSJsP/xA5VWmaElM7f/RRTIW/Wb9bUN+CdLuBAJZhF7WhKrEGCC5SgR261K0JjIVJdk37
	4lPOf22ISh7bM1HHtDzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6xG-0001yi-Ml; Thu, 03 Oct 2019 19:40:02 +0000
Received: from mail-oln040092065090.outbound.protection.outlook.com
 ([40.92.65.90] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6x9-0001oy-CV
 for linux-rockchip@lists.infradead.org; Thu, 03 Oct 2019 19:40:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kMYoNAc5XW4ewE/vkQ8ji1Fb51VxhXRWq2IOReN5Gr1lYwei6ySGNdVKmbcSIK2qWSssM8dDrKyRqGt/HpHsBvdaAf+0q6DiRPTmrG5VSV95qoDCStx3hkpTfaudswoFnXgFF8TtnDlNU2Lvb6L/LNQUkbq61esP3Qv39soFMaA+LEenoDhwgLTHC21mm/kgaDJYn6EzIVjP/XSLjnmKJ7JORKWHqE+iUoapgKe6zl9Xsj81w+crUSzdRWZEHmLghO/Reeeh1tQrLiub+lrPr/1kU5vYwrqYZ7C3JFKaCBrw0OPx3Sbae87ww62XItOBF9hiVu7z306B+QbProNyMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T+gAtaxiYIXcLBzDF4XF1CYZOgtxiFf/DlB/VaPQQNM=;
 b=Qk+Jl9U7tLGW1Q1WsIIcMbklUAoSolIeuzEq8MZdGyldDb7EHcXMC+mQugBP7WSqS3su5EfAuaBhBGNgMinBt5WoTCcPfx/IqPzbjqz60IZsLzKteIo7jabunpSoYjOCHYmg1npKcf3iMT2TAzoVs1nqqCWknkmGPfmQj7VOIegJm06CvdJ7cONYt3I93MIyVb1MzuMNN7UoU1VI7h3v8hWyXOBt8zpCCt1AxObfcZk6EwNUp36kWxUZO/XHP5TcnxP4udM4mdrhaZKpnuaWcSDGncmMNfpgBiL1spAgm9nAjBxMCLmF8tol/C27rdCQiHCyy9SplljCOV8qel7MeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR01FT051.eop-EUR01.prod.protection.outlook.com
 (10.152.0.51) by HE1EUR01HT144.eop-EUR01.prod.protection.outlook.com
 (10.152.1.194) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2327.20; Thu, 3 Oct
 2019 19:39:49 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.0.58) by
 HE1EUR01FT051.mail.protection.outlook.com (10.152.1.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2327.20 via Frontend Transport; Thu, 3 Oct 2019 19:39:49 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8%4]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 19:39:49 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@collabora.com>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>
Subject: Re: [PATCH v2 2/4] media: hantro: mpeg2_dec: Re-use common register
 macros
Thread-Topic: [PATCH v2 2/4] media: hantro: mpeg2_dec: Re-use common register
 macros
Thread-Index: AQHVeh4Hwq3UNv/7y0O4hk1IaJV99adJUGMA
Date: Thu, 3 Oct 2019 19:39:48 +0000
Message-ID: <HE1PR06MB4011D73D05A25AA855F879A0AC9F0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <20191003190833.29046-1-ezequiel@collabora.com>
 <20191003190833.29046-3-ezequiel@collabora.com>
In-Reply-To: <20191003190833.29046-3-ezequiel@collabora.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0102CA0031.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:14::44) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:8D73F6C4FD8707C408ACE5CF4255288EDCF9FE378E95A5D1099D4B495BDDB332;
 UpperCasedChecksum:F4FCFF611DBB229136D89652FA38CF367B30F7661E05549401EF20CA6C672A0E;
 SizeAsReceived:7971; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [8G9gIUYrZpls16q1BqxwxPH8oCWp4TyS]
x-microsoft-original-message-id: <9d862298-e69d-942a-05db-006acf730f9c@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: HE1EUR01HT144:
x-ms-exchange-purlcount: 3
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HMb8CDyEYueBwnoo/3ZxlokAf9YR/8xvJxHAldLUYJFa0Hb8t+5SfDuWYIPVdjr7umBO4vR9y/uCooB+5aZZcY4kKPJc/n/o0H71qcTXSBS78LaTU6eeMQbUxw+t7l3ByKmHOQO0sN8KKOMMEUW0NGUWvfos6ZRx6g93pSlOeP6GmLincURWeqMXcpUXdWwUrII1hDkuzlWgYBXQge9Q1LTF6yLxrnx9qFpF0ddkmwk=
x-ms-exchange-transport-forked: True
Content-ID: <49F083F310683644BEACA8D151BE17B7@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ffa7dece-389d-4b33-7a76-08d748397382
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 19:39:48.9968 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_123955_680433_E7D2F527 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.65.90 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.65.90 listed in wl.mailspike.net]
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "kernel@collabora.com" <kernel@collabora.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-10-03 21:08, Ezequiel Garcia wrote:
> The MPEG-2 decoder register macros can be re-used from hantro_g1_regs.h,
> and the re-definitions removed.

I am not a very big fan of this change as it makes it a little bit harder to spot differences
and to keep the RK3399 version of the code in sync.

The original MPEG-2 code for G1 (RK3288) and RK3399 was generated based on [1], [2] and [3]
with the main purpose to make it easy to keep the code for the different vpu variants in sync.

[1] https://github.com/Kwiboo/rockchip-vpu-regtool/blob/master/vpu1hwtable.h
[2] https://github.com/Kwiboo/rockchip-vpu-regtool/blob/master/vpu2hwtable.h
[3] https://github.com/Kwiboo/rockchip-vpu-regtool/blob/master/mpeg2.txt

Regards,
Jonas

>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../media/hantro/hantro_g1_mpeg2_dec.c        | 186 ++++++------------
>  drivers/staging/media/hantro/hantro_g1_regs.h |  58 +++---
>  2 files changed, 96 insertions(+), 148 deletions(-)
>
> diff --git a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
> index f3bf67d8a289..663bf05459a9 100644
> --- a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
> @@ -10,60 +10,9 @@
>  #include <media/v4l2-mem2mem.h>
>  #include "hantro.h"
>  #include "hantro_hw.h"
> +#include "hantro_g1_regs.h"
>  
> -#define G1_SWREG(nr)			((nr) * 4)
> -
> -#define G1_REG_RLC_VLC_BASE		G1_SWREG(12)
> -#define G1_REG_DEC_OUT_BASE		G1_SWREG(13)
> -#define G1_REG_REFER0_BASE		G1_SWREG(14)
> -#define G1_REG_REFER1_BASE		G1_SWREG(15)
> -#define G1_REG_REFER2_BASE		G1_SWREG(16)
> -#define G1_REG_REFER3_BASE		G1_SWREG(17)
> -#define G1_REG_QTABLE_BASE		G1_SWREG(40)
> -#define G1_REG_DEC_E(v)			((v) ? BIT(0) : 0)
> -
> -#define G1_REG_DEC_AXI_RD_ID(v)		(((v) << 24) & GENMASK(31, 24))
> -#define G1_REG_DEC_TIMEOUT_E(v)		((v) ? BIT(23) : 0)
> -#define G1_REG_DEC_STRSWAP32_E(v)	((v) ? BIT(22) : 0)
> -#define G1_REG_DEC_STRENDIAN_E(v)	((v) ? BIT(21) : 0)
> -#define G1_REG_DEC_INSWAP32_E(v)	((v) ? BIT(20) : 0)
> -#define G1_REG_DEC_OUTSWAP32_E(v)	((v) ? BIT(19) : 0)
> -#define G1_REG_DEC_DATA_DISC_E(v)	((v) ? BIT(18) : 0)
> -#define G1_REG_DEC_LATENCY(v)		(((v) << 11) & GENMASK(16, 11))
> -#define G1_REG_DEC_CLK_GATE_E(v)	((v) ? BIT(10) : 0)
> -#define G1_REG_DEC_IN_ENDIAN(v)		((v) ? BIT(9) : 0)
> -#define G1_REG_DEC_OUT_ENDIAN(v)	((v) ? BIT(8) : 0)
> -#define G1_REG_DEC_ADV_PRE_DIS(v)	((v) ? BIT(6) : 0)
> -#define G1_REG_DEC_SCMD_DIS(v)		((v) ? BIT(5) : 0)
> -#define G1_REG_DEC_MAX_BURST(v)		(((v) << 0) & GENMASK(4, 0))
> -
> -#define G1_REG_DEC_MODE(v)		(((v) << 28) & GENMASK(31, 28))
> -#define G1_REG_RLC_MODE_E(v)		((v) ? BIT(27) : 0)
> -#define G1_REG_PIC_INTERLACE_E(v)	((v) ? BIT(23) : 0)
> -#define G1_REG_PIC_FIELDMODE_E(v)	((v) ? BIT(22) : 0)
> -#define G1_REG_PIC_B_E(v)		((v) ? BIT(21) : 0)
> -#define G1_REG_PIC_INTER_E(v)		((v) ? BIT(20) : 0)
> -#define G1_REG_PIC_TOPFIELD_E(v)	((v) ? BIT(19) : 0)
> -#define G1_REG_FWD_INTERLACE_E(v)	((v) ? BIT(18) : 0)
> -#define G1_REG_FILTERING_DIS(v)		((v) ? BIT(14) : 0)
> -#define G1_REG_WRITE_MVS_E(v)		((v) ? BIT(12) : 0)
> -#define G1_REG_DEC_AXI_WR_ID(v)		(((v) << 0) & GENMASK(7, 0))
> -
> -#define G1_REG_PIC_MB_WIDTH(v)		(((v) << 23) & GENMASK(31, 23))
> -#define G1_REG_PIC_MB_HEIGHT_P(v)	(((v) << 11) & GENMASK(18, 11))
> -#define G1_REG_ALT_SCAN_E(v)		((v) ? BIT(6) : 0)
> -#define G1_REG_TOPFIELDFIRST_E(v)	((v) ? BIT(5) : 0)
> -
> -#define G1_REG_STRM_START_BIT(v)	(((v) << 26) & GENMASK(31, 26))
> -#define G1_REG_QSCALE_TYPE(v)		((v) ? BIT(24) : 0)
> -#define G1_REG_CON_MV_E(v)		((v) ? BIT(4) : 0)
> -#define G1_REG_INTRA_DC_PREC(v)		(((v) << 2) & GENMASK(3, 2))
> -#define G1_REG_INTRA_VLC_TAB(v)		((v) ? BIT(1) : 0)
> -#define G1_REG_FRAME_PRED_DCT(v)	((v) ? BIT(0) : 0)
> -
> -#define G1_REG_INIT_QP(v)		(((v) << 25) & GENMASK(30, 25))
> -#define G1_REG_STREAM_LEN(v)		(((v) << 0) & GENMASK(23, 0))
> -
> +/* These bits seem undocumented. */
>  #define G1_REG_ALT_SCAN_FLAG_E(v)	((v) ? BIT(19) : 0)
>  #define G1_REG_FCODE_FWD_HOR(v)		(((v) << 15) & GENMASK(18, 15))
>  #define G1_REG_FCODE_FWD_VER(v)		(((v) << 11) & GENMASK(14, 11))
> @@ -72,11 +21,6 @@
>  #define G1_REG_MV_ACCURACY_FWD(v)	((v) ? BIT(2) : 0)
>  #define G1_REG_MV_ACCURACY_BWD(v)	((v) ? BIT(1) : 0)
>  
> -#define G1_REG_STARTMB_X(v)		(((v) << 23) & GENMASK(31, 23))
> -#define G1_REG_STARTMB_Y(v)		(((v) << 15) & GENMASK(22, 15))
> -
> -#define G1_REG_APF_THRESHOLD(v)		(((v) << 0) & GENMASK(13, 0))
> -
>  #define PICT_TOP_FIELD     1
>  #define PICT_BOTTOM_FIELD  2
>  #define PICT_FRAME         3
> @@ -92,7 +36,7 @@ hantro_g1_mpeg2_dec_set_quantization(struct hantro_dev *vpu,
>  	hantro_mpeg2_dec_copy_qtable(ctx->mpeg2_dec.qtable.cpu,
>  				     quantization);
>  	vdpu_write_relaxed(vpu, ctx->mpeg2_dec.qtable.dma,
> -			   G1_REG_QTABLE_BASE);
> +			   G1_REG_ADDR_QTABLE);
>  }
>  
>  static void
> @@ -118,7 +62,7 @@ hantro_g1_mpeg2_dec_set_buffers(struct hantro_dev *vpu, struct hantro_ctx *ctx,
>  
>  	/* Source bitstream buffer */
>  	addr = vb2_dma_contig_plane_dma_addr(src_buf, 0);
> -	vdpu_write_relaxed(vpu, addr, G1_REG_RLC_VLC_BASE);
> +	vdpu_write_relaxed(vpu, addr, G1_REG_ADDR_STR);
>  
>  	/* Destination frame buffer */
>  	addr = vb2_dma_contig_plane_dma_addr(dst_buf, 0);
> @@ -126,7 +70,7 @@ hantro_g1_mpeg2_dec_set_buffers(struct hantro_dev *vpu, struct hantro_ctx *ctx,
>  
>  	if (picture->picture_structure == PICT_BOTTOM_FIELD)
>  		addr += ALIGN(ctx->dst_fmt.width, 16);
> -	vdpu_write_relaxed(vpu, addr, G1_REG_DEC_OUT_BASE);
> +	vdpu_write_relaxed(vpu, addr, G1_REG_ADDR_DST);
>  
>  	if (!forward_addr)
>  		forward_addr = current_addr;
> @@ -140,19 +84,19 @@ hantro_g1_mpeg2_dec_set_buffers(struct hantro_dev *vpu, struct hantro_ctx *ctx,
>  	     picture->top_field_first) ||
>  	    (picture->picture_structure == PICT_BOTTOM_FIELD &&
>  	     !picture->top_field_first)) {
> -		vdpu_write_relaxed(vpu, forward_addr, G1_REG_REFER0_BASE);
> -		vdpu_write_relaxed(vpu, forward_addr, G1_REG_REFER1_BASE);
> +		vdpu_write_relaxed(vpu, forward_addr, G1_REG_ADDR_REF(0));
> +		vdpu_write_relaxed(vpu, forward_addr, G1_REG_ADDR_REF(1));
>  	} else if (picture->picture_structure == PICT_TOP_FIELD) {
> -		vdpu_write_relaxed(vpu, forward_addr, G1_REG_REFER0_BASE);
> -		vdpu_write_relaxed(vpu, current_addr, G1_REG_REFER1_BASE);
> +		vdpu_write_relaxed(vpu, forward_addr, G1_REG_ADDR_REF(0));
> +		vdpu_write_relaxed(vpu, current_addr, G1_REG_ADDR_REF(1));
>  	} else if (picture->picture_structure == PICT_BOTTOM_FIELD) {
> -		vdpu_write_relaxed(vpu, current_addr, G1_REG_REFER0_BASE);
> -		vdpu_write_relaxed(vpu, forward_addr, G1_REG_REFER1_BASE);
> +		vdpu_write_relaxed(vpu, current_addr, G1_REG_ADDR_REF(0));
> +		vdpu_write_relaxed(vpu, forward_addr, G1_REG_ADDR_REF(1));
>  	}
>  
>  	/* Set backward ref frame (top/bottom field) */
> -	vdpu_write_relaxed(vpu, backward_addr, G1_REG_REFER2_BASE);
> -	vdpu_write_relaxed(vpu, backward_addr, G1_REG_REFER3_BASE);
> +	vdpu_write_relaxed(vpu, backward_addr, G1_REG_ADDR_REF(2));
> +	vdpu_write_relaxed(vpu, backward_addr, G1_REG_ADDR_REF(3));
>  }
>  
>  void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
> @@ -175,52 +119,51 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
>  	sequence = &slice_params->sequence;
>  	picture = &slice_params->picture;
>  
> -	reg = G1_REG_DEC_AXI_RD_ID(0) |
> -	      G1_REG_DEC_TIMEOUT_E(1) |
> -	      G1_REG_DEC_STRSWAP32_E(1) |
> -	      G1_REG_DEC_STRENDIAN_E(1) |
> -	      G1_REG_DEC_INSWAP32_E(1) |
> -	      G1_REG_DEC_OUTSWAP32_E(1) |
> -	      G1_REG_DEC_DATA_DISC_E(0) |
> -	      G1_REG_DEC_LATENCY(0) |
> -	      G1_REG_DEC_CLK_GATE_E(1) |
> -	      G1_REG_DEC_IN_ENDIAN(1) |
> -	      G1_REG_DEC_OUT_ENDIAN(1) |
> -	      G1_REG_DEC_ADV_PRE_DIS(0) |
> -	      G1_REG_DEC_SCMD_DIS(0) |
> -	      G1_REG_DEC_MAX_BURST(16);
> -	vdpu_write_relaxed(vpu, reg, G1_SWREG(2));
> -
> -	reg = G1_REG_DEC_MODE(5) |
> -	      G1_REG_RLC_MODE_E(0) |
> -	      G1_REG_PIC_INTERLACE_E(!sequence->progressive_sequence) |
> -	      G1_REG_PIC_FIELDMODE_E(picture->picture_structure != PICT_FRAME) |
> -	      G1_REG_PIC_B_E(picture->picture_coding_type == V4L2_MPEG2_PICTURE_CODING_TYPE_B) |
> -	      G1_REG_PIC_INTER_E(picture->picture_coding_type != V4L2_MPEG2_PICTURE_CODING_TYPE_I) |
> -	      G1_REG_PIC_TOPFIELD_E(picture->picture_structure == PICT_TOP_FIELD) |
> -	      G1_REG_FWD_INTERLACE_E(0) |
> -	      G1_REG_FILTERING_DIS(1) |
> -	      G1_REG_WRITE_MVS_E(0) |
> -	      G1_REG_DEC_AXI_WR_ID(0);
> -	vdpu_write_relaxed(vpu, reg, G1_SWREG(3));
> -
> -	reg = G1_REG_PIC_MB_WIDTH(MB_WIDTH(ctx->dst_fmt.width)) |
> -	      G1_REG_PIC_MB_HEIGHT_P(MB_HEIGHT(ctx->dst_fmt.height)) |
> -	      G1_REG_ALT_SCAN_E(picture->alternate_scan) |
> -	      G1_REG_TOPFIELDFIRST_E(picture->top_field_first);
> -	vdpu_write_relaxed(vpu, reg, G1_SWREG(4));
> -
> -	reg = G1_REG_STRM_START_BIT(slice_params->data_bit_offset) |
> -	      G1_REG_QSCALE_TYPE(picture->q_scale_type) |
> -	      G1_REG_CON_MV_E(picture->concealment_motion_vectors) |
> -	      G1_REG_INTRA_DC_PREC(picture->intra_dc_precision) |
> -	      G1_REG_INTRA_VLC_TAB(picture->intra_vlc_format) |
> -	      G1_REG_FRAME_PRED_DCT(picture->frame_pred_frame_dct);
> -	vdpu_write_relaxed(vpu, reg, G1_SWREG(5));
> -
> -	reg = G1_REG_INIT_QP(1) |
> -	      G1_REG_STREAM_LEN(slice_params->bit_size >> 3);
> -	vdpu_write_relaxed(vpu, reg, G1_SWREG(6));
> +	reg = G1_REG_CONFIG_DEC_AXI_RD_ID(0) |
> +	      G1_REG_CONFIG_DEC_TIMEOUT_E |
> +	      G1_REG_CONFIG_DEC_STRSWAP32_E |
> +	      G1_REG_CONFIG_DEC_STRENDIAN_E |
> +	      G1_REG_CONFIG_DEC_INSWAP32_E |
> +	      G1_REG_CONFIG_DEC_OUTSWAP32_E |
> +	      G1_REG_CONFIG_DEC_LATENCY(0) |
> +	      G1_REG_CONFIG_DEC_CLK_GATE_E |
> +	      G1_REG_CONFIG_DEC_IN_ENDIAN |
> +	      G1_REG_CONFIG_DEC_OUT_ENDIAN |
> +	      G1_REG_CONFIG_DEC_MAX_BURST(16);
> +	vdpu_write_relaxed(vpu, reg, G1_REG_CONFIG);
> +
> +	reg = G1_REG_DEC_CTRL0_DEC_MODE(5) |
> +	      G1_REG_DEC_CTRL0_FILTERING_DIS |
> +	      G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(0);
> +	G1_SWREG_SET_IF(reg, !sequence->progressive_sequence,
> +			G1_REG_DEC_CTRL0_PIC_INTERLACE_E);
> +	G1_SWREG_SET_IF(reg, picture->picture_coding_type == V4L2_MPEG2_PICTURE_CODING_TYPE_B,
> +			G1_REG_DEC_CTRL0_PIC_B_E);
> +	G1_SWREG_SET_IF(reg, picture->picture_coding_type != V4L2_MPEG2_PICTURE_CODING_TYPE_I,
> +			G1_REG_DEC_CTRL0_PIC_INTER_E);
> +	G1_SWREG_SET_IF(reg, picture->picture_structure == PICT_TOP_FIELD,
> +			G1_REG_DEC_CTRL0_PIC_TOPFIELD_E);
> +	G1_SWREG_SET_IF(reg, picture->picture_structure != PICT_FRAME,
> +			G1_REG_DEC_CTRL0_PIC_FIELDMODE_E);
> +	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL0);
> +
> +	reg = G1_REG_DEC_CTRL1_PIC_MB_WIDTH(MB_WIDTH(ctx->dst_fmt.width)) |
> +	      G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(MB_HEIGHT(ctx->dst_fmt.height));
> +	G1_SWREG_SET_IF(reg, picture->alternate_scan, G1_REG_DEC_CTRL1_ALT_SCAN_E);
> +	G1_SWREG_SET_IF(reg, picture->top_field_first, G1_REG_DEC_CTRL1_TOPFIELDFIRST_E);
> +	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL1);
> +
> +	reg = G1_REG_DEC_CTRL2_STRM_START_BIT(slice_params->data_bit_offset) |
> +	      G1_REG_DEC_CTRL2_INTRA_DC_PREC(picture->intra_dc_precision);
> +	G1_SWREG_SET_IF(reg, picture->q_scale_type,G1_REG_DEC_CTRL2_QSCALE_TYPE);
> +	G1_SWREG_SET_IF(reg, picture->concealment_motion_vectors, G1_REG_DEC_CTRL2_CON_MV_E);
> +	G1_SWREG_SET_IF(reg, picture->intra_vlc_format, G1_REG_DEC_CTRL2_INTRA_VLC_TAB);
> +	G1_SWREG_SET_IF(reg, picture->frame_pred_frame_dct, G1_REG_DEC_CTRL2_FRAME_PRED_DCT);
> +	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL2);
> +
> +	reg = G1_REG_DEC_CTRL3_INIT_QP(1) |
> +	      G1_REG_DEC_CTRL3_STREAM_LEN(slice_params->bit_size >> 3);
> +	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL3);
>  
>  	reg = G1_REG_ALT_SCAN_FLAG_E(picture->alternate_scan) |
>  	      G1_REG_FCODE_FWD_HOR(picture->f_code[0][0]) |
> @@ -231,12 +174,12 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
>  	      G1_REG_MV_ACCURACY_BWD(1);
>  	vdpu_write_relaxed(vpu, reg, G1_SWREG(18));
>  
> -	reg = G1_REG_STARTMB_X(0) |
> -	      G1_REG_STARTMB_Y(0);
> -	vdpu_write_relaxed(vpu, reg, G1_SWREG(48));
> +	reg = G1_REG_ERR_CONC_STARTMB_X(0) |
> +	      G1_REG_ERR_CONC_STARTMB_Y(0);
> +	vdpu_write_relaxed(vpu, reg, G1_REG_ERR_CONC);
>  
> -	reg = G1_REG_APF_THRESHOLD(8);
> -	vdpu_write_relaxed(vpu, reg, G1_SWREG(55));
> +	reg = G1_REG_REF_BUF_CTRL2_APF_THRESHOLD(8);
> +	vdpu_write_relaxed(vpu, reg, G1_REG_REF_BUF_CTRL2);
>  
>  	hantro_g1_mpeg2_dec_set_quantization(vpu, ctx);
>  
> @@ -246,6 +189,5 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
>  
>  	hantro_finish_run(ctx);
>  
> -	reg = G1_REG_DEC_E(1);
> -	vdpu_write(vpu, reg, G1_SWREG(1));
> +	vdpu_write(vpu, G1_REG_INTERRUPT_DEC_E, G1_REG_INTERRUPT);
>  }
> diff --git a/drivers/staging/media/hantro/hantro_g1_regs.h b/drivers/staging/media/hantro/hantro_g1_regs.h
> index 5c0ea7994336..84b93915a953 100644
> --- a/drivers/staging/media/hantro/hantro_g1_regs.h
> +++ b/drivers/staging/media/hantro/hantro_g1_regs.h
> @@ -9,8 +9,14 @@
>  #ifndef HANTRO_G1_REGS_H_
>  #define HANTRO_G1_REGS_H_
>  
> +#define G1_SWREG(nr) ((nr) * 4)
> +#define G1_SWREG_SET_IF(reg, cond, val) \
> +	do \
> +		reg |= (cond) ? (val) : 0x0; \
> +	while (0)
> +
>  /* Decoder registers. */
> -#define G1_REG_INTERRUPT				0x004
> +#define G1_REG_INTERRUPT				G1_SWREG(1)
>  #define     G1_REG_INTERRUPT_DEC_PIC_INF		BIT(24)
>  #define     G1_REG_INTERRUPT_DEC_TIMEOUT		BIT(18)
>  #define     G1_REG_INTERRUPT_DEC_SLICE_INT		BIT(17)
> @@ -22,7 +28,7 @@
>  #define     G1_REG_INTERRUPT_DEC_IRQ			BIT(8)
>  #define     G1_REG_INTERRUPT_DEC_IRQ_DIS		BIT(4)
>  #define     G1_REG_INTERRUPT_DEC_E			BIT(0)
> -#define G1_REG_CONFIG					0x008
> +#define G1_REG_CONFIG					G1_SWREG(2)
>  #define     G1_REG_CONFIG_DEC_AXI_RD_ID(x)		(((x) & 0xff) << 24)
>  #define     G1_REG_CONFIG_DEC_TIMEOUT_E			BIT(23)
>  #define     G1_REG_CONFIG_DEC_STRSWAP32_E		BIT(22)
> @@ -41,7 +47,7 @@
>  #define     G1_REG_CONFIG_DEC_ADV_PRE_DIS		BIT(6)
>  #define     G1_REG_CONFIG_DEC_SCMD_DIS			BIT(5)
>  #define     G1_REG_CONFIG_DEC_MAX_BURST(x)		(((x) & 0x1f) << 0)
> -#define G1_REG_DEC_CTRL0				0x00c
> +#define G1_REG_DEC_CTRL0				G1_SWREG(3)
>  #define     G1_REG_DEC_CTRL0_DEC_MODE(x)		(((x) & 0xf) << 28)
>  #define     G1_REG_DEC_CTRL0_RLC_MODE_E			BIT(27)
>  #define     G1_REG_DEC_CTRL0_SKIP_MODE			BIT(26)
> @@ -66,7 +72,7 @@
>  #define     G1_REG_DEC_CTRL0_PICORD_COUNT_E		BIT(9)
>  #define     G1_REG_DEC_CTRL0_DEC_AHB_HLOCK_E		BIT(8)
>  #define     G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(x)		(((x) & 0xff) << 0)
> -#define G1_REG_DEC_CTRL1				0x010
> +#define G1_REG_DEC_CTRL1				G1_SWREG(4)
>  #define     G1_REG_DEC_CTRL1_PIC_MB_WIDTH(x)		(((x) & 0x1ff) << 23)
>  #define     G1_REG_DEC_CTRL1_MB_WIDTH_OFF(x)		(((x) & 0xf) << 19)
>  #define     G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(x)		(((x) & 0xff) << 11)
> @@ -77,7 +83,7 @@
>  #define     G1_REG_DEC_CTRL1_PIC_MB_W_EXT(x)		(((x) & 0x7) << 3)
>  #define     G1_REG_DEC_CTRL1_PIC_MB_H_EXT(x)		(((x) & 0x7) << 0)
>  #define     G1_REG_DEC_CTRL1_PIC_REFER_FLAG		BIT(0)
> -#define G1_REG_DEC_CTRL2				0x014
> +#define G1_REG_DEC_CTRL2				G1_SWREG(5)
>  #define     G1_REG_DEC_CTRL2_STRM_START_BIT(x)		(((x) & 0x3f) << 26)
>  #define     G1_REG_DEC_CTRL2_SYNC_MARKER_E		BIT(25)
>  #define     G1_REG_DEC_CTRL2_TYPE1_QUANT_E		BIT(24)
> @@ -120,13 +126,13 @@
>  #define     G1_REG_DEC_CTRL2_BOOLEAN_RANGE(x)		(((x) & 0xff) << 0)
>  #define     G1_REG_DEC_CTRL2_ALPHA_OFFSET(x)		(((x) & 0x1f) << 5)
>  #define     G1_REG_DEC_CTRL2_BETA_OFFSET(x)		(((x) & 0x1f) << 0)
> -#define G1_REG_DEC_CTRL3				0x018
> +#define G1_REG_DEC_CTRL3				G1_SWREG(6)
>  #define     G1_REG_DEC_CTRL3_START_CODE_E		BIT(31)
>  #define     G1_REG_DEC_CTRL3_INIT_QP(x)			(((x) & 0x3f) << 25)
>  #define     G1_REG_DEC_CTRL3_CH_8PIX_ILEAV_E		BIT(24)
>  #define     G1_REG_DEC_CTRL3_STREAM_LEN_EXT(x)		(((x) & 0xff) << 24)
>  #define     G1_REG_DEC_CTRL3_STREAM_LEN(x)		(((x) & 0xffffff) << 0)
> -#define G1_REG_DEC_CTRL4				0x01c
> +#define G1_REG_DEC_CTRL4				G1_SWREG(7)
>  #define     G1_REG_DEC_CTRL4_CABAC_E			BIT(31)
>  #define     G1_REG_DEC_CTRL4_BLACKWHITE_E		BIT(30)
>  #define     G1_REG_DEC_CTRL4_DIR_8X8_INFER_E		BIT(29)
> @@ -163,7 +169,7 @@
>  #define     G1_REG_DEC_CTRL4_INIT_DC_MATCH0(x)		(((x) & 0x7) << 9)
>  #define     G1_REG_DEC_CTRL4_INIT_DC_MATCH1(x)		(((x) & 0x7) << 6)
>  #define     G1_REG_DEC_CTRL4_VP7_VERSION		BIT(5)
> -#define G1_REG_DEC_CTRL5				0x020
> +#define G1_REG_DEC_CTRL5				G1_SWREG(8)
>  #define     G1_REG_DEC_CTRL5_CONST_INTRA_E		BIT(31)
>  #define     G1_REG_DEC_CTRL5_FILT_CTRL_PRES		BIT(30)
>  #define     G1_REG_DEC_CTRL5_RDPIC_CNT_PRES		BIT(29)
> @@ -187,7 +193,7 @@
>  #define     G1_REG_DEC_CTRL5_RV_BWD_SCALE(x)		(((x) & 0x3fff) << 0)
>  #define     G1_REG_DEC_CTRL5_INIT_DC_COMP0(x)		(((x) & 0xffff) << 16)
>  #define     G1_REG_DEC_CTRL5_INIT_DC_COMP1(x)		(((x) & 0xffff) << 0)
> -#define G1_REG_DEC_CTRL6				0x024
> +#define G1_REG_DEC_CTRL6				G1_SWREG(9)
>  #define     G1_REG_DEC_CTRL6_PPS_ID(x)			(((x) & 0xff) << 24)
>  #define     G1_REG_DEC_CTRL6_REFIDX1_ACTIVE(x)		(((x) & 0x1f) << 19)
>  #define     G1_REG_DEC_CTRL6_REFIDX0_ACTIVE(x)		(((x) & 0x1f) << 14)
> @@ -198,7 +204,7 @@
>  #define     G1_REG_DEC_CTRL6_STREAM1_LEN(x)		(((x) & 0xffffff) << 0)
>  #define     G1_REG_DEC_CTRL6_PIC_SLICE_AM(x)		(((x) & 0x1fff) << 0)
>  #define     G1_REG_DEC_CTRL6_COEFFS_PART_AM(x)		(((x) & 0xf) << 24)
> -#define G1_REG_FWD_PIC(i)				(0x028 + ((i) * 0x4))
> +#define G1_REG_FWD_PIC(i)				(G1_SWREG(10) + ((i) * 0x4))
>  #define     G1_REG_FWD_PIC_PINIT_RLIST_F5(x)		(((x) & 0x1f) << 25)
>  #define     G1_REG_FWD_PIC_PINIT_RLIST_F4(x)		(((x) & 0x1f) << 20)
>  #define     G1_REG_FWD_PIC_PINIT_RLIST_F3(x)		(((x) & 0x1f) << 15)
> @@ -211,7 +217,7 @@
>  #define     G1_REG_FWD_PIC1_SEGMENT_BASE(x)		((x) << 0)
>  #define     G1_REG_FWD_PIC1_SEGMENT_UPD_E		BIT(1)
>  #define     G1_REG_FWD_PIC1_SEGMENT_E			BIT(0)
> -#define G1_REG_DEC_CTRL7				0x02c
> +#define G1_REG_DEC_CTRL7				G1_SWREG(11)
>  #define     G1_REG_DEC_CTRL7_PINIT_RLIST_F15(x)		(((x) & 0x1f) << 25)
>  #define     G1_REG_DEC_CTRL7_PINIT_RLIST_F14(x)		(((x) & 0x1f) << 20)
>  #define     G1_REG_DEC_CTRL7_PINIT_RLIST_F13(x)		(((x) & 0x1f) << 15)
> @@ -226,12 +232,12 @@
>  #define     G1_REG_DEC_CTRL7_DCT5_START_BIT(x)		(((x) & 0x3f) << 12)
>  #define     G1_REG_DEC_CTRL7_DCT6_START_BIT(x)		(((x) & 0x3f) << 6)
>  #define     G1_REG_DEC_CTRL7_DCT7_START_BIT(x)		(((x) & 0x3f) << 0)
> -#define G1_REG_ADDR_STR					0x030
> -#define G1_REG_ADDR_DST					0x034
> -#define G1_REG_ADDR_REF(i)				(0x038 + ((i) * 0x4))
> +#define G1_REG_ADDR_STR					G1_SWREG(12)
> +#define G1_REG_ADDR_DST					G1_SWREG(13)
> +#define G1_REG_ADDR_REF(i)				(G1_SWREG(14) + ((i) * 0x4))
>  #define     G1_REG_ADDR_REF_FIELD_E			BIT(1)
>  #define     G1_REG_ADDR_REF_TOPC_E			BIT(0)
> -#define G1_REG_REF_PIC(i)				(0x078 + ((i) * 0x4))
> +#define G1_REG_REF_PIC(i)				(G1_SWREG(30) + ((i) * 0x4))
>  #define     G1_REG_REF_PIC_FILT_TYPE_E			BIT(31)
>  #define     G1_REG_REF_PIC_FILT_SHARPNESS(x)		(((x) & 0x7) << 28)
>  #define     G1_REG_REF_PIC_MB_ADJ_0(x)			(((x) & 0x7f) << 21)
> @@ -248,11 +254,11 @@
>  #define     G1_REG_REF_PIC_QUANT_DELTA_1(x)		(((x) & 0x1f) << 22)
>  #define     G1_REG_REF_PIC_QUANT_0(x)			(((x) & 0x7ff) << 11)
>  #define     G1_REG_REF_PIC_QUANT_1(x)			(((x) & 0x7ff) << 0)
> -#define G1_REG_LT_REF					0x098
> -#define G1_REG_VALID_REF				0x09c
> -#define G1_REG_ADDR_QTABLE				0x0a0
> -#define G1_REG_ADDR_DIR_MV				0x0a4
> -#define G1_REG_BD_REF_PIC(i)				(0x0a8 + ((i) * 0x4))
> +#define G1_REG_LT_REF					G1_SWREG(38)
> +#define G1_REG_VALID_REF				G1_SWREG(39)
> +#define G1_REG_ADDR_QTABLE				G1_SWREG(40)
> +#define G1_REG_ADDR_DIR_MV				G1_SWREG(41)
> +#define G1_REG_BD_REF_PIC(i)				(G1_SWREG(42) + ((i) * 0x4))
>  #define     G1_REG_BD_REF_PIC_BINIT_RLIST_B2(x)		(((x) & 0x1f) << 25)
>  #define     G1_REG_BD_REF_PIC_BINIT_RLIST_F2(x)		(((x) & 0x1f) << 20)
>  #define     G1_REG_BD_REF_PIC_BINIT_RLIST_B1(x)		(((x) & 0x1f) << 15)
> @@ -269,7 +275,7 @@
>  #define     G1_REG_BD_REF_PIC_QUANT_DELTA_3(x)		(((x) & 0x1f) << 22)
>  #define     G1_REG_BD_REF_PIC_QUANT_2(x)		(((x) & 0x7ff) << 11)
>  #define     G1_REG_BD_REF_PIC_QUANT_3(x)		(((x) & 0x7ff) << 0)
> -#define G1_REG_BD_P_REF_PIC				0x0bc
> +#define G1_REG_BD_P_REF_PIC				G1_SWREG(47)
>  #define     G1_REG_BD_P_REF_PIC_QUANT_DELTA_4(x)	(((x) & 0x1f) << 27)
>  #define     G1_REG_BD_P_REF_PIC_PINIT_RLIST_F3(x)	(((x) & 0x1f) << 25)
>  #define     G1_REG_BD_P_REF_PIC_PINIT_RLIST_F2(x)	(((x) & 0x1f) << 20)
> @@ -277,25 +283,25 @@
>  #define     G1_REG_BD_P_REF_PIC_PINIT_RLIST_F0(x)	(((x) & 0x1f) << 10)
>  #define     G1_REG_BD_P_REF_PIC_BINIT_RLIST_B15(x)	(((x) & 0x1f) << 5)
>  #define     G1_REG_BD_P_REF_PIC_BINIT_RLIST_F15(x)	(((x) & 0x1f) << 0)
> -#define G1_REG_ERR_CONC					0x0c0
> +#define G1_REG_ERR_CONC					G1_SWREG(48)
>  #define     G1_REG_ERR_CONC_STARTMB_X(x)		(((x) & 0x1ff) << 23)
>  #define     G1_REG_ERR_CONC_STARTMB_Y(x)		(((x) & 0xff) << 15)
> -#define G1_REG_PRED_FLT					0x0c4
> +#define G1_REG_PRED_FLT					G1_SWREG(49)
>  #define     G1_REG_PRED_FLT_PRED_BC_TAP_0_0(x)		(((x) & 0x3ff) << 22)
>  #define     G1_REG_PRED_FLT_PRED_BC_TAP_0_1(x)		(((x) & 0x3ff) << 12)
>  #define     G1_REG_PRED_FLT_PRED_BC_TAP_0_2(x)		(((x) & 0x3ff) << 2)
> -#define G1_REG_REF_BUF_CTRL				0x0cc
> +#define G1_REG_REF_BUF_CTRL				G1_SWREG(51)
>  #define     G1_REG_REF_BUF_CTRL_REFBU_E			BIT(31)
>  #define     G1_REG_REF_BUF_CTRL_REFBU_THR(x)		(((x) & 0xfff) << 19)
>  #define     G1_REG_REF_BUF_CTRL_REFBU_PICID(x)		(((x) & 0x1f) << 14)
>  #define     G1_REG_REF_BUF_CTRL_REFBU_EVAL_E		BIT(13)
>  #define     G1_REG_REF_BUF_CTRL_REFBU_FPARMOD_E		BIT(12)
>  #define     G1_REG_REF_BUF_CTRL_REFBU_Y_OFFSET(x)	(((x) & 0x1ff) << 0)
> -#define G1_REG_REF_BUF_CTRL2				0x0dc
> +#define G1_REG_REF_BUF_CTRL2				G1_SWREG(55)
>  #define     G1_REG_REF_BUF_CTRL2_REFBU2_BUF_E		BIT(31)
>  #define     G1_REG_REF_BUF_CTRL2_REFBU2_THR(x)		(((x) & 0xfff) << 19)
>  #define     G1_REG_REF_BUF_CTRL2_REFBU2_PICID(x)	(((x) & 0x1f) << 14)
>  #define     G1_REG_REF_BUF_CTRL2_APF_THRESHOLD(x)	(((x) & 0x3fff) << 0)
> -#define G1_REG_SOFT_RESET				0x194
> +#define G1_REG_SOFT_RESET				G1_SWREG(101)
>  
>  #endif /* HANTRO_G1_REGS_H_ */


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
