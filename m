Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5887130E37
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 08:52:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GbQ+k8E6B8iilGEVHcfnPrcUmrFhEJyBq5mjXtdCffw=; b=DPATTCgdlwdui7
	dL1udfUQIsTbH4syJBAD6T11XHHdMxS2xKjcjEA7va/Te8V39mcYIaj1k+smVsAOuVeRQeNCkBa83
	jGEipPJDQ31aqVlrrP1edI55CJ1fwJbTc0MUGFOfgMeKqNTzc3NGHEpR6sACdB+nbNiD3AJ9Ur/Sk
	LYT379S5fTNyjtY+axBdrV1nbhRKG5BhtMfpw2FhFqjCt2oxUBWRNzVjoXq7JDT2psiwisOKd6QHH
	HBfK2JiRV57FqXIA9YUEcaPflVL+Af+jwbWgD/1jRzJuaueGwpZdAd+/n1NrsjKl1iZa6f7Q0Y5A9
	1Qlh1+xXvC129H0sOl5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioNBx-0000Wr-0e; Mon, 06 Jan 2020 07:52:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioNBu-0000VH-25
 for linux-rockchip@lists.infradead.org; Mon, 06 Jan 2020 07:52:47 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 657BB283C0A;
 Mon,  6 Jan 2020 07:52:38 +0000 (GMT)
Date: Mon, 6 Jan 2020 08:52:35 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil
 <hans.verkuil@cisco.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@iki.fi>,
 linux-media@vger.kernel.org
Subject: Re: [PATCH v3 6/7] media: rkvdec: Add the rkvdec driver
Message-ID: <20200106085235.0e639ecb@collabora.com>
In-Reply-To: <20191213125414.90725-7-boris.brezillon@collabora.com>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-7-boris.brezillon@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_235246_236242_C5BA012C 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 13:54:13 +0100
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> +static int rkvdec_try_capture_fmt(struct file *file, void *priv,
> +				  struct v4l2_format *f)
> +{
> +	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
> +	const struct rkvdec_coded_fmt_desc *coded_desc;
> +	u32 fourcc, width, height;
> +	unsigned int i;
> +
> +	/*
> +	 * The codec context should point to a coded format desc, if the format
> +	 * on the coded end has not been set yet, it should point to the
> +	 * default value.
> +	 */
> +	coded_desc = ctx->coded_fmt_desc;
> +	if (WARN_ON(!coded_desc))
> +		return -EINVAL;
> +
> +	fourcc = f->fmt.pix_mp.pixelformat;
> +	for (i = 0; i < coded_desc->num_decoded_fmts; i++) {
> +		if (coded_desc->decoded_fmts[i] == fourcc)
> +			break;
> +	}
> +
> +	if (i == coded_desc->num_decoded_fmts)
> +		return -EINVAL;
> +
> +	/* Save the original width/height before aligning them. */
> +	width = f->fmt.pix_mp.width;
> +	height = f->fmt.pix_mp.height;
> +
> +	/* Always apply the frmsize constraint of the coded end. */
> +	v4l2_apply_frmsize_constraints(&f->fmt.pix_mp.width,
> +				       &f->fmt.pix_mp.height,
> +				       &coded_desc->frmsize);
> +
> +	v4l2_fill_pixfmt_mp(&f->fmt.pix_mp, fourcc, f->fmt.pix_mp.width,
> +			    f->fmt.pix_mp.height);
> +
> +	/*
> +	 * Now that we have computed sizeimage and bytesperline we can restore
> +	 * the original width/height (before macro block alignment).
> +	 */
> +	f->fmt.pix_mp.width = width;
> +	f->fmt.pix_mp.height = height;

Looks like restoring the original width/height was a bad idea (it
breaks the odd_size tests of the VP9 testsuite [1]). I'll adjust the
test in validate_dec_params() [2] to align the ctrl width/height params
on a superblock size (64 pixels) instead.

> +
> +	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
> +
> +	return 0;
> +}

[1]https://storage.googleapis.com/downloads.webmproject.org/vp9/decoder-test-streams/Profile_0_8bit.zip
[2]https://patchwork.kernel.org/patch/11290603/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
