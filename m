Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D8B7B8C1
	for <lists+linux-rockchip@lfdr.de>; Wed, 31 Jul 2019 06:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uge/XQVqD/qQti/A+bQpfqmYoSvQTLpdrY4HjPUD8Q8=; b=gs92JcGKvKCCOw
	2ABThMvJrANNUImn8M4t0ghk6IVMhqJTVkxu1cGxXD54U68hqRfsA99P8tmDv9OIEjFnD4x+66gzM
	4sRTnjwaVbNAIlTX5KjPgiLiQVMdUV+yeAN0u+8SJB4K9Qt5KrUvLw5mJM7prZMpJZ0+NpAZCnPdB
	BL7/N4Ey4zOvPjfGnAWWuJczW86wg8cf7PMDq82W4pnt7T02p0MfSt9mW+bITJCK4chrXML8EBifS
	WrT6Z+hn7lwDXfilL+JWKzhjrUTKbbW4OyCCUtz79FCBBU74Ox/LFuTr+Xsdd7ivmBgCxHh7XGNuS
	B02kalrz7iFXR0BThNPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsgIz-0008G6-Ib; Wed, 31 Jul 2019 04:33:37 +0000
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsgIc-0007sA-6k; Wed, 31 Jul 2019 04:33:16 +0000
Received: from [IPv6:2001:983:e9a7:1:a003:9a19:9f18:5372]
 ([IPv6:2001:983:e9a7:1:a003:9a19:9f18:5372])
 by smtp-cloud7.xs4all.net with ESMTPA
 id sgIYh2UxBur8TsgIZhB7oo; Wed, 31 Jul 2019 06:33:11 +0200
Subject: Re: [PATCH v8 00/14] Rockchip ISP1 Driver
From: Hans Verkuil <hverkuil@xs4all.nl>
To: Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <dbdfed3e-7bb6-bf1f-64b9-ab7298193e2d@xs4all.nl>
 <41e7e574-2708-eb4c-ea30-e6a1ac9c073e@collabora.com>
 <8ce532de-6c26-f8db-8754-c8dd1eb0764b@collabora.com>
 <74bb0ba1-2859-39ff-d946-129a440ba150@xs4all.nl>
Message-ID: <fb1327fb-0903-ce62-4eea-94b81f599b62@xs4all.nl>
Date: Wed, 31 Jul 2019 06:33:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <74bb0ba1-2859-39ff-d946-129a440ba150@xs4all.nl>
Content-Language: en-US
X-CMAE-Envelope: MS4wfEaWO9wIFWm8X+G7TYQwIadLRFXiGM7jx6AHCtLf88bMkZ2Bzi3fT6ovkUy5dg9H734PKmhtKSn28Kl0V5z2nXAfF55ZUJehCnTKFrLSEbfHbYCMVj0V
 AdK4qCjivJzIPZAxYnRLbxZuYQPi2DII98Iq4GMGm1Pdh+0MPMibGL/RspqvqcwkpxsESqJDnYol38s183u3MMC8CteYV9rK0J8UtoUIgimlCIffgCkicd1y
 v6bSOrSlDoAqfENUPdzoYP4kL6BBiddJwgBk+gCTwa4MSB9WddH7CGDTdfdN7JxhOfLAbBip9rscpaCopmE6PMNkz0/InnEnNDdb5rRL4h7cbq6lfigdBBdr
 DcdlkXhiJi4N98aBRuLL+T6uOLaJTWtB1KrS3U+iJyeEfXflY1no8/QIA9zJA4MHduEYYCTlVTAxFz/Uj5eYe+bjK8A4MW2byCizEcGtTOrgejHErtKbcuNr
 45W/HpOE6wM7dRT4LnQ2pgkT2gptz9/sIXgOLM7yNARhYB6cl4kCqgYoBmJp0eIZOrRLRcMD3aCpjXriwA5Vo2a5tiDOAs/YenYb8NV0QBBvtLkMrkglUjRe
 dP/3S1W5wuDNRhVwn8Qk+WubDlmdR+yDWqt80MUHWJ2cHzGlSJglDhk2xQm6r5osHBsos7eODGO2xwD4hF2DnEr6eJlY3a6PzuB4HfW+cis62LGTFNwrPYp7
 eXuBQPWn69n4V9IV3GaXIOoZ2dS0vYD7gh3cNmJObqDOl51gODwzcV2qEAKD6aNLoZVrW0Lq7WStOVlgl6MFOM7+5YQySO3NtGZtYh9sWfIA4vfdE1mNmWoQ
 RC6nCFIb+tvbJJlCznXJZQjSn66Gjy8+hS4JUstjk0C2Zk/VuaRONpc+s91B0IeBcPd7aWIEw3eJQcRDqJzE/a+VbRVmYoMjd5EI6GiE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_213314_415618_D1BDF485 
X-CRM114-Status: GOOD (  17.47  )
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, zhengsq@rock-chips.com, jeffy.chen@rock-chips.com,
 zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 7/31/19 6:29 AM, Hans Verkuil wrote:
> On 7/31/19 2:08 AM, Helen Koike wrote:
>>
>>
>> On 7/30/19 5:50 PM, Helen Koike wrote:
>>>
>>>
>>> On 7/30/19 5:15 PM, Hans Verkuil wrote:
>>>> On 7/30/19 8:42 PM, Helen Koike wrote:
>>>>> Hello,
>>>>>
>>>>> I'm re-sending a new version of ISP(Camera) v4l2 driver for rockchip
>>>>> rk3399 SoC.
>>>>>
>>>>> I didn't change much from the last version, just applying the
>>>>> suggestions made in the previous one.
>>>>>
>>>>> This patchset is also available at:
>>>>> https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v8
>>>>>
>>>>> Libcamera patched to work with this version:
>>>>> https://gitlab.collabora.com/koike/libcamera
>>>>> (also sent to the mailing list)
>>>>>
>>>>> I tested on the rockpi 4 with a rpi v1.3 sensor and also with the
>>>>> Scarlet Chromebook.
>>>>>
>>>>> Known issues (same as in v7):
>>>>> -------------
>>>>> - Reloading the module doesn't work (there is some missing cleanup when
>>>>> unloading)
>>>>> - When capturing in bayer format, changing the size doesn't seem to
>>>>> affect the image.
>>>>> - crop needs more tests
>>>>> - v4l2-compliance error:
>>>>>         fail: v4l2-test-controls.cpp(824): subscribe event for control 'Image Processing Controls' failed
>>>>> test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: FAIL
>>>>
>>>> Can you mail me the full v4l2-compliance output?
>>>
>>> Sure, please check here: http://ix.io/1Q5u
>>> I updated v4l-utils with the latest version and I re-ran bootstrap/configure/make,
>>> but for some reason the hash from the link above is not the latest commit, probably some
>>> old configuration somewhere. I'll resend this log as soon as I get v4l2-compliance
>>> properly updated.
>>
>> Please see the output of v4l2-compliance here with an updated v4l-utils: http://ix.io/1Q6A
> 
> So this FAIL is for /dev/v4l-subdev0 (rkisp1-isp-subdev).
> 
> What is weird that this subdev does not appear to have controls at all.
> 
> What is the output of 'v4l2-ctl -d /dev/v4l-subdev0 -l'? And if it lists
> controls, then why?
> 
> If you run 'v4l2-compliance -u /dev/v4l-subdev0', do you get a fail as
> well?

I see the same issue with v4l-subdev1, but I see no "Media Driver Info"
in the v4l2-compliance output for that subdev. That's strange. It would
be good to know why that's happening.

Regards,

	Hans

> 
> BTW, note that struct rkisp1_isp_subdev has a ctrl_handler field that
> isn't used at all.
> 
> Regards,
> 
> 	Hans
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
