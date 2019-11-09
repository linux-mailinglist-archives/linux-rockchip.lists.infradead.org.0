Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2118EF5F0A
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 Nov 2019 13:25:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybzFD2d2DlbZKBFLO4e0mWfH8qjd1yJRbof4MRtBDgQ=; b=n+kVfLexpeYyv2
	Ag7Ay7A4HRwhTrT/5f5ip8TEz9deixU9VzMkEIVOIP3kBSbcgwKKtRew7ywUs1wes+oYovPnb2KL0
	56vwzCp5szUc2h4y4jeV3/FV3L/OnMHDdeOzBCzHoHb3CDwSDLcXodc8CtQDOsRq3+TZLoVNZ3Ckr
	AGBF2uqoI0OQUhwG3FL14cHurhkP1B8tEcQUkS3yL0tG9e/x6Ct+hBH6ssvDdsB7yeL1HqWmXVm9i
	F+aBi+SE2SxUbGIBeSQYmV6iXTyrFWLuCJpraU8+sT3I19v6TOh1u+IW6Bt7VutwQUcZ+8cZUzXq7
	0BUaoByYXrJHwgK9PZWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTPo3-0000yp-0r; Sat, 09 Nov 2019 12:25:31 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTPnz-0000xr-2D
 for linux-rockchip@lists.infradead.org; Sat, 09 Nov 2019 12:25:28 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id TPnqiwlDfPMT8TPntiPHlH; Sat, 09 Nov 2019 13:25:21 +0100
Subject: Re: [PATCH v2 for 5.4 1/4] media: hantro: Fix s_fmt for dynamic
 resolution changes
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Tomasz Figa <tfiga@chromium.org>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-2-ezequiel@collabora.com>
 <20191108111950.717db5ce@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <92cba217-4f14-a397-2ae5-8797cc931703@xs4all.nl>
Date: Sat, 9 Nov 2019 13:25:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108111950.717db5ce@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfGROjpkO0yiW5w03/71ux9rahKrV6cbjn+rBQvdzxxKlAd7Apz3kgqlYfMSaM1X1AvSlGY3BWUgDm2hTsMIcGiExG2JBDG3xI6ZsWrc5KlTEjv23wVcv
 WF9ZdhSlkpY5k+mO+RL4XL7md1ZuC9fXMy8Q9AEKLR+XiF4X+0nffcwAmBmwEdjSmw8fTTefifJR1jG89TiUph/j5Z21Vg7Yich3xBRWbxJWlKo6rn0MN6m1
 DS66pXm5P8SorW5smWfWEJ+0irwuKDyy1iR0Rszen18TNrV89Dz8BpIpLG4YnCJjkvi/CVRXsYGlIEDvSmo8upcLL2ihShFyt7JNrYYrFWZSFmaUm1cPodnk
 JXbP3DSSNvH00fdlajLwwRckkZnSPPL6znivxV9QQmEsqctTQ86SVHcFkfk/AjQqxehRpaMIGIDe8watMNGZ1YgdS78fmAsbzhDGEx+4/dyD702MQ4NrNhGA
 lkj5WDBtppIXir0H3UWU/Jnn5Lh2ZnDZoU66cm9f1CdwpMJe+K7IrgOnBOvP37aqeZkXbIjaHAxdvQU9gkdOirstHLsYRah9VVs0O98BSIjg6qoO4pjZyasz
 H0XXiWJywHgOFKzKNgy/mWaMIc+/PxOXfOsK/xA9wITtGnTo7QUSPQJQqYDLaaSPSnY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_042527_270109_8F761FF2 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: fbuergisser@chromium.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 11/8/19 11:19 AM, Boris Brezillon wrote:
> On Mon,  7 Oct 2019 14:45:02 -0300
> Ezequiel Garcia <ezequiel@collabora.com> wrote:
> 
>> Commit 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
>> changed the conditions under S_FMT was allowed for OUTPUT
>> CAPTURE buffers.
>>
>> However, and according to the mem-to-mem stateless decoder specification,
>> in order to support dynamic resolution changes, S_FMT should be allowed
>> even if OUTPUT buffers have been allocated.
>>
>> Relax decoder S_FMT restrictions on OUTPUT buffers, allowing a resolution
>> modification, provided the pixel format stays the same.
>>
>> Tested on RK3288 platforms using ChromiumOS Video Decode/Encode Accelerator Unittests.
>>
>> Fixes: 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
>> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
>> --
>> v2:
>> * Call try_fmt_out before using the format,
>>   pointed out by Philipp.
>>
>>  drivers/staging/media/hantro/hantro_v4l2.c | 28 +++++++++++++++-------
>>  1 file changed, 19 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
>> index 3dae52abb96c..586d243cc3cc 100644
>> --- a/drivers/staging/media/hantro/hantro_v4l2.c
>> +++ b/drivers/staging/media/hantro/hantro_v4l2.c
>> @@ -367,19 +367,26 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
>>  {
>>  	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
>>  	struct hantro_ctx *ctx = fh_to_ctx(priv);
>> +	struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
>>  	const struct hantro_fmt *formats;
>>  	unsigned int num_fmts;
>> -	struct vb2_queue *vq;
>>  	int ret;
>>  
>> -	/* Change not allowed if queue is busy. */
>> -	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
>> -	if (vb2_is_busy(vq))
>> -		return -EBUSY;
>> +	ret = vidioc_try_fmt_out_mplane(file, priv, f);
>> +	if (ret)
>> +		return ret;
>>  
>>  	if (!hantro_is_encoder_ctx(ctx)) {
>>  		struct vb2_queue *peer_vq;
>>  
>> +		/*
>> +		 * In other to support dynamic resolution change,
> 
> 		      ^ order
> 
>> +		 * the decoder admits a resolution change, as long
>> +		 * as the pixelformat remains. Can't be done if streaming.
>> +		 */
>> +		if (vb2_is_streaming(vq) || (vb2_is_busy(vq) &&
>> +		    pix_mp->pixelformat != ctx->src_fmt.pixelformat))
>> +			return -EBUSY;
> 
> Sorry to chime in only now, but I'm currently looking at the VP9 spec
> and it seems the resolution is allowed to change dynamically [1] (I
> guess the same applies to VP8). IIU the spec correctly, coded frames
> using the new resolution can reference decoded frames using the old
> one (can be higher or lower res BTW). If we force a streamoff to change
> the resolution (as seems to be the case here), we'll lose those ref
> frames (see the hantro_return_bufs() in stop streaming), right?
> Hans, Tomasz, any idea how this dynamic resolution change could/should
> be supported?

As Tomasz also mentioned, supporting this is much more work, and probably
requires new streaming ioctls.

In the meantime I think this patch is fine (with the typo fixed, I can do
that), so is it OK if I merge this?

Regards,

	Hans

> 
>>  		/*
>>  		 * Since format change on the OUTPUT queue will reset
>>  		 * the CAPTURE queue, we can't allow doing so
>> @@ -389,12 +396,15 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
>>  					  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
>>  		if (vb2_is_busy(peer_vq))
>>  			return -EBUSY;
>> +	} else {
>> +		/*
>> +		 * The encoder doesn't admit a format change if
>> +		 * there are OUTPUT buffers allocated.
>> +		 */
>> +		if (vb2_is_busy(vq))
>> +			return -EBUSY;
>>  	}
>>  
>> -	ret = vidioc_try_fmt_out_mplane(file, priv, f);
>> -	if (ret)
>> -		return ret;
>> -
>>  	formats = hantro_get_formats(ctx, &num_fmts);
>>  	ctx->vpu_src_fmt = hantro_find_format(formats, num_fmts,
>>  					      pix_mp->pixelformat);
> 
> [1] Section "5.16 Reference frame scaling" of
>     https://storage.googleapis.com/downloads.webmproject.org/docs/vp9/vp9-bitstream-specification-v0.6-20160331-draft.pdf
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
