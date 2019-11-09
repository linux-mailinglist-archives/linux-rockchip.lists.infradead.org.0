Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929A7F5EF3
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 Nov 2019 13:18:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PodTjmXJIiLRwIAFmSQY6o2VMVYcQKZ9J4DhIMXlYac=; b=G3l8zC9HI7hGYg
	gNNcR2387ISZgqNVf5DtDrXvJ9MODAe4b7/9SY47eAR4ymWd6ytuVtrWoC/jIZJfd2Mq7Jk0+ROS0
	nyUZx29Ueo4tsmXJufg1ITDklzsxIVZsKkecQgPhnnFC+mDPSbvTnHLRavqY4hwLTB4BfEZKe8lm7
	LKgSjGieG78ySr3AlRb0zqU+2qVZRP2QGS5OmiasuxBLrU8xP4NYiQv6mpSr5H3LF/8PmpEiZKX0Q
	NagmvWGH51i+HyZtAj4wXwePSQWaNbIIB6qC3zn/rAdd1wQ1B7/mpcTa645yYNuP2F6o1bqdeuikk
	7m+w7JJuzUihuDGvaZ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTPh0-00062m-PW; Sat, 09 Nov 2019 12:18:14 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTPgx-00061x-4b
 for linux-rockchip@lists.infradead.org; Sat, 09 Nov 2019 12:18:13 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id TPgliwjdHPMT8TPgoiPHDu; Sat, 09 Nov 2019 13:18:03 +0100
Subject: Re: [PATCH v2 for 5.4 1/4] media: hantro: Fix s_fmt for dynamic
 resolution changes
To: Tomasz Figa <tfiga@chromium.org>,
 Boris Brezillon <boris.brezillon@collabora.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-2-ezequiel@collabora.com>
 <20191108111950.717db5ce@collabora.com>
 <CAAFQd5DiAnP5pc4SoPV3aDM7k71wYmPtAHzN7thquf47EOioHw@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <64b62284-ec32-41f4-21cb-883c1ee293e4@xs4all.nl>
Date: Sat, 9 Nov 2019 13:17:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAAFQd5DiAnP5pc4SoPV3aDM7k71wYmPtAHzN7thquf47EOioHw@mail.gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfM/1PjcWtzrcPF6jTGFZRWWxxyB++4M0JKfQwTihar4cCrJwqprAeEwDvyGobuvdyWqWveLOb8MyhPoGGDDA6ark21iEDnowfD5iTMsx1lhIxM/c3dpY
 7Ix3Fzv7KabSYU0zxTruZD9q84RNlGjSc5dQ/YmGvmJhrcA3DeTnjLjGmzAyNRN7s2UJFReO381NgGs3urLcIHjb9CbUk6qN/z2JGLi14ghPvbvU0wWvc/CL
 +J2LKziz3gGfu3KwOblTjAXdqxpGqfQlPs6YnGgEtNqx0XfcMWXd+by6E3KKL7zmdO2rBrtoN8Rvttl2WJ7Y+5gNwCHYPWaEXYgvMlHlr3hbilRj/hEDkWtg
 KvnaWe0OpASyQgcrXDJbnt7EMAJsdW+D6BL6vTtPWQ+EhxNQnZZzT1qRdtNb6i7DkChSvJQmPVIABIUpyoH78K5ci7Chr5OAGpcttKCXYrxwXX9/nDd+o7lO
 iA1rQ2oPXRE/Y5Gfog81cH0f2J19DcyaIaScoKM/doSIoBwsnjTqrXD2BNFj8ntyBkSbUmiKuRv0NXsQOWvSkiDWnTzyfxI3KyDkSIc0NOVGOLzTH8nm5esN
 IzxQn5J31v8uOiJ71GMk5kwTdjxKPWZJtRAZLm9FfyWWiGNnjnSPRre49EPndabf3iQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_041811_339752_AF3857B0 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
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
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 11/8/19 12:52 PM, Tomasz Figa wrote:
> On Fri, Nov 8, 2019 at 7:20 PM Boris Brezillon
> <boris.brezillon@collabora.com> wrote:
>>
>> On Mon,  7 Oct 2019 14:45:02 -0300
>> Ezequiel Garcia <ezequiel@collabora.com> wrote:
>>
>>> Commit 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
>>> changed the conditions under S_FMT was allowed for OUTPUT
>>> CAPTURE buffers.
>>>
>>> However, and according to the mem-to-mem stateless decoder specification,
>>> in order to support dynamic resolution changes, S_FMT should be allowed
>>> even if OUTPUT buffers have been allocated.
>>>
>>> Relax decoder S_FMT restrictions on OUTPUT buffers, allowing a resolution
>>> modification, provided the pixel format stays the same.
>>>
>>> Tested on RK3288 platforms using ChromiumOS Video Decode/Encode Accelerator Unittests.
>>>
>>> Fixes: 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
>>> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
>>> --
>>> v2:
>>> * Call try_fmt_out before using the format,
>>>   pointed out by Philipp.
>>>
>>>  drivers/staging/media/hantro/hantro_v4l2.c | 28 +++++++++++++++-------
>>>  1 file changed, 19 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
>>> index 3dae52abb96c..586d243cc3cc 100644
>>> --- a/drivers/staging/media/hantro/hantro_v4l2.c
>>> +++ b/drivers/staging/media/hantro/hantro_v4l2.c
>>> @@ -367,19 +367,26 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
>>>  {
>>>       struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
>>>       struct hantro_ctx *ctx = fh_to_ctx(priv);
>>> +     struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
>>>       const struct hantro_fmt *formats;
>>>       unsigned int num_fmts;
>>> -     struct vb2_queue *vq;
>>>       int ret;
>>>
>>> -     /* Change not allowed if queue is busy. */
>>> -     vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
>>> -     if (vb2_is_busy(vq))
>>> -             return -EBUSY;
>>> +     ret = vidioc_try_fmt_out_mplane(file, priv, f);
>>> +     if (ret)
>>> +             return ret;
>>>
>>>       if (!hantro_is_encoder_ctx(ctx)) {
>>>               struct vb2_queue *peer_vq;
>>>
>>> +             /*
>>> +              * In other to support dynamic resolution change,
>>
>>                       ^ order
>>
>>> +              * the decoder admits a resolution change, as long
>>> +              * as the pixelformat remains. Can't be done if streaming.
>>> +              */
>>> +             if (vb2_is_streaming(vq) || (vb2_is_busy(vq) &&
>>> +                 pix_mp->pixelformat != ctx->src_fmt.pixelformat))
>>> +                     return -EBUSY;
>>
>> Sorry to chime in only now, but I'm currently looking at the VP9 spec
>> and it seems the resolution is allowed to change dynamically [1] (I
>> guess the same applies to VP8). IIU the spec correctly, coded frames
>> using the new resolution can reference decoded frames using the old
>> one (can be higher or lower res BTW). If we force a streamoff to change
>> the resolution (as seems to be the case here), we'll lose those ref
>> frames (see the hantro_return_bufs() in stop streaming), right?
>> Hans, Tomasz, any idea how this dynamic resolution change could/should
>> be supported?
> 
> The same problem applies to stateful decoders as well. This is an
> inherent limitation of the current V4L2 API. To handle this kind of
> streams we would have to make the format a per-buffer parameter,
> rather than per-queue as it is defined currently.

This would be interesting to implement in new streaming ioctls.

There are more reasons besides codec support why you would want that
(i.e. a resolution change on an HDMI input). It's kind of supported
since you can allocate larger buffers than needed for the current format,
but currently there is no way to see when a new resolution is received.

Related to this is the fact that while you can add new buffers on the
fly (CREATE_BUFS), you can't delete unused buffers. Also, the max number
of buffers (32) is too small for some of the more advanced scenarios.

This really needs to be addressed as well in new streaming ioctls.

Regards,

	Hans

> 
> Best regards,
> Tomasz
> 
>>
>>>               /*
>>>                * Since format change on the OUTPUT queue will reset
>>>                * the CAPTURE queue, we can't allow doing so
>>> @@ -389,12 +396,15 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
>>>                                         V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
>>>               if (vb2_is_busy(peer_vq))
>>>                       return -EBUSY;
>>> +     } else {
>>> +             /*
>>> +              * The encoder doesn't admit a format change if
>>> +              * there are OUTPUT buffers allocated.
>>> +              */
>>> +             if (vb2_is_busy(vq))
>>> +                     return -EBUSY;
>>>       }
>>>
>>> -     ret = vidioc_try_fmt_out_mplane(file, priv, f);
>>> -     if (ret)
>>> -             return ret;
>>> -
>>>       formats = hantro_get_formats(ctx, &num_fmts);
>>>       ctx->vpu_src_fmt = hantro_find_format(formats, num_fmts,
>>>                                             pix_mp->pixelformat);
>>
>> [1] Section "5.16 Reference frame scaling" of
>>     https://storage.googleapis.com/downloads.webmproject.org/docs/vp9/vp9-bitstream-specification-v0.6-20160331-draft.pdf


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
