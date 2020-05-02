Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D6B1C28BA
	for <lists+linux-rockchip@lfdr.de>; Sun,  3 May 2020 00:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AYFp4pcDurjgD9TryuxhOPKGvCLMK3VR6vvhDXyb6M=; b=XvU8vSasFMz2JE
	oIMvm3Z8J+g+Ml9sk2urkt49xPbpCJyEjF/GVU9rPdAvenG+3mn0+GjyZIhhULWbIrwsN86WwzzSc
	xqiZ940T/dGMbevVwvrPHcrjZupDY8weBrcMI7VCt8VBVxuxh5KfQmDGpx2CqBfvWUtgaOfWXn2Vs
	SVMo0kzGGRG88+OPwinF9oQAPJL/Q/cPmC0mU0mXZ5xU3nuVaqsTxjn3Ev9ArJed7oMwOgQKVEVgY
	fbB/5VMx7FfDCoBY8Slp9qYrzD8l6V1kz6/daAtwOH5qO5VxUJX0fQ/HXJpKpEEdBhjRGBsucQIbM
	bKIqo6PcMrhREndTuQZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV137-0000Az-QY; Sat, 02 May 2020 22:55:57 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV134-0000AP-W6
 for linux-rockchip@lists.infradead.org; Sat, 02 May 2020 22:55:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 7A72E264D42
Message-ID: <db9fa91be8084fe9c87f263a4a97dc38d46f9bd1.camel@collabora.com>
Subject: Re: [PATCH v2 2/3] media: uapi: Add VP9 stateless decoder controls
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>
Date: Sat, 02 May 2020 19:55:39 -0300
In-Reply-To: <20200502203707.402ea3cd@collabora.com>
References: <20200410115113.31728-1-ezequiel@collabora.com>
 <20200410115113.31728-3-ezequiel@collabora.com>
 <9126475c-275d-71ab-0308-6ae85e22446b@xs4all.nl>
 <bf475e70cca6f9ebf645aed51276e57668eaf43b.camel@collabora.com>
 <20200502203707.402ea3cd@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_155555_159541_5B8083EB 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

+Nicolas

On Sat, 2020-05-02 at 20:37 +0200, Boris Brezillon wrote:
> On Fri, 01 May 2020 13:57:49 -0300
> Ezequiel Garcia <ezequiel@collabora.com> wrote:
> 
> > > > +
> > > > +.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
> > > > +
> > > > +.. flat-table:: enum v4l2_vp9_reset_frame_context
> > > > +    :header-rows:  0
> > > > +    :stub-columns: 0
> > > > +    :widths:       1 2
> > > > +
> > > > +    * - ``V4L2_VP9_RESET_FRAME_CTX_NONE``
> > > > +      - Do not reset any frame context.
> > > > +    * - ``V4L2_VP9_RESET_FRAME_CTX_NONE_ALT``
> > > > +      - Do not reset any frame context. This is an alternative value for
> > > > +        V4L2_VP9_RESET_FRAME_CTX_NONE.  
> > > 
> > > Add `` around V4L2_VP9_RESET_FRAME_CTX_NONE.
> > >   
> > 
> > Hm, now that I look closer, what's the point
> > of having the NONE_ALT in our uAPI if it
> > has same meaning as NONE?
> > 
> > I think it can be removed.
> 
> The intent was to match the spec so that one can pass the value
> extracted from the bitstream directly.
> 
> > > I got several smatch warnings:
> > > 
> > > smatch: ERRORS
> > > drivers/media/v4l2-core/v4l2-ctrls.c:1880 validate_vp9_frame_decode_params() warn: was && intended here instead of ||?
> > > 
> > > (Commented on this ^^^ one above)
> > > 
> > > drivers/staging/media/rkvdec/rkvdec-vp9.c:426 init_intra_only_probs() error: buffer overflow 'ptr' 9 <= 69
> > > drivers/staging/media/rkvdec/rkvdec-vp9.c:1478 rkvdec_vp9_done() error: potentially dereferencing uninitialized 'ctrl'.
> > > drivers/staging/media/rkvdec/rkvdec-vp9.c:1483 rkvdec_vp9_done() error: uninitialized symbol 'dec_dst_buf'.
> > > drivers/staging/media/rkvdec/rkvdec-vp9.c:941:6: warning: variable 'ret' set but not used [-Wunused-but-set-variable]
> > > drivers/staging/media/rkvdec/rkvdec-vp9.c:1466:40: warning: variable 'fctx' set but not used [-Wunused-but-set-variable]
> > >   
> > 
> > Oh, I'll run smatch and fix them all.
> 
> Oops!



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
