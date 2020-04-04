Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BF319E4DA
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Apr 2020 14:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v4p/JpHMM6ZaNwTRPMAUpOHG7OiiaVun/pDGOGz5kg8=; b=k20wnp/kGQ6c1UckgR6K1kIaP
	bztXL6Hu8U5+fTg2F/sPJmDYyz6WfDTZO30AoUl6iBpULAwjibfNGxglBoROajQ6U3aKMQln6LQLb
	fdR+i6XWZka/YLWc2hALPmCrRtEsDNAYJeoWGr0INwOjsKjxGS/nWZernPyZhfP557IGle01+UymW
	xXHESM2DMYHQmUv/Jn4Govqcldgwxk4MYwgO7wWEtMqLLeOICch5PZwGobcPcMOPTQABSSq1LeLKT
	rTYqUrXt4PcuJcQGJcqpwXZuzs0ZX4xFRcDHlRVkHrQpPntqb+YvPfPrUnKAQGvWr5sJQsYdB9uDS
	rnIl4L2vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKhcD-0003sy-RV; Sat, 04 Apr 2020 12:09:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKhcA-0003rp-GI
 for linux-rockchip@lists.infradead.org; Sat, 04 Apr 2020 12:09:32 +0000
Received: from [IPv6:2a02:810a:1140:6758:bcbb:8e03:fb12:bd04] (unknown
 [IPv6:2a02:810a:1140:6758:bcbb:8e03:fb12:bd04])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F3542297A11;
 Sat,  4 Apr 2020 13:09:23 +0100 (BST)
Subject: Re: [PATCH 2/3] media: staging: rkisp1: rsz: change (hv)div only if
 capture format is YUV
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org,
 ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com,
 dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
 <20200328105606.13660-3-dafna.hirschfeld@collabora.com>
 <7445ddcb-75f5-7792-0807-47c0b0d0d54a@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <711657f5-005b-fafd-6063-f8c8b61905e7@collabora.com>
Date: Sat, 4 Apr 2020 14:09:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <7445ddcb-75f5-7792-0807-47c0b0d0d54a@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_050930_672243_5FF27947 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 30.03.20 22:04, Helen Koike wrote:
> 
> 
> On 3/28/20 7:56 AM, Dafna Hirschfeld wrote:
>> RGB formats in selfpath should receive input format as YUV422.
>> The resizer input format is always YUV422 and therefore
>> if the capture format is RGB, the resizer should not change
>> the YUV rations.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-resizer.c | 14 ++++++++++++--
>>   1 file changed, 12 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> index 8704267a066f..5721eee29ecb 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> @@ -389,8 +389,18 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>>   			&rsz->rkisp1->capture_devs[rsz->id];
>>   		const struct v4l2_format_info *pixfmt_info = cap->pix.info;
>>   
>> -		hdiv = pixfmt_info->hdiv;
>> -		vdiv = pixfmt_info->vdiv;
>> +		/*
>> +		 * The resizer always get the input as YUV422
>> +		 * If the capture encoding is also YUV, then the resizer should
>> +		 * change the 4:2:2 sampling to the sampling of the capture
>> +		 * format (4:2:2 -> 4:2:0 for example).
>> +		 * If the capture format is RGB then the memory input should
>> +		 * be YUV422 so we don't change the default hdiv, vdiv
>> +		 */
>> +		if (v4l2_is_format_yuv(pixfmt_info)) {
> 
> Can't this be moved with && in the outer if statement block?

Actually the outer statement is not needed at all and can be removed
since the code return if rsz->fmt_type is RKISP1_FMT_BAYER but
the resizer format is either bayer or yuv so there is no
need for the "if (rsz->fmt_type == RKISP1_FMT_YUV)"

Thanks,
Dafna

> 
> Regards,
> Helen
> 
>> +			hdiv = pixfmt_info->hdiv;
>> +			vdiv = pixfmt_info->vdiv;
>> +		}
>>   	}
>>   	src_c.width = src_y.width / hdiv;
>>   	src_c.height = src_y.height / vdiv;
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
