Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 113927D447
	for <lists+linux-rockchip@lfdr.de>; Thu,  1 Aug 2019 06:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7MFkQqe7bw0AQBVlSW6QClCaRQhloWJs9nWiWUl4vA=; b=rhbON/kklTCjoN
	xUkA5R+YdoG1+qIuDGkyBRy9oZJHUdHAFvO1aMUA1fEnRIoQTiydu9dcJTlteI/mzBf4VGjtq7s7A
	ytXfeGK+u27nlMA6uk1G2BXc0/HXx3xVe/2Hmy18c5I71GRj9yD9kvegjyFxX3VFMQLNKfYjGYOZT
	GY6rmur8Fuz/P/GL1lYp5tfFICViJjdZukxJw4NFXjHkSuDSyEMYwgBgNwIFuH+NnMy5m+dCxwbqI
	eRejvfJZ3n0SdXRCQKf8Y950bFNuKZUPekBqZqR+AL5h9IPzmKbvRH6fdwYSngzLPsO/PsOYUvmzI
	7edbL7Ok8JvqUbj1KM6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht2ME-0007cU-Ur; Thu, 01 Aug 2019 04:06:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht2MC-0007c7-6y
 for linux-rockchip@lists.infradead.org; Thu, 01 Aug 2019 04:06:25 +0000
Received: by mail-wr1-x443.google.com with SMTP id r1so71927121wrl.7
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Jul 2019 21:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0mB42y3xmrJWhBLWeWzKTdkVYurhG+q5hPYefS8udCw=;
 b=Rqy1b9wgnbO9iiiBCq0yAP3hGF9q5tLtF+rAKGfMKigKhec6hrRDE2gbAmGB6vil2r
 3lcZJ1qyK34AcYzj1Pc4F5LaFctVd17q/tHL6sMpyVAhjhlkvj+6WFudBTwwiM77jJg2
 1pvNRrRsnFSe3u9RLO+v1a/eLfrm+Ons2lnZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0mB42y3xmrJWhBLWeWzKTdkVYurhG+q5hPYefS8udCw=;
 b=sNL3rsrg+gNOZKCvvMCl6I/fhLOQbcHN0467+mNdK7JYpLxQtJPIklxYf8U5+whVnO
 J3rG/F6LFa13TIngnc4n/3He6lBafC41VR/DQscrndr+IjC2mM7u9rO1nMxNuDhMHHl1
 OuCm6UA9afCcYWersqZaoDpI0LOATKLZyBP9hY5R0L+oQ4PrlERhEYkXD7MGAdKVpu6X
 cwVtFYvQhTod7ERzInEAd2jdPVUKHqROb3rEbI4FpjDOxd9hAaG9ixNpgzwR6MmzYg92
 fd6q4dL3IRzLKwdvLXb6Q9MFMlJYO3ttZUAc/nlVGYOcnyzQTWJHqBCoQEJVXFbZ9Bll
 w0xA==
X-Gm-Message-State: APjAAAVg/CN31DCbFliFZhA4tzGt98uei3vF11gqnyOYGJ5g/ofNUoQf
 3P3M2FM/IaHuvSYoVSp+xBq+SBDvEywNeFeAvFbu4A==
X-Google-Smtp-Source: APXvYqycKy7N26liWehbx4OB6WFB2ks3ASboEt4UcIJYI8SMe0JfZCnvhCeu+F7MPJNgeMKOB0gT4IRbMod1SEgn704=
X-Received: by 2002:adf:f08f:: with SMTP id n15mr52081058wro.213.1564632382431; 
 Wed, 31 Jul 2019 21:06:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-8-boris.brezillon@collabora.com>
In-Reply-To: <20190619121540.29320-8-boris.brezillon@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 1 Aug 2019 13:06:10 +0900
Message-ID: <CAHD77HksotqFBTE84rRM=DuNFX=YJPs=YnsuFkaN-pWUNCtoxA@mail.gmail.com>
Subject: Re: [PATCH 7/9] media: hantro: Add core bits to support H264 decoding
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_210624_283974_3ED80C8E 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hertz Wong <hertz.wong@rock-chips.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Boris,

On Wed, Jun 19, 2019 at 9:15 PM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
[snip]
> @@ -533,10 +535,21 @@ hantro_queue_setup(struct vb2_queue *vq, unsigned int *num_buffers,
>                 return -EINVAL;
>         }
>
> +       /* The H264 decoder needs extra size on the output buffer. */
> +       if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE_RAW)
> +               extra_size0 = 128 * DIV_ROUND_UP(pixfmt->width, 16) *
> +                             DIV_ROUND_UP(pixfmt->height, 16);
> +

I wonder if this shouldn't be accounted for already in the sizeimage
returned by TRY_/S_FMT, so that the application can know the required
buffer size if it uses some external allocator and DMABUF memory type.
I know we had it like this in our downstream code, but it wasn't the
problem because we use minigbm, where we explicitly add the same
padding in the rockchip backend. Any thoughts?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
