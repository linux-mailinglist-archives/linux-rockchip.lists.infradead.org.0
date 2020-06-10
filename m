Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E84CC1F5B51
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 20:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q53icm3T5iV2XOL//mZxpoXcWH7C7Y7vk1TxsJw+D5w=; b=GrO3t+SvqRN6jqMAIeU+pE+W9
	6owfPfuVnwvModKWe6d29ZY1cgDNXuLs3qnodv1q6zxXlNbNB84c2CZ57u4WTpSapKtXzj19R975X
	oH/RhKj5B4FaMyUFK7qDwM4sT7vFqPG3Zln99/DP9jIHJXqyeVS7WUq5XZPyg3nfb/PfXsce8hRy/
	JVQRhksLMEevmTI3DjEmVWD3vOD7pTVKvbl8GpazNJr++G6jsXA130s5y9sOZSD4dpObhztdchh2s
	JLoFILI7DzoDWEPLlhYpcMuNMfCELxE2MEXtkjitfYNCH4GdyHqAwpmyKanQWMQuNPVBSZR8EH6dJ
	/gSirCneQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5av-00082e-N6; Wed, 10 Jun 2020 18:37:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5as-00081v-Dv
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 18:37:00 +0000
Received: from [IPv6:2003:cb:871f:5b00:9cc4:c525:7ca2:283]
 (p200300cb871f5b009cc4c5257ca20283.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:9cc4:c525:7ca2:283])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 02AF12A24B5;
 Wed, 10 Jun 2020 19:36:53 +0100 (BST)
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: rsz: supported formats are
 the isp's src formats, not sink formats
To: Tomasz Figa <tfiga@chromium.org>
References: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
 <20200609152825.24772-2-dafna.hirschfeld@collabora.com>
 <20200610171511.GD201868@chromium.org>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <bf42a283-7aa5-330e-8a50-8bf7680cbd1f@collabora.com>
Date: Wed, 10 Jun 2020 20:36:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200610171511.GD201868@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_113658_596789_63F04840 
X-CRM114-Status: GOOD (  22.93  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 10.06.20 19:15, Tomasz Figa wrote:
> Hi Dafna,
> 
> On Tue, Jun 09, 2020 at 05:28:22PM +0200, Dafna Hirschfeld wrote:
>> The rkisp1_resizer's enum callback 'rkisp1_rsz_enum_mbus_code'
>> calls the enum callback of the 'rkisp1_isp' on it's video sink pad.
>> This is a bug, the resizer should support the same formats
>> supported by the 'rkisp1_isp' on the source pad (not the sink pad).
>>
>> Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> Acked-by: Helen Koike <helen.koike@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-resizer.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
> 
> Thank you for the patch. Please see my comments inline.
> 
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> index d049374413dc..d64c064bdb1d 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> @@ -437,8 +437,8 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
>>   	u32 pad = code->pad;
>>   	int ret;
>>   
>> -	/* supported mbus codes are the same in isp sink pad */
>> -	code->pad = RKISP1_ISP_PAD_SINK_VIDEO;
>> +	/* supported mbus codes are the same in isp video src pad */
>> +	code->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
>>   	ret = v4l2_subdev_call(&rsz->rkisp1->isp.sd, pad, enum_mbus_code,
>>   			       &dummy_cfg, code);
> 
> Actually, is this really the true? AFAIR the ISP itself can only output
> either Bayer or YUV 4:2:2. The resizer can take YUV 4:2:2 at its input
> and output YUV 4:4:4, 4:2:2 and 4:2:0. Bayer capture is handled with
> resizer bypass mode. We haven't tested that, but if implemented, it
> should probably be done by exposing a link between the ISP entity and a
> video node directly, without the resizer involved.
> 
> WDYT?

We can also implement it that way. Only the mainpath needs
a direct link from the isp since selfpath does not support bayer formats.
It makes it easier on userspace for bayer formats since it does not have to
configure the resizer.
On the other hand if the format is YUV it has the option
to either use the the resizer or not.

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
