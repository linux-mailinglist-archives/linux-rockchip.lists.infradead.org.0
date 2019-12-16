Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D9F12005E
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 09:54:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7knoHjSnEhiBJFv0S+oNRuzl/TSMFsO+h8c1fiUy2A=; b=W+24ySp/rw/BAA
	KlBJ9Le1z1qa9epqaQM19/iPNR0NY9DiT2y1Za+Z2dKblcLOAS8eGDvuDpINlO+rwwU5wMelAMtLM
	6CGvo2H3PzCD9o+fVEvbJCy5H378exGql2L7HGUow8y0z9GfmPYFO6y2QKv8GhaYfwVYAh1lve4Gj
	8sh0PpflapzAUz4xf2CgGWj1Lc1jDP9fOhe2AKyuM/oocEeSTOzdz0tNAv8r8Wa3kLSLCF/Eojcj1
	BaMSTY5cfBkhTmiE3/e8ZMhCeuSYqw2uVHQfVexZL6y/f5uahqL53i5joAJYl+qYoT96yjDcbVS7D
	vqsOQiu8vjO9ypzewC2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igm9B-00034K-F4; Mon, 16 Dec 2019 08:54:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igm93-0002vp-Lr
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 08:54:27 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 08BAE28A017;
 Mon, 16 Dec 2019 08:54:22 +0000 (GMT)
Date: Mon, 16 Dec 2019 09:54:19 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Hugh Cole-Baker <sigmaris@gmail.com>
Subject: Re: [PATCH v3 4/7] media: hantro: h264: Use the generic H264
 reflist builder
Message-ID: <20191216095419.4dfb8501@collabora.com>
In-Reply-To: <24EFC68C-CF34-4D6E-8927-1CFA0CE81F45@gmail.com>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-5-boris.brezillon@collabora.com>
 <24EFC68C-CF34-4D6E-8927-1CFA0CE81F45@gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_005425_860112_0150D325 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 14 Dec 2019 15:46:35 +0000
Hugh Cole-Baker <sigmaris@gmail.com> wrote:

> Hi Boris,
> 
> > On 13 Dec 2019, at 12:54, Boris Brezillon <boris.brezillon@collabora.com> wrote:
> > 
> > Now that the core provides generic reflist builders, we can use them
> > instead of implementing our own.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> > Changes in v3:
> > * New patch
> > ---
> > drivers/staging/media/hantro/hantro_h264.c | 237 +--------------------
> > 1 file changed, 8 insertions(+), 229 deletions(-)
> > 
> > diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
> > index 568640eab3a6..d998272d20e6 100644
> > --- a/drivers/staging/media/hantro/hantro_h264.c
> > +++ b/drivers/staging/media/hantro/hantro_h264.c
> > @@ -11,7 +11,7 @@
> >  */
> > 
> > #include <linux/types.h>
> > -#include <linux/sort.h>
> > +#include <media/v4l2-h264.h>  
> 
> With this patch, CONFIG_VIDEO_HANTRO needs to depend on CONFIG_V4L2_H264,
> without that it can encounter linking errors due to missing symbols for
> v4l2_h264_init_reflist_builder, etc.

Oops, you're right (I didn't notice it since I had it selected by
CONFIG_VIDEO_ROCKCHIP_VDEC). I'll fix that in v4.

Thanks,

Boris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
