Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EDA19F541
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Apr 2020 13:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GADRgPJLIZZzZB9f9ck65mCnYpGD38Kxxnv67n9FR2w=; b=sBnSd8iukpvxzyxBLOMKw33QZ
	HpZZJ0O8fUjNu7/VgV3H+9s/lLkPxzazJo1sqTA0P7nB6KT2r64SVl2jxAtpJTDTSbE6UiJY0/8H3
	hlsDV8SIl/Dh6EeOXDdlIU19flTyGeHIHS8/lknSI6QdwiJMWHUallIZAO+g2Anl7HAFMnMSSg7KR
	4mEQInVwdJl/Fwe3km57XCeO2wjqMnCUVKDrtZPJJKIneHscej+iI/FlAfbV1wJbUAQYj2pqyGo13
	Z1RNKANVB8RB2uTi/8jbf3Nn6GaQy10BnXt7ugVzPVEOn4U1MktrNH7SYgb4nxd9lQRr1XzL1hnUy
	C5NJqP6vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQN2-00082s-Ty; Mon, 06 Apr 2020 11:56:52 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQMz-00082Z-5t
 for linux-rockchip@lists.infradead.org; Mon, 06 Apr 2020 11:56:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 8979C2958A3
Subject: Re: [PATCH v2 4/5] media: staging: rkisp1: cap: support uv swapped
 plane formats
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
 <20200402190419.15155-5-dafna.hirschfeld@collabora.com>
 <20200405181623.GQ5846@pendragon.ideasonboard.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <e3b8728b-7146-30b5-2312-1b4cbac52c27@collabora.com>
Date: Mon, 6 Apr 2020 13:56:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200405181623.GQ5846@pendragon.ideasonboard.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_045649_350174_743EDC49 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 4/5/20 8:16 PM, Laurent Pinchart wrote:
> Hi Dafna,
> 
> Thank you for the patch.
> 
> On Thu, Apr 02, 2020 at 09:04:18PM +0200, Dafna Hirschfeld wrote:
>> Plane formats with the u and v planes swapped can be
>> supported by changing the address of the cb and cr in
>> the buffer.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> Acked-by: Helen Koike <helen.koike@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 17 +++++++++++++++++
>>   1 file changed, 17 insertions(+)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> index fa2849209433..2d274e8f565b 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> @@ -41,6 +41,10 @@
>>   	(((write_format) == RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA) ||	\
>>   	 ((write_format) == RKISP1_MI_CTRL_SP_WRITE_SPLA))
>>   
>> +#define RKISP1_IS_PLANAR(write_format)					\
>> +	(((write_format) == RKISP1_MI_CTRL_SP_WRITE_PLA) ||		\
>> +	 ((write_format) == RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8))
>> +
>>   enum rkisp1_plane {
>>   	RKISP1_PLANE_Y	= 0,
>>   	RKISP1_PLANE_CB	= 1,
>> @@ -788,6 +792,19 @@ static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
>>   			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CB);
>>   	}
>>   
>> +	/*
>> +	 * uv swap can be supported for plane formats by switching
>> +	 * the address of cb and cr
>> +	 */
>> +	if (RKISP1_IS_PLANAR(cap->pix.cfg->write_format) &&
> 
> As commented on patch 3/5, could this be checked from the data in
> v4l2_format_info ?
yes
> 
>> +	    cap->pix.cfg->uv_swap) {
>> +		ispbuf->buff_addr[RKISP1_PLANE_CR] =
>> +			ispbuf->buff_addr[RKISP1_PLANE_CB];
>> +		ispbuf->buff_addr[RKISP1_PLANE_CB] =
>> +			ispbuf->buff_addr[RKISP1_PLANE_CR] +
>> +			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CR);
> 
> How about
> 
> 		swap(ispbuf->buff_addr[RKISP1_PLANE_CR],
> 		     ispbuf->buff_addr[RKISP1_PLANE_CB]);
> 
> ?
This also works, theoretically if there was a format where the Cb, Cr planes
are not equal size then a swap will not work.

Thanks,
Dafna
> 
>> +	}
>> +
>>   	spin_lock_irqsave(&cap->buf.lock, flags);
>>   
>>   	/*
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
