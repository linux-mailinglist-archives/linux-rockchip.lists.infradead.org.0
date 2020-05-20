Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5891DB492
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 May 2020 15:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14t9K0DpOL/fRO4MRMrP8Tcya1Dh4ztdAVia5Hrjxk8=; b=gQEECUcYqFSiIH
	7PEeNsPB81G50+XS1fgZYX4aFPDAwxxYqRJ7eyl/S4VRJOOlsSR8oXTL5wVvlirHFdOxZbBxPoygn
	BfHDaFAlIkYMzVwT4m+5b3vc1qtw2ASYrHBnokmCQgyPuma2RIE2uwF7OPieZ0FyNl9orsd03jeiO
	j1XhZiIwTQfkyjxi+W/UV2S2IooroFkhFf/Y3dXdLKT3D7wVnuI7OEzOI4TvYR++6ZJH2BMfaq73h
	hc5S/f9HpaYmLkSP0dSt2sSQjv+4RzVrYsE4SmUB0R3197xPY1xGWGhLx/+0Qo8sxh9XKFnba/qv/
	8ABtZPfdu8qBNJxBPH6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbORd-0005pD-Uv; Wed, 20 May 2020 13:07:37 +0000
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbORZ-0005ns-Lt
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 13:07:35 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id bOREjbq85dPgTbORHjMclh; Wed, 20 May 2020 15:07:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1589980042; bh=rYS3eL4X6aw5M0pkKgGOVqaY9OT7/X7gkx5eI9SDVq4=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=PRmVuI4dDLKTdCWyJ3fnxM+PQgO9D41hALUvt4jxGKKkwvcgAbMpJz0rvmMac/S9z
 uGuazWORDK0P/ZAyu1anDAW8McjKHfi0sgRq5jdYHwiAlY2rjIHz9g2sUz0ttkHwdd
 tYerv2gdaS7pjYqKsgupKOUpaldz98Fd1GsAFOEsr7vS7gc6sNbx3iqwQuJkuiyjxB
 3qR/+0TWrILMfCvAP1bskAwI++DDIFKAjL8iRbmpqvg+8WmHkFEzVtNY1d6XUgtB3t
 cKIzAo8UkGAvJ6IisUtwneeLsDxTUggWW7Q/N97XdD5Ej5ugVPFbitwnQVavw3SKUt
 P7NDZvCcGKDEQ==
Subject: Re: [PATCH v4 1/3] media: rkvdec: Fix .buf_prepare
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200518174011.15543-1-ezequiel@collabora.com>
 <20200518174011.15543-2-ezequiel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <2c69a8d6-3402-15e8-1b19-49b8591ae1d8@xs4all.nl>
Date: Wed, 20 May 2020 15:07:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200518174011.15543-2-ezequiel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfNvqZFKA72/EsLonoJeUejdO8KU4dUjjbTEntSsfRDJyM4Fy0SsUFVINMgvprIi+w7wIlbWQtX8x6c6Ll5Q8P4s0UDexWF8/r5UsPL4XnkC5l2GbF8ja
 7xgONG2aEx1/RzqPdh0tXuyeFW4gycq9xFvsuwAadwSmsvGpRc7CHoa/Gg1qof85YagOiPTCDYLeS3LMy8PX/36BePzHZInu/bVhFjQwRgGsT51qi9ffJwda
 r0s8xKc5WEn0ng17m4AuA6HrZS1+Vtxza9G2xmYE3WnkSDpKvk2H8MPaFCKxlFxW1/LELu1+K+5oDX1JwZBYTVuZIX616X3OL6tpvsq7GH/T99jYd9L5AjjA
 qeEe6FdrSGaQGlWTcIk9JywaiD6Xg5D0auCISdRYxxDjpCn3hwIF+HtiDWtuiY1AOZtVGiUhMVPs4aJzZoFmhTkP3LJXhEqjr4cSh49W8UjDLz6nocWObbJA
 2neiSlz6cxCVbFyNPIgGfoIYRkTQysutQKzmh3kmC5UKcYgCFgtgidioQo6ZejXEwhFnFXaNo/WUrbd+wq/6gG3GGmjSqOkT5+ZL1Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_060733_871338_D41E1A03 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.21 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.21 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 18/05/2020 19:40, Ezequiel Garcia wrote:
> The driver should only set the payload on .buf_prepare
> if the buffer is CAPTURE type, or if an OUTPUT buffer
> has a zeroed payload.
> 
> Fix it.
> 
> Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 225eeca73356..4df2a248ab96 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -456,7 +456,15 @@ static int rkvdec_buf_prepare(struct vb2_buffer *vb)
>  		if (vb2_plane_size(vb, i) < sizeimage)
>  			return -EINVAL;
>  	}
> -	vb2_set_plane_payload(vb, 0, f->fmt.pix_mp.plane_fmt[0].sizeimage);
> +
> +	/*
> +	 * Buffer's bytesused is written by the driver for CAPTURE buffers,
> +	 * or if the application passed zero bytesused on an OUTPUT buffer.
> +	 */
> +	if (!V4L2_TYPE_IS_OUTPUT(vq->type) ||
> +	    (V4L2_TYPE_IS_OUTPUT(vq->type) && !vb2_get_plane_payload(vb, 0)))
> +		vb2_set_plane_payload(vb, 0,
> +				      f->fmt.pix_mp.plane_fmt[0].sizeimage);

This should just be:

	if (!V4L2_TYPE_IS_OUTPUT(vq->type))
		vb2_set_plane_payload(vb, 0, f->fmt.pix_mp.plane_fmt[0].sizeimage);

If the application passes 0 as bytesused, then 1) a warning will be generated
by the v4l2 core and 2) the v4l2 core will set bytesused to the length of the
buffer. See vb2_fill_vb2_v4l2_buffer() in videobuf2-v4l2.c.

Some old drivers explicitly allow bytesused to be 0 for an output queue to
signal end-of-stream, but that's only supported if the allow_zero_bytesused
flag is set in the vb2_queue, and that shall not be used for new drivers
since it is deprecated functionality.

Regards,

	Hans

>  	return 0;
>  }
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
