Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224DB11E66B
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 16:22:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvxJzesQa+Hu/DrTgUlSB9Prb11XVo/Ccv8T3otSaxo=; b=TB1/2ojDvbPQ9n
	8WgJbBE1r2ddx9JdvgtHMOD1pkBvdrwIJStJSbKQ7pVOI86qCGtRk5WqCnNwBMzXdDsJsmqcIq0k8
	YFxOn0+yMMtAPpMkKM4fK7DwXac6uSHOO9DuSJ1uuWwfIf5OmxcKrVh/1lPSpxIOdSxq9bo5vYok9
	QJOne71AT1l5XVLMp5u7GygyMoT7/JBPdDq9l7QuIBJddh3c6LBmguxCXYorq97nOMEX+Pua3soQz
	J38PKXoTrhw9wpweaUZbmr4urof+jvc/Bvzp0kXDR+wKMR2UIT6g9asVlQK8h+JXI4OatJHf/taXJ
	ZIhdu5hd8qk5ravFEflg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmlO-0005qp-PY; Fri, 13 Dec 2019 15:21:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmlL-0005qB-2s
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 15:21:52 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A1DFD292A9A;
 Fri, 13 Dec 2019 15:21:48 +0000 (GMT)
Date: Fri, 13 Dec 2019 16:21:45 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v3 1/7] media: vb2: Add a helper to get the vb2 buffer
 attached to a request
Message-ID: <20191213162145.6bb10078@collabora.com>
In-Reply-To: <20191213150935.GC24654@pendragon.ideasonboard.com>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-2-boris.brezillon@collabora.com>
 <20191213150935.GC24654@pendragon.ideasonboard.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_072151_392257_D3992815 
X-CRM114-Status: GOOD (  19.13  )
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
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 17:09:35 +0200
Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:

> Hi Boris,
> 
> On Fri, Dec 13, 2019 at 01:54:08PM +0100, Boris Brezillon wrote:
> > vb2_request_get_buf() returns the N-th buffer attached to a media
> > request.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> > Changes in v3:
> > * None
> > 
> > Changes in v2:
> > * Adjust the kernel doc as suggested by Hans
> > ---
> >  .../media/common/videobuf2/videobuf2-core.c   | 23 +++++++++++++++++++
> >  include/media/videobuf2-core.h                | 11 +++++++++
> >  2 files changed, 34 insertions(+)
> > 
> > diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
> > index 4489744fbbd9..c4c7980dcb0d 100644
> > --- a/drivers/media/common/videobuf2/videobuf2-core.c
> > +++ b/drivers/media/common/videobuf2/videobuf2-core.c
> > @@ -1416,6 +1416,29 @@ unsigned int vb2_request_buffer_cnt(struct media_request *req)
> >  }
> >  EXPORT_SYMBOL_GPL(vb2_request_buffer_cnt);
> >  
> > +struct vb2_buffer *vb2_request_get_buf(struct media_request *req,
> > +				       unsigned int n)
> > +{
> > +	struct media_request_object *obj;
> > +	struct vb2_buffer *buf = NULL;
> > +	unsigned int nbufs = 0;
> > +	unsigned long flags;
> > +
> > +	spin_lock_irqsave(&req->lock, flags);
> > +	list_for_each_entry(obj, &req->objects, list) {
> > +		if (!vb2_request_object_is_buffer(obj) ||
> > +		    nbufs++ < n)
> > +			continue;
> > +
> > +		buf = container_of(obj, struct vb2_buffer, req_obj);
> > +		break;
> > +	}
> > +	spin_unlock_irqrestore(&req->lock, flags);
> > +
> > +	return buf;
> > +}
> > +EXPORT_SYMBOL_GPL(vb2_request_get_buf);
> > +
> >  int vb2_core_prepare_buf(struct vb2_queue *q, unsigned int index, void *pb)
> >  {
> >  	struct vb2_buffer *vb;
> > diff --git a/include/media/videobuf2-core.h b/include/media/videobuf2-core.h
> > index a2b2208b02da..6206e25df764 100644
> > --- a/include/media/videobuf2-core.h
> > +++ b/include/media/videobuf2-core.h
> > @@ -1225,4 +1225,15 @@ bool vb2_request_object_is_buffer(struct media_request_object *obj);
> >   */
> >  unsigned int vb2_request_buffer_cnt(struct media_request *req);
> >  
> > +/**
> > + * vb2_request_get_buf() - return the buffer at index @idx
> > + *
> > + * @req:	the request.
> > + * @n:		search for the Nth buffer in the req object list  
> 
> It's not very clear to me what "n" is here. Wouldn't it be better to
> pass the queue pointer instead, to get a buffer for a given queue ?

Yep, that would work too and would be much clearer. I'll do that,
thanks for the suggestion.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
