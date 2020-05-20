Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C89E1DB4AE
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 May 2020 15:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfTT3pcKd07cxVCWTgmjLb/kVGfFXu1p0BK8r+rtYr0=; b=IGkn0fyk4eiQXj
	787YBCAU18tL2uSmp0qOu7GXSV0q9GyLGuXjP0zGD7Ad9xBjPDumAbyN2iXHnPG7z6C/OwwsQg72g
	/OFjpKboCA/NoTbf7FC4Mc4J1EeYUtrL7djFpHXnOr8u9Lq7expGot8tO0g9kX5sOsKY04jT1EDT3
	zbAo0empM9JanEAOBMiO4eNgYkahgD5+Oot/dKA4Jv6hT4KwtyDh5RyxDZSTM34vNR0zo7naKlOlA
	NH+08/Ezt+HuB2/7Q5ZcqYwujMSPU5Fedcz2dpn5eunxIxPoRsWiZA1GX84bt3k1GiaA6B9gG0G9P
	km8jWxvHIag18C2CXvEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOWm-0000Se-GD; Wed, 20 May 2020 13:12:56 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbOWj-0000Rb-Cb
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 13:12:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 110E02A2C40
Message-ID: <4182e7477c43e6b5d93311de4b86f8274a0913a6.camel@collabora.com>
Subject: Re: [PATCH v4 1/3] media: rkvdec: Fix .buf_prepare
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Wed, 20 May 2020 10:12:40 -0300
In-Reply-To: <2c69a8d6-3402-15e8-1b19-49b8591ae1d8@xs4all.nl>
References: <20200518174011.15543-1-ezequiel@collabora.com>
 <20200518174011.15543-2-ezequiel@collabora.com>
 <2c69a8d6-3402-15e8-1b19-49b8591ae1d8@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_061253_553962_A79BB25C 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 gustavo.padovan@collabora.com, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 2020-05-20 at 15:07 +0200, Hans Verkuil wrote:
> On 18/05/2020 19:40, Ezequiel Garcia wrote:
> > The driver should only set the payload on .buf_prepare
> > if the buffer is CAPTURE type, or if an OUTPUT buffer
> > has a zeroed payload.
> > 
> > Fix it.
> > 
> > Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  drivers/staging/media/rkvdec/rkvdec.c | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> > index 225eeca73356..4df2a248ab96 100644
> > --- a/drivers/staging/media/rkvdec/rkvdec.c
> > +++ b/drivers/staging/media/rkvdec/rkvdec.c
> > @@ -456,7 +456,15 @@ static int rkvdec_buf_prepare(struct vb2_buffer *vb)
> >  		if (vb2_plane_size(vb, i) < sizeimage)
> >  			return -EINVAL;
> >  	}
> > -	vb2_set_plane_payload(vb, 0, f->fmt.pix_mp.plane_fmt[0].sizeimage);
> > +
> > +	/*
> > +	 * Buffer's bytesused is written by the driver for CAPTURE buffers,
> > +	 * or if the application passed zero bytesused on an OUTPUT buffer.
> > +	 */
> > +	if (!V4L2_TYPE_IS_OUTPUT(vq->type) ||
> > +	    (V4L2_TYPE_IS_OUTPUT(vq->type) && !vb2_get_plane_payload(vb, 0)))
> > +		vb2_set_plane_payload(vb, 0,
> > +				      f->fmt.pix_mp.plane_fmt[0].sizeimage);
> 
> This should just be:
> 
> 	if (!V4L2_TYPE_IS_OUTPUT(vq->type))
> 		vb2_set_plane_payload(vb, 0, f->fmt.pix_mp.plane_fmt[0].sizeimage);
> 
> If the application passes 0 as bytesused, then 1) a warning will be generated
> by the v4l2 core and 2) the v4l2 core will set bytesused to the length of the
> buffer. See vb2_fill_vb2_v4l2_buffer() in videobuf2-v4l2.c.
> 
> Some old drivers explicitly allow bytesused to be 0 for an output queue to
> signal end-of-stream, but that's only supported if the allow_zero_bytesused
> flag is set in the vb2_queue, and that shall not be used for new drivers
> since it is deprecated functionality.
> 

Ah, good catch. I'll get you a v5.

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
