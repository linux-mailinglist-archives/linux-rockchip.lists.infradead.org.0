Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8582FA58B0
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Sep 2019 16:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KvRxLJYyKWq1EgAkfcHFGTJpr1CuVskxKZwvVj6n8I=; b=ZdywBR3BmIggMj
	RIy5H8bRnl2/V4LJZMlChGVhrnhl0dJA4tyCNwduWnjcwXpedl9uG5TMbcmvTs+YARpQgRZaJzPtm
	pHJd8nv2S7JNDBUNkowZ5W0lLMA9uNOgxZZNxHq1ufHAiU511fiW44OPHaIfMYoY1GRkjpRwyNElj
	qVz3b5zYWp/x8XF2cwb827uGKmW/uBMWP2e4ldaLQ/hn1dJU0sKObtR1VRq9Qlq6ZqOKfyPpcWTzL
	C+Gk0VwEWk7iUoUVH7ZgnTWpISoNb94XsXLHbJW8lb4NFa6xrLs33rZdMVX70Sk5r5LgmKfUnA80P
	L+RB5DPIG3X3JEcyx6Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mt6-00060o-Io; Mon, 02 Sep 2019 14:00:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mt3-000603-Ek
 for linux-rockchip@lists.infradead.org; Mon, 02 Sep 2019 14:00:54 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i4msv-00055J-K2; Mon, 02 Sep 2019 16:00:45 +0200
Message-ID: <1567432843.3666.6.camel@pengutronix.de>
Subject: Re: [PATCH 02/12] media: hantro: Do not reorder H264 scaling list
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>
Date: Mon, 02 Sep 2019 16:00:43 +0200
In-Reply-To: <HE1PR06MB40116C92C3D52C5957EF48E9ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB40116C92C3D52C5957EF48E9ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_070053_497672_59CBB7F0 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi Jonas,

On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
> Scaling list supplied from userspace using ffmpeg and libva-v4l2-request
> is already in matrix order and can be used without applying the inverse
> scanning process.

"in matrix order" is equivalent to "in raster scan order"?

Could you add this requirement to the
V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX documentation?

> The HW also only support 8x8 scaling list for the Y component, indices 0
> and 3 in the scaling list supplied from userspace.
> 
> Remove reordering and write the scaling matrix in an order expected by
> the VPU, also only allocate memory for the two 8x8 lists used.
> 
> Fixes: a9471e25629b ("media: hantro: Add core bits to support H264 decoding")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/staging/media/hantro/hantro_h264.c | 64 +++++++---------------
>  1 file changed, 20 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
> index 0d758e0c0f99..e2d01145ac4f 100644
> --- a/drivers/staging/media/hantro/hantro_h264.c
> +++ b/drivers/staging/media/hantro/hantro_h264.c
> @@ -20,7 +20,7 @@
>  /* Size with u32 units. */
>  #define CABAC_INIT_BUFFER_SIZE		(460 * 2)
>  #define POC_BUFFER_SIZE			34
> -#define SCALING_LIST_SIZE		(6 * 16 + 6 * 64)
> +#define SCALING_LIST_SIZE		(6 * 16 + 2 * 64)

This changes the size of struct hantro_h264_dec_priv_tbl. Did this
describe the auxiliary buffer format incorrectly before?

>  #define POC_CMP(p0, p1) ((p0) < (p1) ? -1 : 1)
>  
> @@ -194,57 +194,33 @@ static const u32 h264_cabac_table[] = {
>  	0x1f0c2517, 0x1f261440
>  };
>  
> -/*
> - * NOTE: The scaling lists are in zig-zag order, apply inverse scanning process
> - * to get the values in matrix order. In addition, the hardware requires bytes
> - * swapped within each subsequent 4 bytes. Both arrays below include both
> - * transformations.
> - */
> -static const u32 zig_zag_4x4[] = {
> -	3, 2, 7, 11, 6, 1, 0, 5, 10, 15, 14, 9, 4, 8, 13, 12
> -};
> -
> -static const u32 zig_zag_8x8[] = {
> -	3, 2, 11, 19, 10, 1, 0, 9, 18, 27, 35, 26, 17, 8, 7, 6,
> -	15, 16, 25, 34, 43, 51, 42, 33, 24, 23, 14, 5, 4, 13, 22, 31,
> -	32, 41, 50, 59, 58, 49, 40, 39, 30, 21, 12, 20, 29, 38, 47, 48,
> -	57, 56, 55, 46, 37, 28, 36, 45, 54, 63, 62, 53, 44, 52, 61, 60
> -};
> -
>  static void
>  reorder_scaling_list(struct hantro_ctx *ctx)
>  {
>  	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
>  	const struct v4l2_ctrl_h264_scaling_matrix *scaling = ctrls->scaling;
> -	const size_t num_list_4x4 = ARRAY_SIZE(scaling->scaling_list_4x4);
> -	const size_t list_len_4x4 = ARRAY_SIZE(scaling->scaling_list_4x4[0]);
> -	const size_t num_list_8x8 = ARRAY_SIZE(scaling->scaling_list_8x8);
> -	const size_t list_len_8x8 = ARRAY_SIZE(scaling->scaling_list_8x8[0]);
>  	struct hantro_h264_dec_priv_tbl *tbl = ctx->h264_dec.priv.cpu;
> -	u8 *dst = tbl->scaling_list;
> -	const u8 *src;
> -	int i, j;
> -
> -	BUILD_BUG_ON(ARRAY_SIZE(zig_zag_4x4) != list_len_4x4);
> -	BUILD_BUG_ON(ARRAY_SIZE(zig_zag_8x8) != list_len_8x8);
> -	BUILD_BUG_ON(ARRAY_SIZE(tbl->scaling_list) !=
> -		     num_list_4x4 * list_len_4x4 +
> -		     num_list_8x8 * list_len_8x8);
> -
> -	src = &scaling->scaling_list_4x4[0][0];
> -	for (i = 0; i < num_list_4x4; ++i) {
> -		for (j = 0; j < list_len_4x4; ++j)
> -			dst[zig_zag_4x4[j]] = src[j];
> -		src += list_len_4x4;
> -		dst += list_len_4x4;
> +	u32 *dst = (u32 *)tbl->scaling_list;
> +	u32 i, j, tmp;
> +
> +	for (i = 0; i < ARRAY_SIZE(scaling->scaling_list_4x4); i++) {
> +		for (j = 0; j < ARRAY_SIZE(scaling->scaling_list_4x4[0]) / 4; j++) {
> +			tmp = (scaling->scaling_list_4x4[i][4 * j + 0] << 24) |
> +			      (scaling->scaling_list_4x4[i][4 * j + 1] << 16) |
> +			      (scaling->scaling_list_4x4[i][4 * j + 2] << 8) |
> +			      (scaling->scaling_list_4x4[i][4 * j + 3]);
> +			*dst++ = tmp;
> +		}

This looks like it could use swab32().

>  	}
>  
> -	src = &scaling->scaling_list_8x8[0][0];
> -	for (i = 0; i < num_list_8x8; ++i) {
> -		for (j = 0; j < list_len_8x8; ++j)
> -			dst[zig_zag_8x8[j]] = src[j];
> -		src += list_len_8x8;
> -		dst += list_len_8x8;
> +	for (i = 0; i < ARRAY_SIZE(scaling->scaling_list_8x8); i += 3) {
> +		for (j = 0; j < ARRAY_SIZE(scaling->scaling_list_8x8[0]) / 4; j++) {
> +			tmp = (scaling->scaling_list_8x8[i][4 * j + 0] << 24) |
> +			      (scaling->scaling_list_8x8[i][4 * j + 1] << 16) |
> +			      (scaling->scaling_list_8x8[i][4 * j + 2] << 8) |
> +			      (scaling->scaling_list_8x8[i][4 * j + 3]);
> +			*dst++ = tmp;
> +		}

After this change, the second 8x8 scaling list has moved to a different
offset. Is this where the hardware has always been looking for it, or is
there a change missing in another place?

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
