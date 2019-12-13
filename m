Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F1C11E638
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 16:10:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VbJPKZBBkI1fCV3EkNzNFV2WLMflkd1z6inMwI5zRfQ=; b=OmtVeU5TH9rEG3
	7uejtCvIWcyVA4K1l6BDhCdwBr9Ud3hhLSkfiOz94fbr1t7NQyYyCwBNNbINuB239pdZES1y0PezI
	NbL5bHeG2r8YmNKdcsLkuUUdePlsOjnWEIqqyf+uAPo/1SdvvF/qXyzrZvA8k07MXldCOtN4cfq4a
	Mcw4w4KuED5HDa/Qfdi1TL8eoAzigxwiG4XgpvSbsLFDVIvpkFvV66II7gyYf0uvlXy4u3O96/0SH
	+qJsOuoANr+puPzXbdxY+rL0+XtvrWHnrqP6LHvfySXNgGqhpxuL85IYkOcX5iNZInUoD+r/7W0oX
	oGh6Dm1W5fpzMbXk1k2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmZy-0001g1-CY; Fri, 13 Dec 2019 15:10:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmZt-0001AW-Te
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 15:10:03 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 312F7E00;
 Fri, 13 Dec 2019 16:09:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1576249785;
 bh=o0CHrYc/I6WkpvTk7+BesHWKBfYO6bupATH/o75dbwU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mDAhW94IwncfLplmU4vn8//7eN/1PBQpAfRa6g+02MsXGWgvOlLAWSlNlB5ip3tyw
 7jySM6NlCLHobkLpS4V2XvoClJQiu4zmNpvXFxOkdIfEAFaKiTXrdx+jFCImi4u4Hb
 lalLOR5/uDbq2GZcZN5F78GoizUvG8WavsE1/5lM=
Date: Fri, 13 Dec 2019 17:09:35 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 1/7] media: vb2: Add a helper to get the vb2 buffer
 attached to a request
Message-ID: <20191213150935.GC24654@pendragon.ideasonboard.com>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-2-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213125414.90725-2-boris.brezillon@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_071002_424849_C95BDD51 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Boris,

On Fri, Dec 13, 2019 at 01:54:08PM +0100, Boris Brezillon wrote:
> vb2_request_get_buf() returns the N-th buffer attached to a media
> request.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
> Changes in v3:
> * None
> 
> Changes in v2:
> * Adjust the kernel doc as suggested by Hans
> ---
>  .../media/common/videobuf2/videobuf2-core.c   | 23 +++++++++++++++++++
>  include/media/videobuf2-core.h                | 11 +++++++++
>  2 files changed, 34 insertions(+)
> 
> diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
> index 4489744fbbd9..c4c7980dcb0d 100644
> --- a/drivers/media/common/videobuf2/videobuf2-core.c
> +++ b/drivers/media/common/videobuf2/videobuf2-core.c
> @@ -1416,6 +1416,29 @@ unsigned int vb2_request_buffer_cnt(struct media_request *req)
>  }
>  EXPORT_SYMBOL_GPL(vb2_request_buffer_cnt);
>  
> +struct vb2_buffer *vb2_request_get_buf(struct media_request *req,
> +				       unsigned int n)
> +{
> +	struct media_request_object *obj;
> +	struct vb2_buffer *buf = NULL;
> +	unsigned int nbufs = 0;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&req->lock, flags);
> +	list_for_each_entry(obj, &req->objects, list) {
> +		if (!vb2_request_object_is_buffer(obj) ||
> +		    nbufs++ < n)
> +			continue;
> +
> +		buf = container_of(obj, struct vb2_buffer, req_obj);
> +		break;
> +	}
> +	spin_unlock_irqrestore(&req->lock, flags);
> +
> +	return buf;
> +}
> +EXPORT_SYMBOL_GPL(vb2_request_get_buf);
> +
>  int vb2_core_prepare_buf(struct vb2_queue *q, unsigned int index, void *pb)
>  {
>  	struct vb2_buffer *vb;
> diff --git a/include/media/videobuf2-core.h b/include/media/videobuf2-core.h
> index a2b2208b02da..6206e25df764 100644
> --- a/include/media/videobuf2-core.h
> +++ b/include/media/videobuf2-core.h
> @@ -1225,4 +1225,15 @@ bool vb2_request_object_is_buffer(struct media_request_object *obj);
>   */
>  unsigned int vb2_request_buffer_cnt(struct media_request *req);
>  
> +/**
> + * vb2_request_get_buf() - return the buffer at index @idx
> + *
> + * @req:	the request.
> + * @n:		search for the Nth buffer in the req object list

It's not very clear to me what "n" is here. Wouldn't it be better to
pass the queue pointer instead, to get a buffer for a given queue ?

> + *
> + * Return a vb2 buffer or NULL if there's no buffer at the specified position
> + */
> +struct vb2_buffer *vb2_request_get_buf(struct media_request *req,
> +				       unsigned int n);
> +
>  #endif /* _MEDIA_VIDEOBUF2_CORE_H */

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
