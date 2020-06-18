Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D582A1FFB51
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 20:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pFzduzjfJ+pxDYjoEuxqKYtmc67K0LZcnkzjQEn1olE=; b=JoLBaIZXT4xkOEJaANUQrcz13
	zIdCwznBEO4ocEshwxVHFMH2rX0wN8ZnPS5khEwZ2Ob4HSr1CENxQ5RTuTj2XDbNYGQjqbgN6YmmF
	YZGwuTnEeKazfPQz0yPtHenIYBArYVWWAbxW1EEeDHoG8ocQUCXybW5fFSzkEkv9f9JCWqlY1goMW
	iiHO9x/Q3NEt5AlO+8ERAeffC27iQwGPXqRy9bfgG0QjP24VwVeWwZTE3+419t9zid4CKxj+oivYg
	zHxyAI4YdK0DrSacCDMRvwBQJGnc+8tped3xdxl+Kvs4yk5tKkkMp+AXFXOjnAYAmipK8S5SDoh4/
	kfcUgDAKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlzcN-0002j9-5y; Thu, 18 Jun 2020 18:50:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlzcK-0002ia-7p
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 18:50:30 +0000
Received: from [IPv6:2003:cb:871f:5b00:4da3:fbf7:1b31:245]
 (p200300cb871f5b004da3fbf71b310245.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:4da3:fbf7:1b31:245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F112F2A4F2E;
 Thu, 18 Jun 2020 19:50:25 +0100 (BST)
Subject: Re: [PATCH v2 3/4] media: staging: rkisp1: rsz: set output format to
 YUV422 if cap format is YUV444
To: Tomasz Figa <tfiga@chromium.org>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-4-dafna.hirschfeld@collabora.com>
 <CAHD77HkjjWMOcX3oLnzdMuzZM-_NSydStnzLLcHEFRenL23d-A@mail.gmail.com>
 <aa52f9f8-d9e9-06b2-22df-bbab2d26b516@collabora.com>
 <20200618174752.GA10831@chromium.org>
 <9ee01443-985d-751c-fff9-fa90337de68d@collabora.com>
 <20200618181220.GC10831@chromium.org>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <f1660285-f6cb-6157-1e56-2974bc549fef@collabora.com>
Date: Thu, 18 Jun 2020 20:50:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200618181220.GC10831@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_115028_539106_6C9D34B9 
X-CRM114-Status: GOOD (  32.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 18.06.20 20:12, Tomasz Figa wrote:
> On Thu, Jun 18, 2020 at 08:00:37PM +0200, Dafna Hirschfeld wrote:
>>
>>
>> On 18.06.20 19:47, Tomasz Figa wrote:
>>> On Fri, Jun 12, 2020 at 02:45:00PM +0200, Dafna Hirschfeld wrote:
>>>>
>>>>
>>>> On 27.05.20 01:09, Tomasz Figa wrote:
>>>>> On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
>>>>> <dafna.hirschfeld@collabora.com> wrote:
>>>>>>
>>>>>> If the capture format is YUV444M then the memory input format
>>>>>> should be YUV422, so the resizer should not change the default
>>>>>> hdiv, vdiv in that case.
>>>>>>
>>>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>>>> ---
>>>>>>     drivers/staging/media/rkisp1/rkisp1-resizer.c | 7 ++++---
>>>>>>     1 file changed, 4 insertions(+), 3 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>>>>>> index 04a29af8cc92..5f9740ddd558 100644
>>>>>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
>>>>>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>>>>>> @@ -394,10 +394,11 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>>>>>>             * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
>>>>>>             * streams should be set according to the pixel format in the capture.
>>>>>>             * The resizer always gets the input as YUV422. If the capture format
>>>>>> -        * is RGB then the memory input (the resizer output) should be YUV422
>>>>>> -        * so we use the hdiv, vdiv of the YUV422 info in this case.
>>>>>> +        * is RGB or YUV444 then the memory input (the resizer output) should
>>>>>> +        * be YUV422 so we use the hdiv, vdiv of the YUV422 info in this case.
>>>>>>             */
>>>>>> -       if (v4l2_is_format_yuv(cap->pix.info)) {
>>>>>> +       if (v4l2_is_format_yuv(cap->pix.info) &&
>>>>>> +           cap->pix.info->format != V4L2_PIX_FMT_YUV444M) {
>>>>>>                    src_c.width = cap->pix.info->hdiv;
>>>>>>                    src_c.height = cap->pix.info->vdiv;
>>>>>
>>>>> As pointed out in another thread, this should have been the original
>>>>> size divided by the divisor and not just the latter alone.
>>>>>
>>>>> It seems a bit suspicious to me that we don't need to upscale the
>>>>> chroma planes here, because it would mean that the MI itself would be
>>>>> doing some horizontal pixel doubling. The hardware documentation
>>>>> doesn't really explain this, though.
>>>>>
>>>>> Have you been able to validate that the setting without upscaling
>>>>> indeed produces correct output?
>>>>
>>>> Hi,
>>>> I investigated it again, without this patch, the frames on mainpath for YUV444 look good: https://imgur.com/a/NtazWhY
>>>> but there is a problem on selfpath: https://imgur.com/a/vQJPqAn
>>>>
>>>> This patch somehow solves the problem on selfpath but ruins the frames on mainpath.
>>>>
>>>> I think the bug is actually in another place in the code. The function 'rkisp1_sp_config'
>>>> sets a constant value RKISP1_MI_CTRL_SP_INPUT_YUV422 as the input format on the RKISP1_CIF_MI_CTRL register.
>>>> But the value should be set according to the configuration. For some reason the problem arises only
>>>> when trying to capture yuv444. When I capture yuv420 on the selfpath the frame looks good although the
>>>> value RKISP1_MI_CTRL_SP_INPUT_YUV422 is set.
>>>> Setting the the SP_INPUT_* according to the configuration seems to solve the problem.
>>>
>>> Looking at the datasheet, SP seems to have some internal format
>>> conversion capability - one can set SP_OUTPUT_FORMAT and SP_INPUT_FORMAT
>>> to different YUV subsampling modes or even some RGB formats. MP doesn't
>>> have this capability - it can only write whatever it receives.
>>>
>>> I think this needs to be reflected in the driver, if it isn't yet.
>>> Depending on the resizer source format, the MP video node must allow
>>> only formats with matching subsampling mode.
>>
>> Hi,
>> I work on v3 now that does that, it supports several yuv mbus codes on the source pads of the resizers
>> and then in the link_validation callback of the capture it checks that the subsampling matches.
> 
> Is it enough? I believe the principle is that within the same entity the
> state needs to stay consistent, i.e. if the sink pad changes, the source
> pad or video node must be updated to expose only correct formats,
> including resetting the current format.
Yes, but video devices have only a sink pad. Also, the sink pad of
a video device is not associated with an mbus code. The video format configuration
is not related to the media controller API.

> 
>>
>> It is not clear to me what is the meaning of the input/output capapility of the selfpath except of RGB convertion.
>> Since yuv subsampling is what the resizer does.
> 
> Could be some historical legacy, a byproduct of some feature (e.g.
> RGB could be bundled with support for other formats) or could be there
> on purpose.
> 
> It would be worth checking whether there are any quality or
> performance/power differences depending on whether the resizer or the SP
> is used for resampling. For example, one could be using some
> interpolation algorithm, while the other just a simple pixel doubling or
> decimation.

I can experiment with that.

Thanks,
Dafna

> 
> Best regards,
> Tomasz
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
