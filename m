Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031091F5A33
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 19:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ooOZF7rOulRo6tsv/SwQ+wfTkHjHf+uAVIloGOU94s4=; b=RABXfInK/NLjGkyDEWtMDP4kv
	AiPFeOGrG3kUYrZ2Vp7CIXrbhEAiPFAJGY1CL5+PtzCCK76JeWFJsS/nnxJrUwSD2vUYeKtMovlO9
	425UjFCLrKVrifIKHZtaCg7ZDrj4vXpelWNRofnDvlG7NW7r3B4Nb8wFxhqtlYk7o35clr9i2Mxqm
	1ZcEKBl2ZG9ZEM6gLhH5ueDGde6SWWWq3hyeHAkx7yXP6rF8ekyNEcHd7+R/VFI3MH/2QesdvcrSA
	jeeoYTaKAOhimjhoyfCaSmD+JL43O1bD5cP40PLcc+hYq8zbUUlSlfZe53c8+fZnNzQefn7o9eS8t
	o90gvXLcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4QW-0003Jh-FM; Wed, 10 Jun 2020 17:22:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4QT-0003JD-15
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 17:22:10 +0000
Received: from [IPv6:2003:cb:871f:5b00:9cc4:c525:7ca2:283]
 (p200300cb871f5b009cc4c5257ca20283.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:9cc4:c525:7ca2:283])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 383BE2A0596;
 Wed, 10 Jun 2020 18:22:07 +0100 (BST)
Subject: Re: [PATCH v4 4/5] media: staging: rkisp1: cap: use
 v4l2_pipeline_stream_{enable,disable} helpers
To: Tomasz Figa <tfiga@chromium.org>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <20200522075522.6190-5-dafna.hirschfeld@collabora.com>
 <20200610170344.GC201868@chromium.org>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <02c8bd4a-0fc1-fcc5-4d8b-63ff1d406988@collabora.com>
Date: Wed, 10 Jun 2020 19:22:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200610170344.GC201868@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_102209_202672_9DC8B497 
X-CRM114-Status: GOOD (  20.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: niklas.soderlund@ragnatech.se--annotate, mchehab@kernel.org,
 dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, skhan@linuxfoundation.org, kernel@collabora.com,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 10.06.20 19:03, Tomasz Figa wrote:
> Hi Dafna,
> 
> On Fri, May 22, 2020 at 09:55:21AM +0200, Dafna Hirschfeld wrote:
>> From: Helen Koike <helen.koike@collabora.com>
>>
>> Use v4l2_pipeline_stream_{enable,disable} to call .s_stream()
>> subdevice callbacks through the pipeline.
>> Those helpers are called only if the other capture is not streaming.
>>
>> If the other capture is streaming then he already did that for us
>> so we call s_stream only on the resizer that is connected to the
>> capture node.
>>
>> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 104 ++++++------------
>>   1 file changed, 32 insertions(+), 72 deletions(-)
>>
> 
> Thank you for the patch. Please see my comments inline.
> 
> [snip]
>> +static int rkisp1_s_stream_subdev(struct rkisp1_capture *cap, int enable)
>> +{
>> +	struct rkisp1_device *rkisp1 = cap->rkisp1;
>> +	struct rkisp1_capture *other = &rkisp1->capture_devs[cap->id ^ 1];
>> +	int ret;
>> +
>> +	/*
>> +	 * if the other capture is already streaming then we only need to
>> +	 * call s_stream of our reszier
>> +	 */
>> +	if (other->is_streaming) {
>> +		struct v4l2_subdev *rsz_sd  = &rkisp1->resizer_devs[cap->id].sd;
>> +
>> +		ret = v4l2_subdev_call(rsz_sd, video, s_stream, enable);
>> +		if (ret && ret != -ENOIOCTLCMD)
>> +			dev_err(rkisp1->dev,
>> +				"stream %s resizer '%s' failed (%d)\n",
>> +				enable ? "on" : "off", rsz_sd->name, ret);
> 
> Do we need this special case? Wouldn't v4l2_pipeline_stream_*() simply
> increment reference counters for the other entities?

I removed the stream count in v4 of the patchset since I thought it
might be problematic/confusing to add a field "stream_count" in
"struct v4l2_subdev" that is used and updated only by those helper functions

What do you think?

There is also the issue that both you and Sakari Ailus mentioned that
an isp driver can't know the subtopology of a sensor driver and how it handle the
s_stream callback on it's entities.

Thanks,
Dafna


> 
>> +	} else {
>> +		if (enable)
>> +			ret = v4l2_pipeline_stream_enable(&cap->vnode.vdev);
>> +		else
>> +			ret = v4l2_pipeline_stream_disable(&cap->vnode.vdev);
> 
> I wonder if this doesn't ask for just making the helper
> v4l2_pipeline_s_stream(..., int enable).> 
> Best regards,
> Tomasz
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
