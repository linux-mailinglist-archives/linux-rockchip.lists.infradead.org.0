Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1623F1CB4F2
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 May 2020 18:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YtL+poLgkbx6tLaz2x87yMrFTituwX6dGIPnOe4pkM=; b=RGO5dHEC7IoCCB
	rGvyHEa+ONhczGarVL7nAsYVxTkOF6lnmEQORB+JLdMlVGJsSBM80K46aKvB7cHY1VF0xPI0PQnmF
	GVBzhxijLNRE557OnR4zEacZduJ72qrAM2yGNeiznzyLi70/8raSrNYYcNtVW560UdqWTXKeiUwPV
	OVWMcHMHEOOSWTKRyPv2IXBcTdMOB7qP8VhcMoYIZEEBo66Nwkk+gj4P2L2f7bR34vPC4vJdX7YHV
	PL/7iT0LaSxxGXDqlagTlE2UBJUSZZWmZjofnI2utdCcrhpGCZgT48w6/9sLwY9s5DngJxkvPLUyF
	D3N4k1fgsVALDuUh0OXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX5pe-0002yZ-PO; Fri, 08 May 2020 16:26:38 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX5pb-0002ws-IP
 for linux-rockchip@lists.infradead.org; Fri, 08 May 2020 16:26:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 7F0B72A31EB
Message-ID: <b2160325f5b9bae5b437a37069db926d2a464e8d.camel@collabora.com>
Subject: Re: [PATCH v3 3/3] media: rkvdec: Add the VP9 backend
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Fri, 08 May 2020 13:26:21 -0300
In-Reply-To: <8e8eda07-e5f5-86dc-899b-0823ea0479f2@xs4all.nl>
References: <20200505134110.3435-1-ezequiel@collabora.com>
 <20200505134110.3435-4-ezequiel@collabora.com>
 <8e8eda07-e5f5-86dc-899b-0823ea0479f2@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_092635_881671_5CEAE914 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 gustavo.padovan@collabora.com, Boris Brezillon <boris.brezillon@collabora.com>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 2020-05-08 at 12:34 +0200, Hans Verkuil wrote:
> On 05/05/2020 15:41, Ezequiel Garcia wrote:
> > From: Boris Brezillon <boris.brezillon@collabora.com>
> > 
> > The Rockchip VDEC supports VP9 profile 0 up to 4096x2304@30fps. Add
> > a backend for this new format.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  drivers/staging/media/rkvdec/Makefile     |    2 +-
> >  drivers/staging/media/rkvdec/rkvdec-vp9.c | 1577 +++++++++++++++++++++
> >  drivers/staging/media/rkvdec/rkvdec.c     |   56 +-
> >  drivers/staging/media/rkvdec/rkvdec.h     |    6 +
> >  4 files changed, 1637 insertions(+), 4 deletions(-)
> >  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
> > 
> > diff --git a/drivers/staging/media/rkvdec/Makefile b/drivers/staging/media/rkvdec/Makefile
> > index c08fed0a39f9..cb86b429cfaa 100644
> > --- a/drivers/staging/media/rkvdec/Makefile
> > +++ b/drivers/staging/media/rkvdec/Makefile
> > @@ -1,3 +1,3 @@
> >  obj-$(CONFIG_VIDEO_ROCKCHIP_VDEC) += rockchip-vdec.o
> >  
> > -rockchip-vdec-y += rkvdec.o rkvdec-h264.o
> > +rockchip-vdec-y += rkvdec.o rkvdec-h264.o rkvdec-vp9.o
> > diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c b/drivers/staging/media/rkvdec/rkvdec-vp9.c
> > new file mode 100644
> > index 000000000000..37d0ea4e3570
> > --- /dev/null
> > +++ b/drivers/staging/media/rkvdec/rkvdec-vp9.c
> > @@ -0,0 +1,1577 @@
> 
> <snip>
> 
> > +static void init_inter_probs(struct rkvdec_ctx *ctx,
> > +			     const struct rkvdec_vp9_run *run)
> > +{
> > +	const struct v4l2_ctrl_vp9_frame_decode_params *dec_params;
> > +	struct rkvdec_vp9_ctx *vp9_ctx = ctx->priv;
> > +	struct rkvdec_vp9_priv_tbl *tbl = vp9_ctx->priv_tbl.cpu;
> > +	struct rkvdec_vp9_inter_frame_probs *rkprobs;
> > +	const struct v4l2_vp9_probabilities *probs;
> > +	unsigned int i, j, k;
> > +
> > +	rkprobs = &tbl->probs.inter;
> > +	dec_params = run->decode_params;
> > +	probs = &dec_params->probs;
> > +
> > +	/*
> > +	 * inter probs
> > +	 * 151 x 128 bits, aligned to 152 x 128 bits
> > +	 * inter only
> > +	 * intra_y_mode & inter_block info 6 x 128 bits
> > +	 */
> > +
> > +	memcpy(rkprobs->y_mode, probs->y_mode, sizeof(rkprobs->y_mode));
> > +	memcpy(rkprobs->comp_mode, probs->comp_mode,
> > +	       sizeof(rkprobs->comp_mode));
> > +	memcpy(rkprobs->comp_ref, probs->comp_ref,
> > +	       sizeof(rkprobs->comp_ref));
> > +	memcpy(rkprobs->single_ref, probs->single_ref,
> > +	       sizeof(rkprobs->single_ref));
> > +	memcpy(rkprobs->inter_mode, probs->inter_mode,
> > +	       sizeof(rkprobs->inter_mode));
> > +	memcpy(rkprobs->interp_filter, probs->interp_filter,
> > +	       sizeof(rkprobs->interp_filter));
> > +
> > +	/* 128 x 128 bits coeff related */
> > +	for (i = 0; i < ARRAY_SIZE(probs->coef); i++) {
> > +		for (j = 0; j < ARRAY_SIZE(probs->coef[0]); j++) {
> > +			for (k = 0; k < ARRAY_SIZE(probs->coef[0][0]); k++)
> > +				write_coeff_plane(probs->coef[i][j][k],
> > +						  rkprobs->coef[k][i][j]);
> > +		}
> > +	}
> > +
> > +	/* intra uv mode 6 x 128 */
> > +	memcpy(rkprobs->uv_mode_0_2, &probs->uv_mode[0],
> > +	       sizeof(rkprobs->uv_mode_0_2));
> > +	memcpy(rkprobs->uv_mode_3_5, &probs->uv_mode[3],
> > +	       sizeof(rkprobs->uv_mode_3_5));
> > +	memcpy(rkprobs->uv_mode_6_8, &probs->uv_mode[6],
> > +	       sizeof(rkprobs->uv_mode_6_8));
> > +	memcpy(rkprobs->uv_mode_9, &probs->uv_mode[9],
> > +	       sizeof(rkprobs->uv_mode_9));
> > +
> > +	/* mv related 6 x 128 */
> > +	memcpy(rkprobs->mv.joint, probs->mv.joint,
> > +	       sizeof(rkprobs->mv.joint));
> > +	memcpy(rkprobs->mv.sign, probs->mv.sign,
> > +	       sizeof(rkprobs->mv.sign));
> > +	memcpy(rkprobs->mv.class, probs->mv.class,
> > +	       sizeof(rkprobs->mv.class));
> > +	memcpy(rkprobs->mv.class0_bit, probs->mv.class0_bit,
> > +	       sizeof(rkprobs->mv.class0_bit));
> > +	memcpy(rkprobs->mv.bits, probs->mv.bits,
> > +	       sizeof(rkprobs->mv.bits));
> > +	memcpy(rkprobs->mv.class0_fr, probs->mv.class0_fr,
> > +	       sizeof(rkprobs->mv.class0_fr));
> > +	memcpy(rkprobs->mv.fr, probs->mv.fr,
> > +	       sizeof(rkprobs->mv.fr));
> > +	memcpy(rkprobs->mv.class0_hp, probs->mv.class0_hp,
> > +	       sizeof(rkprobs->mv.class0_hp));
> > +	memcpy(rkprobs->mv.hp, probs->mv.hp,
> > +	       sizeof(rkprobs->mv.hp));
> 
> Can't you just do: 'rkprobs->mv = probs->mv'?
> 

I think I'd like to keep this as-is.

Having the memcpy makes it explicit that we are copying
these structs around. While the assignment would
bring type checking, it can be misleading for readers.

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
