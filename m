Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED7C1E7F31
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 May 2020 15:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pul7qHOWLpp+InO7aV/tWH05YTsJ3YAKmgNzPgF4oJs=; b=D16zUdGAgJGHwU
	d4raVAYmmepiBhpiWQ3IkAYHQt1lekpkMEbg7Xev0U/yWrKTxQ3+XOgjPkDMeKRkqkJ+3KECMj8+Y
	Eax8tGQWXLtnI1VuUpNSYgugnI/bQx5dEPILMryFG/yi7gcYqaMmfPgYwOMm9dPcI9iUWL2j71NdU
	tX7r3qLiLhExHQXGTLeh6GWEE0T/qHIVZW2i3CoyiGHyfhNjvCgvjpbsOQ8XymoDqdfhVYjcHTKDy
	tYQWblAV5qlw0CIQNcUcSmQAOUIUWjbywxs0lYE+6SLNhtHMWVeTBtNqoJcH8pY9gMf+L6JZrk90u
	YncPG8YSIWPoXhhqoclg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jefO0-0006Wd-Kc; Fri, 29 May 2020 13:49:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jefNw-0006Vg-Jz
 for linux-rockchip@lists.infradead.org; Fri, 29 May 2020 13:49:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id D6A6D2A4598
Subject: Re: [PATCH v4 0/5] media: add v4l2_pipeline_stream_{enable,disable}
To: Tomasz Figa <tfiga@chromium.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <1c8bd467-5a9c-7285-ec23-d0d864a5f938@collabora.com>
 <CAAFQd5BW9TF0iMRPCUwk3oZn-WrisMW794EuwfqZRTkmNqeKoA@mail.gmail.com>
 <20200526185754.GA25880@pendragon.ideasonboard.com>
 <50929a55-a071-aa09-eb1a-96776c61c147@collabora.com>
 <CAAFQd5ASEvyzHKQZjunpF-=du5AA0w6b9fGMi9xjTCbMrPhLVw@mail.gmail.com>
 <CAAFQd5Bcu+OP-2Uwkrq79C+0WAvFox-gxmcqYqkB6gpEPoABrw@mail.gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <7ce3e2cb-60ab-bf0f-6d0a-7bcf0c73d6b8@collabora.com>
Date: Fri, 29 May 2020 10:49:04 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAAFQd5Bcu+OP-2Uwkrq79C+0WAvFox-gxmcqYqkB6gpEPoABrw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_064920_918090_714EF419 
X-CRM114-Status: GOOD (  26.74  )
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Shuah Khan <skhan@linuxfoundation.org>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On 5/29/20 10:27 AM, Tomasz Figa wrote:
> [Fixing Niklas's address.]
> 
> On Fri, May 29, 2020 at 3:26 PM Tomasz Figa <tfiga@chromium.org> wrote:
>>
>> On Thu, May 28, 2020 at 6:21 PM Dafna Hirschfeld
>> <dafna.hirschfeld@collabora.com> wrote:
>>>
>>> Hi Tomasz, Helen, Laurent
>>>
>>> On 26.05.20 20:57, Laurent Pinchart wrote:
>>>> Hi Tomasz,
>>>>
>>>> On Tue, May 26, 2020 at 06:11:00PM +0200, Tomasz Figa wrote:
>>>>> On Fri, May 22, 2020 at 11:06 AM Helen Koike <helen.koike@collabora.com> wrote:
>>>>>> On 5/22/20 4:55 AM, Dafna Hirschfeld wrote:
>>>>>>> Hi,
>>>>>>> This is v4 of the patchset that was sent by Helen Koike.
>>>>>>>
>>>>>>> Media drivers need to iterate through the pipeline and call .s_stream()
>>>>>>> callbacks in the subdevices.
>>>>>>>
>>>>>>> Instead of repeating code, add helpers for this.
>>>>>>>
>>>>>>> These helpers will go walk through the pipeline only visiting entities
>>>>>>> that participates in the stream, i.e. it follows links from sink to source
>>>>>>> (and not the opposite).
>>>>>>> For example, in a topology like this https://bit.ly/3b2MxjI
>>>>>>> calling v4l2_pipeline_stream_enable() from rkisp1_mainpath won't call
>>>>>>> .s_stream(true) for rkisp1_resizer_selfpath.
>>>>>>>
>>>>>>> stream_count variable was added in v4l2_subdevice to handle nested calls
>>>>>>> to the helpers.
>>>>>>> This is useful when the driver allows streaming from more then one
>>>>>>> capture device sharing subdevices.
>>>>>>
>>>>>> If I understand correctly, this isn't  true anymore right? Nested calls aren't
>>>>>> possible anymore since this version doesn't contain stream_count in struct v4l2_subdevice.
>>>>>>
>>>>>> Documentation of v4l2_pipeline_stream_*() should also be updated.
>>>>>>
>>>>>> Just to be clear, without the nested call, vimc will require to add its own
>>>>>> counters, patch https://patchwork.kernel.org/patch/10948833/ will be
>>>>>> required again to allow multi streaming.
>>>>>>
>>>>>> Also, patch "media: staging: rkisp1: cap: use v4l2_pipeline_stream_{enable,disable}"
>>>>>> is cleaner in the previous version (with stream_count in struct v4l2_subdevice).
>>>>>>
>>>>>> All drivers that allows multi streaming will need to implement some special handling.
>>>>>>
>>>>>> Adding stream_count in struct v4l2_subdevice still seems cleaner to me. I'd like to hear
>>>>>> what others think.
>>>>>
>>>>> I certainly would see this reference counting done in generic code,
>>>>> because requiring every driver to do it simply adds to the endless
>>>
>>> It is required only for drivers that support multistreaming. I don't know much
>>> about other driver except of the ones I am working on, is it a common case?
>>>
>>
>> I'm not very familiar with the older camera I/F drivers, but multiple
>> streams isn't anything unusual for camera hardware. I recall the old
>> Samsung FIMC already having support for separate preview and capture
>> outputs.
>>
>> Also adding the reference counting on framework level probably
>> wouldn't really hurt drivers which only have 1 stream anyway.
>>
>>>>> amount of boiler plate that V4L2 currently requires from the drivers.
>>>>> :(
>>>>>
>>>>> I wonder if it wouldn't be possible to redesign the framework so that
>>>>> .s_stream() at the subdev level is only called when it's expected to
>>>>> either start or stop this particular subdev and driver's
>>>>> implementation can simply execute the requested action.
>>>
>>> You mean that a generic code similar to the helper functions in this patchset
>>> will be used for all drivers, so that drivers don't call s_stream for subdevices
>>> anymore?
>>> Anyway, this patchset just adds helper functions, it does not redesign the code.
>>> Maybe the stream_count can be updated in the v4l2_subdev_call macro ?
>>> This why it can be used not just for the helper functions.
>>
>> Sorry, just thinking out loud. Generally if we look at other kAPIs,
>> such as the drm_crtc_helper_funcs [1] or regulator_ops [2], the driver
>> provided implementation doesn't have to care about duplicate
>> enable/disable requests.

Thanks for this pointer.

>>
>> [1] https://elixir.bootlin.com/linux/v5.7-rc7/source/include/drm/drm_modeset_helper_vtables.h#L61
>> [2] https://elixir.bootlin.com/linux/v5.7-rc7/source/include/linux/regulator/driver.h#L144
>>
>> If we could prohibit calling v4l2_subdev_ops::s_stream() by the
>> drivers directly and instead add something like
>> v4l2_subdev_s_stream(), the latter could do reference counting on its
>> own and then only call v4l2_subdev_ops::s_stream() when the reference
>> count changes between 0 and 1.

This is basically how v3 was implemented https://patchwork.kernel.org/patch/11489583/

And the main concern (from what I understood) was to add a stream_count
under struct v4l2_subdev, that is only touched by the helpers, so this
stream_count field would be useless for drivers not using the helpers.
which, imho, it is not a big problem.

I think we gain more with a common implementation.

>>
>> One problem I see with this series is that I'm not sure if it's always
>> guaranteed that all the drivers in the pipeline would actually use the
>> generic helpers.

I'm not sure we should always guarantee usage of generic helpers, since
drivers may want to initialize subdevices in a specific order.

>> If there is a driver in the pipeline which just calls
>> v4l2_subdev_ops::s_stream() on some other subdev on its own, it
>> wouldn't be aware of the reference count and bad things could happen
>> (e.g. the subdev stopped despite the count being > 0).

I don't think this is a problem, since v4l2_subdev_ops::s_stream() are
usually triggered by a STREAM_ON on a video node. So or the video node driver
uses the helpers, or it calls v4l2_subdev_ops::s_stream() on subdevices directly.

Unless if, we could have a case where we have multiple video nodes in the
same topology that is implemented by different drivers, which seems odd
to me.

Regards,
Helen

>>
>> However, I'm afraid this is more of the kAPI design issue and could be
>> require quite a significant effort to be straightened out.
>>
>> Best regards,
>> Tomasz
>>
>>>
>>> Thanks,
>>> Dafna
>>>
>>>>
>>>> I'd very much like that. Note that I think a few drivers abuse the on
>>>> parameter to the function to pass other values than 0 or 1. We'd have to
>>>> fix those first (or maybe it has been done already, it's been a long
>>>> time since I last checked).
>>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
