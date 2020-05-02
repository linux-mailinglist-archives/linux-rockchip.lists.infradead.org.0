Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710E91C27C3
	for <lists+linux-rockchip@lfdr.de>; Sat,  2 May 2020 20:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPX0kAUeu18uN0MxO4pS4B3Pn0cYu/QUwrOrlFiBbEY=; b=soPI24rBvqKMxj
	4EUKDe2X87tZs315QBz9z9I3ndCQ8ud1rFtXT9qwzCu3wFhCOzfAdylDF3dYTUwVZqQJwqa5P5sx2
	0V+RBPZGpg9ZUdzbvTX7sVSP+4Qqa91/BvavNcjF/bK/b0+5ZpcasBDYIZd9QFEC84Mh3h3ubz9BZ
	9HTGihcx3EFB6x1EAgykGnunBTbkWozpTTLU1epViMN6az3b/AvRk9zZc6FZEaiMzOeSvQPTJps/8
	E4RBgYEOOhcwpFvbenc0IQA8dMngJ5/aioF4Q93KkfK6KiLRqFO0Y/a3YT8Bj8UQjMuSm/dXoO989
	NEeTfD9KtxqbJIg4Cj5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUx0n-000496-3H; Sat, 02 May 2020 18:37:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUx0j-000482-HK
 for linux-rockchip@lists.infradead.org; Sat, 02 May 2020 18:37:15 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CD91C2683D0;
 Sat,  2 May 2020 19:37:10 +0100 (BST)
Date: Sat, 2 May 2020 20:37:07 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2 2/3] media: uapi: Add VP9 stateless decoder controls
Message-ID: <20200502203707.402ea3cd@collabora.com>
In-Reply-To: <bf475e70cca6f9ebf645aed51276e57668eaf43b.camel@collabora.com>
References: <20200410115113.31728-1-ezequiel@collabora.com>
 <20200410115113.31728-3-ezequiel@collabora.com>
 <9126475c-275d-71ab-0308-6ae85e22446b@xs4all.nl>
 <bf475e70cca6f9ebf645aed51276e57668eaf43b.camel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_113713_705060_F373249A 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 01 May 2020 13:57:49 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:

> > > +
> > > +.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
> > > +
> > > +.. flat-table:: enum v4l2_vp9_reset_frame_context
> > > +    :header-rows:  0
> > > +    :stub-columns: 0
> > > +    :widths:       1 2
> > > +
> > > +    * - ``V4L2_VP9_RESET_FRAME_CTX_NONE``
> > > +      - Do not reset any frame context.
> > > +    * - ``V4L2_VP9_RESET_FRAME_CTX_NONE_ALT``
> > > +      - Do not reset any frame context. This is an alternative value for
> > > +        V4L2_VP9_RESET_FRAME_CTX_NONE.  
> > 
> > Add `` around V4L2_VP9_RESET_FRAME_CTX_NONE.
> >   
> 
> Hm, now that I look closer, what's the point
> of having the NONE_ALT in our uAPI if it
> has same meaning as NONE?
> 
> I think it can be removed.

The intent was to match the spec so that one can pass the value
extracted from the bitstream directly.

> > 
> > I got several smatch warnings:
> > 
> > smatch: ERRORS
> > drivers/media/v4l2-core/v4l2-ctrls.c:1880 validate_vp9_frame_decode_params() warn: was && intended here instead of ||?
> > 
> > (Commented on this ^^^ one above)
> > 
> > drivers/staging/media/rkvdec/rkvdec-vp9.c:426 init_intra_only_probs() error: buffer overflow 'ptr' 9 <= 69
> > drivers/staging/media/rkvdec/rkvdec-vp9.c:1478 rkvdec_vp9_done() error: potentially dereferencing uninitialized 'ctrl'.
> > drivers/staging/media/rkvdec/rkvdec-vp9.c:1483 rkvdec_vp9_done() error: uninitialized symbol 'dec_dst_buf'.
> > drivers/staging/media/rkvdec/rkvdec-vp9.c:941:6: warning: variable 'ret' set but not used [-Wunused-but-set-variable]
> > drivers/staging/media/rkvdec/rkvdec-vp9.c:1466:40: warning: variable 'fctx' set but not used [-Wunused-but-set-variable]
> >   
> 
> Oh, I'll run smatch and fix them all.

Oops!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
