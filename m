Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 149641F780F
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jun 2020 14:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oZq18e8LkHnXvQwYTyAqPhbdQd8eN4Ui3Up+yJiCifo=; b=dmtvwnpk5kizyiVvokYJQ1rE7
	6t9vuUNaNRbjtFRS6UNfoeQpPjHx4UCOgcXVIU3gxNdGBvfkRaqLA1pLmCAr2O+ZYtSwd2iyglgZx
	e2WliSgBDsE+/KKcM3cBZJLwqqx9IUQuzCEPQ6bIyl7UheaSqk1vpPHS0+kvmBVnCfhv5kiRMsKEt
	bcyIgwSX/4MMBE/8W1N8Wcp5zsQ3+sc2sMcOfrh71Pra7FOdW1DXkPPofuf/dxSJR8rMu+mi3aaIA
	vN/0KZHE3pjws7+Vw5cWxIAlrXF88jl0HdI5wuxOvbhCcvz9BkVTnXpdFtIOgeoyn1Ik2daqUXJ1L
	Gc5u4hQHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjj3X-0003Y7-Go; Fri, 12 Jun 2020 12:45:11 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjj3S-0001rB-IN
 for linux-rockchip@lists.infradead.org; Fri, 12 Jun 2020 12:45:08 +0000
Received: from [IPv6:2003:cb:871f:5b00:2d5e:dfaf:ae68:33cc]
 (p200300cb871f5b002d5edfafae6833cc.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:2d5e:dfaf:ae68:33cc])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 347AB2A5476;
 Fri, 12 Jun 2020 13:45:03 +0100 (BST)
Subject: Re: [PATCH v2 3/4] media: staging: rkisp1: rsz: set output format to
 YUV422 if cap format is YUV444
To: Tomasz Figa <tfiga@chromium.org>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-4-dafna.hirschfeld@collabora.com>
 <CAHD77HkjjWMOcX3oLnzdMuzZM-_NSydStnzLLcHEFRenL23d-A@mail.gmail.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <aa52f9f8-d9e9-06b2-22df-bbab2d26b516@collabora.com>
Date: Fri, 12 Jun 2020 14:45:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAHD77HkjjWMOcX3oLnzdMuzZM-_NSydStnzLLcHEFRenL23d-A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_054506_756155_D516A594 
X-CRM114-Status: GOOD (  24.99  )
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



On 27.05.20 01:09, Tomasz Figa wrote:
> On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
> <dafna.hirschfeld@collabora.com> wrote:
>>
>> If the capture format is YUV444M then the memory input format
>> should be YUV422, so the resizer should not change the default
>> hdiv, vdiv in that case.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-resizer.c | 7 ++++---
>>   1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> index 04a29af8cc92..5f9740ddd558 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> @@ -394,10 +394,11 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>>           * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
>>           * streams should be set according to the pixel format in the capture.
>>           * The resizer always gets the input as YUV422. If the capture format
>> -        * is RGB then the memory input (the resizer output) should be YUV422
>> -        * so we use the hdiv, vdiv of the YUV422 info in this case.
>> +        * is RGB or YUV444 then the memory input (the resizer output) should
>> +        * be YUV422 so we use the hdiv, vdiv of the YUV422 info in this case.
>>           */
>> -       if (v4l2_is_format_yuv(cap->pix.info)) {
>> +       if (v4l2_is_format_yuv(cap->pix.info) &&
>> +           cap->pix.info->format != V4L2_PIX_FMT_YUV444M) {
>>                  src_c.width = cap->pix.info->hdiv;
>>                  src_c.height = cap->pix.info->vdiv;
> 
> As pointed out in another thread, this should have been the original
> size divided by the divisor and not just the latter alone.
> 
> It seems a bit suspicious to me that we don't need to upscale the
> chroma planes here, because it would mean that the MI itself would be
> doing some horizontal pixel doubling. The hardware documentation
> doesn't really explain this, though.
> 
> Have you been able to validate that the setting without upscaling
> indeed produces correct output?

Hi,
I investigated it again, without this patch, the frames on mainpath for YUV444 look good: https://imgur.com/a/NtazWhY
but there is a problem on selfpath: https://imgur.com/a/vQJPqAn

This patch somehow solves the problem on selfpath but ruins the frames on mainpath.

I think the bug is actually in another place in the code. The function 'rkisp1_sp_config'
sets a constant value RKISP1_MI_CTRL_SP_INPUT_YUV422 as the input format on the RKISP1_CIF_MI_CTRL register.
But the value should be set according to the configuration. For some reason the problem arises only
when trying to capture yuv444. When I capture yuv420 on the selfpath the frame looks good although the
value RKISP1_MI_CTRL_SP_INPUT_YUV422 is set.
Setting the the SP_INPUT_* according to the configuration seems to solve the problem.

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
