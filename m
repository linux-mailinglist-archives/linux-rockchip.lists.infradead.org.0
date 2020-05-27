Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291191E3EBD
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 May 2020 12:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dujK0sNJs70aW8igv09D9Jd/tzVV/iWf1wJ5+rcXyPo=; b=uu1gmPP7SZul/p
	xJsZDJU+SjIlieDp9a+Nyamp3rRbd/UGFZhrLLj+LQycI7wD7wjub1ZQOBYSVsPHTRSs4vzQRlPux
	JOT5Hesd7c0GXoMykVsHWZcbajpmQZT5tdho6pYSy70aEHoZutdvT7gqVX1DRSKTptRfCDtsfO58h
	StlD3/uLwHW+axJ7OSa8s38Rtb6Iq5ZK8yj+CmZF6f4S2s+vVJSnTQy2EbUVzjRn3hQOlZlLF0lCl
	d34a3G++Y4vIvCJsAXkF4RJwETooeF/hhrVt72aGIiNrLsp7/bzsUJnzWNTmCF3bq5KqwMeL+fRm0
	yevmI00IpHlOK9n8m5fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdt4w-0007C8-53; Wed, 27 May 2020 10:14:30 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdt4s-0007Ba-NU
 for linux-rockchip@lists.infradead.org; Wed, 27 May 2020 10:14:28 +0000
Received: from [IPv6:2804:14c:483:757c::1001] (unknown
 [IPv6:2804:14c:483:757c::1001])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D28772A35AF;
 Wed, 27 May 2020 11:14:20 +0100 (BST)
Subject: Re: [PATCH v2 4/4] media: staging: rkisp1: cap: remove support of
 BGR666 format
To: Tomasz Figa <tfiga@chromium.org>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-5-dafna.hirschfeld@collabora.com>
 <fc4dbc40-ab57-0ca4-4ac7-5ffdb7f0ad81@collabora.com>
 <CAHD77H=iq3BpwD3=yL1DttUH_=vt8nO-5N_Kiu427BrUHJQ-zQ@mail.gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <1c5f335b-0f31-bfb6-7dfe-91b5372489f0@collabora.com>
Date: Wed, 27 May 2020 07:14:16 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAHD77H=iq3BpwD3=yL1DttUH_=vt8nO-5N_Kiu427BrUHJQ-zQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_031426_895457_13560B5F 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 5/26/20 7:57 PM, Tomasz Figa wrote:
> On Thu, May 21, 2020 at 12:35 AM Helen Koike <helen.koike@collabora.com> wrote:
>>
>>
>>
>> On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
>>> The rkisp1 supports RGB encoding with 6 bits per
>>> color with the following format:
>>> - - b5 b4 b3 b2 b1 b0 - - g5 g4 g3 g2 g1 g0 - - r5 r4 r3 r2 r1 r0 - - - - - - - -
>>
>> Is this the same as V4L2_PIX_FMT_XBGR32 format, but with colors range from 0 to 63 ?
>>
>> I was wondering what is the usage of such a format. If it is useful, then I'm sad
>> to see this being removed from the driver, since this is a v4l2 api limitation, and not
>> a hw limitation.
> 
> Sounds like some relic of the past. ;)
> 
> In general, RGB formats are not very useful in this hardware. One
> wastes the precious bandwidth, but doesn't get more color resolution,
> since the pipeline uses YUV 4:2:2 internally anyway. The typical usage
> scenarios with video or JPEG encoding and preview are much better off
> with the available YUV formats.

Thanks for your input.

Right, then in this case, I don't oppose removing it.

> 
>>
>> Regards,
>> Helen
>>
>>>
>>> This is not how V4L2_PIX_FMT_BGR666 is defined, so remove
>>> this format from the driver's formats list.
>>>
>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

>>> ---
>>>  drivers/staging/media/rkisp1/rkisp1-capture.c | 4 ----
>>>  1 file changed, 4 deletions(-)
>>>
>>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>>> index 61b9ebe577b2..2660e44eda88 100644
>>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>>> @@ -283,10 +283,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>>>               .fourcc = V4L2_PIX_FMT_RGB565,
>>>               .write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>>>               .output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
>>> -     }, {
>>> -             .fourcc = V4L2_PIX_FMT_BGR666,
>>> -             .write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>>> -             .output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB666,
>>>       },
>>>  };
>>>
>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
