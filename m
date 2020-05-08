Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 521221CA86B
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 May 2020 12:35:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DjH0up3co5e1UHPMXsuRxybSX8ARn/YLHSJ60c/bes=; b=oG+MZeYND0Iwz5
	kVdMe+19xwbNuL73IYY7pnzZmuouYBTP17kDFdfOmM3SUmA7KYt3aDLQb3Pu//rIlZJb/tbiBDlFt
	FNEYGHejx8J2g/zK+0TFLIrXb3uJa+SbW1Fc9KVVqG3xoMSnvNbn27h1rsyFPiEwkBiyQzPkaI39a
	Da1HyXL4PkalQqRiI0lH1ohlB5kFi31klwKr08UcVPGWPKK03W826U/XugpAB8wskyw3+/KEL2lBK
	fi9v3qpYnBcJx0q5b2uotNtvZzSRKQkOHpqozYLQ5jvgbeO7Nv/uJx/VVox7issU4mPVws+Kb3Lol
	9/IxREqAQRjSdVfHAivw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX0LK-0007mp-Gd; Fri, 08 May 2020 10:34:58 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX0LG-0007m4-F6
 for linux-rockchip@lists.infradead.org; Fri, 08 May 2020 10:34:56 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id X0LAjdgdgtKAsX0LDje0Ij; Fri, 08 May 2020 12:34:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1588934091; bh=rTaj2j7yLA0szwh23jYmBUjOXAbRc2/au8nmnpb2Zdc=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=TCUXp1kABX/YT/L2UPmdaQiapw6XKAogo5Qn9QcezED3EJ6LQcxgAGkGDXj48wg+h
 ISJM6cWbdq1LJiu4zI79sJWLiqJhllggifF4B66OuGq0vYPJ86VitjflsvUmLE4CjP
 4URbsIG5F7RLTZYNoxp9OfJZiGbgV8ZQkSBA1d3CJcJ+pT1YJzv2jt3oPY5M1dcR94
 +2yAjWUahqciijGwXtTLsMZqkM7TuNmhQvpl9lHjTO65v6WMtz3F8M+zxdoEtEgQbU
 i80NF+uY0cPNKw7O2tRYLrlKP/N1/AjHF3Kl9X2QbkaOTYGEdEktWA80oCl5cckTwL
 z9qCfIXPPZpyQ==
Subject: Re: [PATCH v3 3/3] media: rkvdec: Add the VP9 backend
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200505134110.3435-1-ezequiel@collabora.com>
 <20200505134110.3435-4-ezequiel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <8e8eda07-e5f5-86dc-899b-0823ea0479f2@xs4all.nl>
Date: Fri, 8 May 2020 12:34:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200505134110.3435-4-ezequiel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfJ86TdI1pvKHRfu5hsHU8t8yFvBoKIzTCou3UH+Ra77tQTuI8FHFV23LFzHAgOqdGDIsnh9RfGNX7FSWeTCCyL/4BXYSMlrWDgdW2oZMRNF2euitDKf1
 Rs9FPZLQq+MrczrwiFI+zibyA5tu9RYM0hjZiTsldfC2CCwH6Z3ncQ4PGQU+hA4Vqe7r1Fu74BzzgId+svluSpK9jsXxLTv60GZ2XCwiqn7ELZSViaABQkcO
 gr7T+SOVtsW7Lq8IKCaRk56Fk/0ivc/6Lq4np9ok9RbS4Z7sBd2K9HlFtoWw10EavuBLeRcL8xOAI3H1JcGx9XIC5NUSPAF6/Rs3J3O5XFqufn7h818F8QBk
 cYBdveq5iVcUwfOsuwxA8NAF3OvhIcy+YEhFOGMskV0R1iY+9Psp1LPlxs3GhyyVIRHAyjXtHC84EyyBhN08gcy2PGGLFcqVgg8guPVKxgy2BMs/jHW47Vrw
 EqYQUhGFjLaYpF0v6ZMFckaOYSd8dIcWGWv2zb1I40Ld5rM5MsFLGOTUS+XBEQh1FfRvCZbig7P1o3VZyAmfGoG7GzWE7i+PigerLQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_033454_669539_A2BEE318 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.28 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 gustavo.padovan@collabora.com, Boris Brezillon <boris.brezillon@collabora.com>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 05/05/2020 15:41, Ezequiel Garcia wrote:
> From: Boris Brezillon <boris.brezillon@collabora.com>
> 
> The Rockchip VDEC supports VP9 profile 0 up to 4096x2304@30fps. Add
> a backend for this new format.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/staging/media/rkvdec/Makefile     |    2 +-
>  drivers/staging/media/rkvdec/rkvdec-vp9.c | 1577 +++++++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.c     |   56 +-
>  drivers/staging/media/rkvdec/rkvdec.h     |    6 +
>  4 files changed, 1637 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
> 
> diff --git a/drivers/staging/media/rkvdec/Makefile b/drivers/staging/media/rkvdec/Makefile
> index c08fed0a39f9..cb86b429cfaa 100644
> --- a/drivers/staging/media/rkvdec/Makefile
> +++ b/drivers/staging/media/rkvdec/Makefile
> @@ -1,3 +1,3 @@
>  obj-$(CONFIG_VIDEO_ROCKCHIP_VDEC) += rockchip-vdec.o
>  
> -rockchip-vdec-y += rkvdec.o rkvdec-h264.o
> +rockchip-vdec-y += rkvdec.o rkvdec-h264.o rkvdec-vp9.o
> diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c b/drivers/staging/media/rkvdec/rkvdec-vp9.c
> new file mode 100644
> index 000000000000..37d0ea4e3570
> --- /dev/null
> +++ b/drivers/staging/media/rkvdec/rkvdec-vp9.c
> @@ -0,0 +1,1577 @@

<snip>

> +static void init_inter_probs(struct rkvdec_ctx *ctx,
> +			     const struct rkvdec_vp9_run *run)
> +{
> +	const struct v4l2_ctrl_vp9_frame_decode_params *dec_params;
> +	struct rkvdec_vp9_ctx *vp9_ctx = ctx->priv;
> +	struct rkvdec_vp9_priv_tbl *tbl = vp9_ctx->priv_tbl.cpu;
> +	struct rkvdec_vp9_inter_frame_probs *rkprobs;
> +	const struct v4l2_vp9_probabilities *probs;
> +	unsigned int i, j, k;
> +
> +	rkprobs = &tbl->probs.inter;
> +	dec_params = run->decode_params;
> +	probs = &dec_params->probs;
> +
> +	/*
> +	 * inter probs
> +	 * 151 x 128 bits, aligned to 152 x 128 bits
> +	 * inter only
> +	 * intra_y_mode & inter_block info 6 x 128 bits
> +	 */
> +
> +	memcpy(rkprobs->y_mode, probs->y_mode, sizeof(rkprobs->y_mode));
> +	memcpy(rkprobs->comp_mode, probs->comp_mode,
> +	       sizeof(rkprobs->comp_mode));
> +	memcpy(rkprobs->comp_ref, probs->comp_ref,
> +	       sizeof(rkprobs->comp_ref));
> +	memcpy(rkprobs->single_ref, probs->single_ref,
> +	       sizeof(rkprobs->single_ref));
> +	memcpy(rkprobs->inter_mode, probs->inter_mode,
> +	       sizeof(rkprobs->inter_mode));
> +	memcpy(rkprobs->interp_filter, probs->interp_filter,
> +	       sizeof(rkprobs->interp_filter));
> +
> +	/* 128 x 128 bits coeff related */
> +	for (i = 0; i < ARRAY_SIZE(probs->coef); i++) {
> +		for (j = 0; j < ARRAY_SIZE(probs->coef[0]); j++) {
> +			for (k = 0; k < ARRAY_SIZE(probs->coef[0][0]); k++)
> +				write_coeff_plane(probs->coef[i][j][k],
> +						  rkprobs->coef[k][i][j]);
> +		}
> +	}
> +
> +	/* intra uv mode 6 x 128 */
> +	memcpy(rkprobs->uv_mode_0_2, &probs->uv_mode[0],
> +	       sizeof(rkprobs->uv_mode_0_2));
> +	memcpy(rkprobs->uv_mode_3_5, &probs->uv_mode[3],
> +	       sizeof(rkprobs->uv_mode_3_5));
> +	memcpy(rkprobs->uv_mode_6_8, &probs->uv_mode[6],
> +	       sizeof(rkprobs->uv_mode_6_8));
> +	memcpy(rkprobs->uv_mode_9, &probs->uv_mode[9],
> +	       sizeof(rkprobs->uv_mode_9));
> +
> +	/* mv related 6 x 128 */
> +	memcpy(rkprobs->mv.joint, probs->mv.joint,
> +	       sizeof(rkprobs->mv.joint));
> +	memcpy(rkprobs->mv.sign, probs->mv.sign,
> +	       sizeof(rkprobs->mv.sign));
> +	memcpy(rkprobs->mv.class, probs->mv.class,
> +	       sizeof(rkprobs->mv.class));
> +	memcpy(rkprobs->mv.class0_bit, probs->mv.class0_bit,
> +	       sizeof(rkprobs->mv.class0_bit));
> +	memcpy(rkprobs->mv.bits, probs->mv.bits,
> +	       sizeof(rkprobs->mv.bits));
> +	memcpy(rkprobs->mv.class0_fr, probs->mv.class0_fr,
> +	       sizeof(rkprobs->mv.class0_fr));
> +	memcpy(rkprobs->mv.fr, probs->mv.fr,
> +	       sizeof(rkprobs->mv.fr));
> +	memcpy(rkprobs->mv.class0_hp, probs->mv.class0_hp,
> +	       sizeof(rkprobs->mv.class0_hp));
> +	memcpy(rkprobs->mv.hp, probs->mv.hp,
> +	       sizeof(rkprobs->mv.hp));

Can't you just do: 'rkprobs->mv = probs->mv'?

> +}

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
