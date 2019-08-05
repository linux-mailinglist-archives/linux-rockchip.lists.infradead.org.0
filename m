Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962DD824FD
	for <lists+linux-rockchip@lfdr.de>; Mon,  5 Aug 2019 20:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yCtnlwNW+zktl5oaZ+lTwlmtqSIZcrpwU+TCDXj6ofE=; b=LpocQ6/mf9F2a4
	K2SZiYY0ngpi8Pirraeya25IWhdK/GKkSzRPj7rrD0j+IbO//nzRR/C2XinmVNBADmcotlWD6QTiP
	qtoJpOhIswqfot/w78TVBtV0Ev/ZWWe9HS2cESC3x4xhus1XFlhdFTGqcQ0fDWqLP4mezEZmSkCvu
	jg7v72gxxzDetXahrvcFdUlTUjRmi7SUx/YgUYjfSeM8cAn2s8wpcVQtCgqen0d6zy5nD0Ph0+qB5
	evYTUwmP+9m9l/MNzCkSvIlGqXSnpkfIGZjysWcgI0LMPx30q6clTObCJJFII9VWGNZhMjrJK5h1s
	uiOmL36+iunzqSSzfPHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huht3-0003dG-Nx; Mon, 05 Aug 2019 18:39:13 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhsy-0003cE-H5
 for linux-rockchip@lists.infradead.org; Mon, 05 Aug 2019 18:39:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E2FA8289EEF
Message-ID: <cf60476860b1691ac15c17bedeee3cb908d17faf.camel@collabora.com>
Subject: Re: [PATCH 7/9] media: hantro: Add core bits to support H264 decoding
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Tomasz Figa <tfiga@chromium.org>, Boris Brezillon
 <boris.brezillon@collabora.com>
Date: Mon, 05 Aug 2019 15:38:39 -0300
In-Reply-To: <CAHD77HksotqFBTE84rRM=DuNFX=YJPs=YnsuFkaN-pWUNCtoxA@mail.gmail.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-8-boris.brezillon@collabora.com>
 <CAHD77HksotqFBTE84rRM=DuNFX=YJPs=YnsuFkaN-pWUNCtoxA@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_113908_699028_8FFFDF2D 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hertz Wong <hertz.wong@rock-chips.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hey Tomasz,

On Thu, 2019-08-01 at 13:06 +0900, Tomasz Figa wrote:
> Hi Boris,
> 
> On Wed, Jun 19, 2019 at 9:15 PM Boris Brezillon
> <boris.brezillon@collabora.com> wrote:
> [snip]
> > @@ -533,10 +535,21 @@ hantro_queue_setup(struct vb2_queue *vq, unsigned int *num_buffers,
> >                 return -EINVAL;
> >         }
> > 
> > +       /* The H264 decoder needs extra size on the output buffer. */
> > +       if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE_RAW)
> > +               extra_size0 = 128 * DIV_ROUND_UP(pixfmt->width, 16) *
> > +                             DIV_ROUND_UP(pixfmt->height, 16);
> > +
> 
> I wonder if this shouldn't be accounted for already in the sizeimage
> returned by TRY_/S_FMT, so that the application can know the required
> buffer size if it uses some external allocator and DMABUF memory type.
> I know we had it like this in our downstream code, but it wasn't the
> problem because we use minigbm, where we explicitly add the same
> padding in the rockchip backend. Any thoughts?
> 

Nice catch. This should be fixed and accounted in TRY_FMT as you suggest.

Thanks,
Eze 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
