Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 488C8F5E81
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 Nov 2019 11:40:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUdncKyPkp5/9hTHeqIN+czs2fQH5TM8FnFDeIHEb3Y=; b=BBQ7OMMQO4TCIG
	D0N4bl6Vjw34iBtLFaZ8IXVAaCByJaqmpVwtWkEBgxEQpQP2+EuPTJY9cxb9LoNKC4gTn3MtEV+ZW
	R0UyNmXKXtHhShWwVFRr8NKSl0pLoar11xa3qtx5cbX0UFzIaB+snUOguf5I9/65YoFjOJl1L2DCI
	AUdM0nf5RrSrNtbccIjrMcxwc2iLCHJYJGfBSnfx+J6jbbvHrg21piBPRwl5o8PF2oES8zY6poLfq
	SApU+xIQOpe9Z15hYWCehtdC91KLVo1EHiHZ7Sk9hjoa3pmtJYfQZMFurquXSLPxKPKg78hNiTw56
	ToF3HPKRDODe46B5jmDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTOAi-0007Mg-QU; Sat, 09 Nov 2019 10:40:48 +0000
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTOAe-0007LJ-Rl
 for linux-rockchip@lists.infradead.org; Sat, 09 Nov 2019 10:40:46 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id TOAEiwNaYPMT8TOAIiP8zJ; Sat, 09 Nov 2019 11:40:32 +0100
Subject: Re: [PATCH v2 0/4] Enable Hantro G1 post-processor
To: Tomasz Figa <tfiga@chromium.org>, Ezequiel Garcia <ezequiel@collabora.com>
References: <20191003190833.29046-1-ezequiel@collabora.com>
 <CAAFQd5BgwDrc5Jy+EAnC91184aGJiuSkg2jMqOnAEHHfReoLgw@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <0b12f376-385b-0f68-abe1-1a0a21bb5a48@xs4all.nl>
Date: Sat, 9 Nov 2019 11:40:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAAFQd5BgwDrc5Jy+EAnC91184aGJiuSkg2jMqOnAEHHfReoLgw@mail.gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfEJ6CSxksz+D+FP+ZCJyZvVhgJHVZpbXw5vrSx3CeSF4erz7Y7YkVXDkoEOgj8xrSpDO19K39ZuvzaL8n75L72OwcUA7e9evnGA9VRyJUP704ZLzkr7w
 aFj6qw4Zn+ab3qUDQkvda6pmwxlOQT+9i5CludbEZzNqtwlmxxSemHhDXry2I/4x0Jc2qTq5hyFlzybL+iyyn0C+wJrOPtm30vdjlYZvznJLUl6BxNz7mcR2
 uzbUNarRpcyWL41diJI4kvM3Ks2UER7FRIE/Z03VvgBaKQj8QSuGZe74yFniwkV0kqWGLU5tWR2fAqlRj53rUb+EEnbiPdump89TngqWtnxu2EZX4uhimJRu
 aBkV8K+Wt1tAc3sQxlDOcbijjsWfsAf1WpMcPF5fzfOenNbIlNLVcxLgCs4tP7wT8DPcZXs3OpbJnkgL5kfGv+CRGqzaT+MVveuxkMce8ZMeJen8Hs2gGXHH
 UD60inxATXPv2uqOqNJrJx8Jmc9LLrqsC/zwWb9owftAHJ/o5kvwRU4wk7U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_024045_056313_A4E2F118 
X-CRM114-Status: GOOD (  23.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.24 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 10/4/19 8:07 AM, Tomasz Figa wrote:
> Hi Ezequiel,
> 
> On Fri, Oct 4, 2019 at 4:09 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>>
>> Hi all,
>>
>> The Hantro G1 VPU post-processor block can be pipelined with
>> the decoder hardware, allowing to perform operations such as
>> color conversion, scaling, rotation, cropping, among others.
>>
>> When the post-processor is enabled, the decoder hardware
>> gets its own set of NV12 buffers (the native decoder format),
>> and the post-processor is the owner of the CAPTURE buffers.
>>
>> This allows the application get processed
>> (scaled, converted, etc) buffers, completely transparently.
>>
>> This feature is implemented by exposing the post-processed pixel
>> formats on ENUM_FMT. When the application sets a pixel format
>> other than NV12, and if the post-processor is MC-linked,
>> the driver will make use of it, transparently.
>>
>> On this v2, the media controller API is now required
>> to "enable" (aka link, in topology jargon) the post-processor.
>> Therefore, applications now have to explicitly request this feature.
>>
>> For instance, the post-processor is enabled using the media-ctl
>> tool:
>>
>> media-ctl -l "'decoder':1 -> 'rockchip,rk3288-vpu-dec':0[0]"
>> media-ctl -l "'postproc':1 -> 'rockchip,rk3288-vpu-dec':0[1]"
>>
>> v4l2-ctl -d 1 --list-formats
>> ioctl: VIDIOC_ENUM_FMT
>>         Type: Video Capture Multiplanar
>>
>>         [0]: 'NV12' (Y/CbCr 4:2:0)
>>         [1]: 'YUYV' (YUYV 4:2:2)
>>
>> Patches 1 and 2 are simply cleanups needed to easier integrate the
>> post-processor. Patch 2 is a bit invasive, but it's a step
>> forward towards merging the implementation for RK3399 and RK3288.
>>
>> Patch 3 re-works the media-topology, making the decoder
>> a v4l2_subdevice, instead of a bare entity. This allows
>> to introduce a more accurate of the decoder+post-processor complex.
>>
>> Patch 4 introduces the post-processing support.
>>
>> This is tested on RK3288 platforms with MPEG-2, VP8 and
>> H264 streams, decoding to YUY2 surfaces. For now, this series
>> is only adding support for NV12-to-YUY2 conversion.
>>
>> The design and implementation is quite different from v1:
>>
>> * The decoder->post-processor topology is now exposed
>>   explicitly and applications need to configure the pipeline.
>>   By default, the decoder is enabled and the post-processor
>>   is disabled.
>>
> 
> First of all, thanks for working on this. While from Chromium point of
> view there isn't any practical use case for this feature, it could
> possibly be valuable for some other platforms.
> 
> I still see a problem with the current design. Mem-to-mem decoders are
> commonly used in a multi-instance fashion, but media topology is
> global. That means that when having two applications on the system
> decoding their own videos, one might be stepping on the other by
> changing the topology.
> 
> I believe that if we want this to be really usable, we would need to
> make the media topology per instance, but that's a significant change
> to the media subsystem. Maybe we could pursue the other options I
> suggested in the previous revision instead, like ordering the formats
> returned by enum_fmt by native first and adding format flags that
> would tell the userspace that the format can have some performance
> and/or power penalty?

I discussed this with Ezequiel in Lyon, and my preference is also to
not rely on the media controller, but instead order the formats with
the native formats first, followed by the formats that need this additional
processing step. A format flag can be added, but I feel that it is better
to wait with that until it is clear that there is a real need for it.

It would be good to document in the ENUM_FMT ioctl that formats that
require additional processing are at the end of the format list.

Ezequiel, I'm marking this series as "Changes Requested" in patchwork.

Regards,

	Hans

> 
> Best regards,
> Tomasz
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
