Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAA189D6F
	for <lists+linux-rockchip@lfdr.de>; Mon, 12 Aug 2019 13:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2CUgLlHlCLKP5EpR5n6sBBlETttUvw4X1E0nMLMuNo=; b=P8RH/z0X3nNPhh
	L8EXiON8tLYE0CmlM0Nwd2xpcSotE1VBEqFBZyvDElosz1eyYaJGi1dty1h3xgI4efW09OkkRBaBU
	CmrlaCjXp3vgSOf8//UjT4QIyM3t93BYsAkGcNQoaxDbyrQtoPWSR7ZeO2WWrgnckA5HJXH32Ocfn
	1DKLJ9GwIaLwUPYDGIb3U89qLbPXKel/KZKPUnYo5x0IniIVsHYCuIhAHvrEDE1RDBzSzX5WRmqWv
	lGSQDZ90Uxly4AxaHFp5ecKI7Nzr2OWLl0tuRoFZVDYsokwLfQhl4FKDjDEcPtcLogBvXFH8A/SVt
	kQLNR3HfDUs8aStwmtzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8xh-0003Mt-BM; Mon, 12 Aug 2019 11:58:05 +0000
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8xc-0003L5-Am
 for linux-rockchip@lists.infradead.org; Mon, 12 Aug 2019 11:58:02 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id x8xShQXe9ur8Tx8xWhiCxs; Mon, 12 Aug 2019 13:57:54 +0200
Subject: Re: [PATCH v4 04/11] media: uapi: h264: Add the concept of start code
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
References: <20190808103432.12062-1-ezequiel@collabora.com>
 <20190808103432.12062-5-ezequiel@collabora.com>
 <a729d241-6550-c23a-4f75-f106ab1c7ff9@xs4all.nl>
 <95b8f8f8d5d4f6394cfd5858a29d507b7e77be2f.camel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <c4adc667-590b-438d-f8ef-ebcc7eee6004@xs4all.nl>
Date: Mon, 12 Aug 2019 13:57:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <95b8f8f8d5d4f6394cfd5858a29d507b7e77be2f.camel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCk8vclEi7DhOmsRf+mZqZE5k2wrBfPOCz9ZkKbXijWxmyESvKbELCeBx3YAl2BMJh0GwDs3EWsX2hNziHOkMWo6/AiLopGEzckfU9nU/3sra/7MO317
 T1CjTxi4CMhuhSB/tzD967aiTEsORkz/2UW4oQrcGJrhMXyhD30cWT7FOSYx+X0Nmx6JKFOEEFFG9UR04mWCJ8JERQ87t7PjreqnbzHm/PTIkmSeQblmp9TV
 YjhoWo9MGyXY4fYBA/OuiLECfbFmrTMMZz9W0vUui3eGosqkkmn20AIQCXpCuEzX48Su36t27U7dF5M41l+VVgjYV09k7E3UEE+soFTmDqAsFNYd+khlPX/P
 a+Z5TBGubRLAjaOOepXXAAz/VLSdLzaWwaStI8dHMmG6J0bdsTac5ZQWKO4Ki8Ec9oM0Eg6HK4DfdZpSDcc4ZQH5PNJtTl/pr7MSfs5ZWv3DXBVASWP1y1UC
 O8gq15WQBPVntEqDdXHowpDTXAmgVWKXJejz7uEAYTFJjx8L/thjy86fipyuYwvlrJ/ChAqNLgK9QmImIFC2oPxsN2a9zNbzqyy/eYFHU9sfQisBzNh1IbKd
 z44+GZLPCUfdmk5JKGwaAn+MEPVx75Ax+Ys1KLkkB8Me+kanHSd8p+AKN9ZpEtYdBUk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_045800_527545_152E8A57 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 8/12/19 1:56 PM, Ezequiel Garcia wrote:
> On Mon, 2019-08-12 at 12:11 +0200, Hans Verkuil wrote:
>> On 8/8/19 12:34 PM, Ezequiel Garcia wrote:
>>> Stateless decoders have different expectations about the
>>> start code that is prepended on H264 slices. Add a
>>> menu control to express the supported start code types
>>> (including no start code).
>>>
>>> Drivers are allowed to support only one start code type,
>>> but they can support both too.
>>>
>>> Note that this is independent of the H264 decoding mode,
>>> which specifies the granularity of the decoding operations.
>>> Either in frame-based or slice-based mode, this new control
>>> will allow to define the start code expected on H264 slices.
>>>
>>> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
>>> ---
>>> Changes in v4:
>>> * New patch.
>>> ---
>>>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 31 +++++++++++++++++++
>>>  drivers/media/v4l2-core/v4l2-ctrls.c          |  9 ++++++
>>>  include/media/h264-ctrls.h                    |  6 ++++
>>>  3 files changed, 46 insertions(+)
>>>
>>> diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
>>> index ea0455957149..94fd3a9b8b9e 100644
>>> --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
>>> +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
>>> @@ -2062,6 +2062,37 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
>>>          The OUTPUT buffer should contain all slices needed to decode the
>>>          frame/field.
>>>  
>>> +``V4L2_CID_MPEG_VIDEO_H264_STARTCODE (enum)``
>>> +    Specifies the H264 slice start code expected for each slice.
>>> +    This control shall e used to complement V4L2_PIX_FMT_H264_SLICE
>>
>> e -> be
>>
>>> +    pixel format. Drivers may expose a single or multiple
>>> +    start codes, depending on what they can support.
>>> +
>>> +    .. note::
>>> +
>>> +       This menu control is not yet part of the public kernel API and
>>> +       it is expected to change.
>>> +
>>> +.. c:type:: v4l2_mpeg_video_h264_startcode
>>> +
>>> +.. cssclass:: longtable
>>> +
>>> +.. flat-table::
>>> +    :header-rows:  0
>>> +    :stub-columns: 0
>>> +    :widths:       1 1 2
>>> +
>>> +    * - ``V4L2_MPEG_VIDEO_H264_NO_STARTCODE``
>>> +      - 0
>>> +      - Selecting this value specifies that H264 slices are passed
>>> +        to the driver without any start code.
>>> +        Bla.
>>
>> Bla?
>>
> 
> Well, despite how many times I reviewed this doc, it seems
> this slipped through :-(
> 
>>> +    * - ``V4L2_MPEG_VIDEO_H264_ANNEX_B_STARTCODE``
>>> +      - 1
>>> +      - Selecting this value specifies that H264 slices are expected
>>> +        to be prefixed by Annex B start codes. According to :ref:`h264`
>>> +        valid start codes can be 3-bytes 0x000001, or 4-bytes 0x00000001.
>>> +
>>
>> I had the impression that it is more common to require startcodes. If that's
>> indeed the case, shouldn't this have value 0 instead of 1?
>> 1?
>>
> 
> I'm not sure this is indeed the case.
> 
> For instance, VA-API accelerators work on H264 slices that are not
> prepended by the NALU start code.
> 
> I'm fine flipping the values, but at this point, with only cedrus and hantro,
> there's doesn't seem to be a "natural" choice.

OK, let's keep this as-is then.

Regards,

	Hans

> 
> Thanks,
> Ezequiel
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
