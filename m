Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C164B1CB541
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 May 2020 18:56:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2wCCt66y0uXczU2WMXHZwqkJ6VBHlLQmfWuhEnMfNc=; b=NolH7qezMOAefT
	GzzE+SnD8DKXibDIoXUqpMLWtiKpvFsuJHaR+wwC3srK8CxsC2bAESm94uWo8qES0ndkxd1bKNZct
	/vFKPNQYZ81hxA8rOCHB0CgOXBsuv7yeXaB+/1KXSXBIKpbgP8yg9IOCJB88UNTjsN+0QTNKagv0b
	UzlDwq0i67X+tTKIY2WPowYTlXGcfSjEntU8z+8AZ1a8iuc+7fVDoqQI1e4BGtgp03jxPA4jU/Lb+
	msOuJFumYBOyokkPdOnYQDlfcXnCR46KG9pcYNmbA1Np1TdzhuGrcZwN1qSwAQl1PAORX/37Kmk9p
	HajfRfIGUT9xQhKq3kkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX6Ig-0004dT-RK; Fri, 08 May 2020 16:56:38 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6Ic-0004cm-Qn
 for linux-rockchip@lists.infradead.org; Fri, 08 May 2020 16:56:36 +0000
Received: by mail-ej1-x643.google.com with SMTP id a2so1784836ejx.5
 for <linux-rockchip@lists.infradead.org>; Fri, 08 May 2020 09:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qSHE/cDUYWET1agiZaWzN/cLhWh+dKZVdX5a77HIV0o=;
 b=K1x45ekdP5M5U1MQqp4w0sbhv6u1/qfAEDLNfXKxfqr5iK3JD9mMli3EIjS1druXx4
 I+/2i166tr6/suS6hqQgXXhRD4Mw7UhlO6V7jlEu3JhlhAdCjNiMoNa0EibtMdpvRMvm
 s2Amar7H23yx37oA/d7ZX04clDeVlZRlKHpCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qSHE/cDUYWET1agiZaWzN/cLhWh+dKZVdX5a77HIV0o=;
 b=tu+W2hD0asnQf1GjLBIIN3lr1uPnTcxJ/SllSImdqocv4uDNRgf7lLrH3aTDg4vKWg
 Oi3Nyc7l8bucuEjvO1vfo8N5LvVBq8Xbjg4PB7SNZGkz/l2pJ3IsNEubQkceHZJEtkcK
 X2Br1jhFfqD4aN5XHMbF3GNVFINAzfFiDF9VOk347oBTVCJEc9u4eh2VEmtl80nP7tpc
 g7TDLopFGXGPFHyIpEtiyMrZ02IQNtMlST1Ya5S2nM4A33GgHa3CQm7PwKGEfYZRp33g
 +gPuxfhIGytKYy2oOWr0IAZtbdMJr0arHZmJLCmnIdbk+RA01StxiYg4N2ZJ+p9k4Olo
 j8Xg==
X-Gm-Message-State: AGi0PuadzO/TVzLGGav9XTLEwrEULK5PCuIxiT8U2pl6Zeg1hcOG6niB
 goZTr54qC4bYmxqhToQ38xxrJhVFPvzavA==
X-Google-Smtp-Source: APiQypJhCTNCCxzcm+Zxq0r123h8Q6k5wjr4TsM06Jym22n37JcbtiLbCUGv90nxJIvsPgxytPEtgg==
X-Received: by 2002:a17:907:4420:: with SMTP id
 om24mr2503046ejb.99.1588956992481; 
 Fri, 08 May 2020 09:56:32 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id u18sm303912edx.27.2020.05.08.09.56.31
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 May 2020 09:56:31 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id z8so2692311wrw.3
 for <linux-rockchip@lists.infradead.org>; Fri, 08 May 2020 09:56:31 -0700 (PDT)
X-Received: by 2002:a5d:66c5:: with SMTP id k5mr3817089wrw.17.1588956990811;
 Fri, 08 May 2020 09:56:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200505134110.3435-1-ezequiel@collabora.com>
 <20200505134110.3435-4-ezequiel@collabora.com>
 <8e8eda07-e5f5-86dc-899b-0823ea0479f2@xs4all.nl>
 <b2160325f5b9bae5b437a37069db926d2a464e8d.camel@collabora.com>
In-Reply-To: <b2160325f5b9bae5b437a37069db926d2a464e8d.camel@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 8 May 2020 18:56:18 +0200
X-Gmail-Original-Message-ID: <CAAFQd5C3MpWqRRMGQJTW8rNz65T2CRYj6yFa56mJWR+DFqrFzg@mail.gmail.com>
Message-ID: <CAAFQd5C3MpWqRRMGQJTW8rNz65T2CRYj6yFa56mJWR+DFqrFzg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] media: rkvdec: Add the VP9 backend
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_095634_895540_F3C73456 
X-CRM114-Status: GOOD (  21.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 8, 2020 at 6:26 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> On Fri, 2020-05-08 at 12:34 +0200, Hans Verkuil wrote:
> > On 05/05/2020 15:41, Ezequiel Garcia wrote:
> > > From: Boris Brezillon <boris.brezillon@collabora.com>
> > >
> > > The Rockchip VDEC supports VP9 profile 0 up to 4096x2304@30fps. Add
> > > a backend for this new format.
> > >
> > > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > ---
> > >  drivers/staging/media/rkvdec/Makefile     |    2 +-
> > >  drivers/staging/media/rkvdec/rkvdec-vp9.c | 1577 +++++++++++++++++++++
> > >  drivers/staging/media/rkvdec/rkvdec.c     |   56 +-
> > >  drivers/staging/media/rkvdec/rkvdec.h     |    6 +
> > >  4 files changed, 1637 insertions(+), 4 deletions(-)
> > >  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
> > >
> > > diff --git a/drivers/staging/media/rkvdec/Makefile b/drivers/staging/media/rkvdec/Makefile
> > > index c08fed0a39f9..cb86b429cfaa 100644
> > > --- a/drivers/staging/media/rkvdec/Makefile
> > > +++ b/drivers/staging/media/rkvdec/Makefile
> > > @@ -1,3 +1,3 @@
> > >  obj-$(CONFIG_VIDEO_ROCKCHIP_VDEC) += rockchip-vdec.o
> > >
> > > -rockchip-vdec-y += rkvdec.o rkvdec-h264.o
> > > +rockchip-vdec-y += rkvdec.o rkvdec-h264.o rkvdec-vp9.o
> > > diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c b/drivers/staging/media/rkvdec/rkvdec-vp9.c
> > > new file mode 100644
> > > index 000000000000..37d0ea4e3570
> > > --- /dev/null
> > > +++ b/drivers/staging/media/rkvdec/rkvdec-vp9.c
> > > @@ -0,0 +1,1577 @@
> >
> > <snip>
> >
> > > +static void init_inter_probs(struct rkvdec_ctx *ctx,
> > > +                        const struct rkvdec_vp9_run *run)
> > > +{
> > > +   const struct v4l2_ctrl_vp9_frame_decode_params *dec_params;
> > > +   struct rkvdec_vp9_ctx *vp9_ctx = ctx->priv;
> > > +   struct rkvdec_vp9_priv_tbl *tbl = vp9_ctx->priv_tbl.cpu;
> > > +   struct rkvdec_vp9_inter_frame_probs *rkprobs;
> > > +   const struct v4l2_vp9_probabilities *probs;
> > > +   unsigned int i, j, k;
> > > +
> > > +   rkprobs = &tbl->probs.inter;
> > > +   dec_params = run->decode_params;
> > > +   probs = &dec_params->probs;
> > > +
> > > +   /*
> > > +    * inter probs
> > > +    * 151 x 128 bits, aligned to 152 x 128 bits
> > > +    * inter only
> > > +    * intra_y_mode & inter_block info 6 x 128 bits
> > > +    */
> > > +
> > > +   memcpy(rkprobs->y_mode, probs->y_mode, sizeof(rkprobs->y_mode));
> > > +   memcpy(rkprobs->comp_mode, probs->comp_mode,
> > > +          sizeof(rkprobs->comp_mode));
> > > +   memcpy(rkprobs->comp_ref, probs->comp_ref,
> > > +          sizeof(rkprobs->comp_ref));
> > > +   memcpy(rkprobs->single_ref, probs->single_ref,
> > > +          sizeof(rkprobs->single_ref));
> > > +   memcpy(rkprobs->inter_mode, probs->inter_mode,
> > > +          sizeof(rkprobs->inter_mode));
> > > +   memcpy(rkprobs->interp_filter, probs->interp_filter,
> > > +          sizeof(rkprobs->interp_filter));
> > > +
> > > +   /* 128 x 128 bits coeff related */
> > > +   for (i = 0; i < ARRAY_SIZE(probs->coef); i++) {
> > > +           for (j = 0; j < ARRAY_SIZE(probs->coef[0]); j++) {
> > > +                   for (k = 0; k < ARRAY_SIZE(probs->coef[0][0]); k++)
> > > +                           write_coeff_plane(probs->coef[i][j][k],
> > > +                                             rkprobs->coef[k][i][j]);
> > > +           }
> > > +   }
> > > +
> > > +   /* intra uv mode 6 x 128 */
> > > +   memcpy(rkprobs->uv_mode_0_2, &probs->uv_mode[0],
> > > +          sizeof(rkprobs->uv_mode_0_2));
> > > +   memcpy(rkprobs->uv_mode_3_5, &probs->uv_mode[3],
> > > +          sizeof(rkprobs->uv_mode_3_5));
> > > +   memcpy(rkprobs->uv_mode_6_8, &probs->uv_mode[6],
> > > +          sizeof(rkprobs->uv_mode_6_8));
> > > +   memcpy(rkprobs->uv_mode_9, &probs->uv_mode[9],
> > > +          sizeof(rkprobs->uv_mode_9));
> > > +
> > > +   /* mv related 6 x 128 */
> > > +   memcpy(rkprobs->mv.joint, probs->mv.joint,
> > > +          sizeof(rkprobs->mv.joint));
> > > +   memcpy(rkprobs->mv.sign, probs->mv.sign,
> > > +          sizeof(rkprobs->mv.sign));
> > > +   memcpy(rkprobs->mv.class, probs->mv.class,
> > > +          sizeof(rkprobs->mv.class));
> > > +   memcpy(rkprobs->mv.class0_bit, probs->mv.class0_bit,
> > > +          sizeof(rkprobs->mv.class0_bit));
> > > +   memcpy(rkprobs->mv.bits, probs->mv.bits,
> > > +          sizeof(rkprobs->mv.bits));
> > > +   memcpy(rkprobs->mv.class0_fr, probs->mv.class0_fr,
> > > +          sizeof(rkprobs->mv.class0_fr));
> > > +   memcpy(rkprobs->mv.fr, probs->mv.fr,
> > > +          sizeof(rkprobs->mv.fr));
> > > +   memcpy(rkprobs->mv.class0_hp, probs->mv.class0_hp,
> > > +          sizeof(rkprobs->mv.class0_hp));
> > > +   memcpy(rkprobs->mv.hp, probs->mv.hp,
> > > +          sizeof(rkprobs->mv.hp));
> >
> > Can't you just do: 'rkprobs->mv = probs->mv'?
> >
>
> I think I'd like to keep this as-is.
>
> Having the memcpy makes it explicit that we are copying
> these structs around. While the assignment would
> bring type checking, it can be misleading for readers.

On the other hand, it's not obvious from the code that all fields of
the structure are copied. Perhaps memcpy(&rkprobs->mv, &probs->mv,
sizeof(rkprobs->mv)) would be a good compromise?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
