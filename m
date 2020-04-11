Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFCE1A5149
	for <lists+linux-rockchip@lfdr.de>; Sat, 11 Apr 2020 14:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dqjUZ068cDHVjXauryPf7ogi3BRh8gQrqm9KFGpXgvU=; b=FDSFlCBi8+3pXR6y4WrR96NQP
	LUZ8ywUtRzUyn3XPpIimFjktpkQsJ7ewY4iCv0jy2xtBp8n/IInvbqDV9bfTiEpwG7QDwDeDfhLBD
	IuNr1n6TMRBqxUuCwX5H8BvIjX9cdIyq+swfa8wTFwnjhwhIVqSt9vvm+566ptpAGkQUNEnXqqZ/D
	9LyP/Uc/O0Gb+Erv2SH1MMGrjB9IRhl9pLEDej7ktZq4hJeP3ke/Tv2kArxRdUIQ8DoncQoteTBcE
	gdoQhyBdfrgeGRqXbNAsvyJLx/XqUpAAq/BIRZaM6WjfqDFS0+J0KTD8MWDf2d1IeNfaHMurYn8kW
	VqdPzxL7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNFBj-0004XQ-VA; Sat, 11 Apr 2020 12:24:43 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNFBg-0004Wu-7u
 for linux-rockchip@lists.infradead.org; Sat, 11 Apr 2020 12:24:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 4F6152A07CD
Subject: Re: [PATCH v3 3/6] media: staging: rkisp1: cap: change the logic for
 writing to uv swap register
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200408114822.27360-1-dafna.hirschfeld@collabora.com>
 <20200408114822.27360-4-dafna.hirschfeld@collabora.com>
 <20200408121011.GE4881@pendragon.ideasonboard.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <b27c1762-cdd6-a010-0950-ae2eec89ccab@collabora.com>
Date: Sat, 11 Apr 2020 14:24:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200408121011.GE4881@pendragon.ideasonboard.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_052440_716278_4A36CB79 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 4/8/20 2:10 PM, Laurent Pinchart wrote:
> Hi Dafna,
> 
> Thank you for the patch.
> 
> On Wed, Apr 08, 2020 at 01:48:19PM +0200, Dafna Hirschfeld wrote:
>> The register RKISP1_CIF_MI_XTD_FORMAT_CTRL is currently written
>> with "on" only if the u,v streams need to be swapped. This patch
>> also write to it with "off" if they don't need to be swapped.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> 
> I think you can squash this with 1/6 and 2/6.
Hi, as Helen already commented, since it is a combination of
cleanups and bug fixes, I think it is better to keep them separated.

Thanks,
Dafna
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 21 ++++++++++---------
>>   1 file changed, 11 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> index 5d0e489505f0..4830083c33fd 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> @@ -383,12 +383,12 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
>>   		     cap->config->mi.cr_size_init);
>>   
>>   	rkisp1_irq_frame_end_enable(cap);
>> -	if (cap->pix.cfg->uv_swap) {
>> -		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>> -
>> +	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>> +	if (cap->pix.cfg->uv_swap)
>>   		reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
>> -		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>> -	}
>> +	else
>> +		reg &= ~RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
>> +	rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>>   
>>   	rkisp1_mi_config_ctrl(cap);
>>   
>> @@ -406,7 +406,7 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
>>   {
>>   	const struct v4l2_pix_format_mplane *pixm = &cap->pix.fmt;
>>   	struct rkisp1_device *rkisp1 = cap->rkisp1;
>> -	u32 mi_ctrl;
>> +	u32 mi_ctrl, reg;
>>   
>>   	rkisp1_write(rkisp1, rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_Y),
>>   		     cap->config->mi.y_size_init);
>> @@ -420,12 +420,13 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
>>   	rkisp1_write(rkisp1, cap->sp_y_stride, RKISP1_CIF_MI_SP_Y_LLENGTH);
>>   
>>   	rkisp1_irq_frame_end_enable(cap);
>> -	if (cap->pix.cfg->uv_swap) {
>> -		u32 reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>>   
>> +	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>> +	if (cap->pix.cfg->uv_swap)
>>   		reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
>> -		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>> -	}
>> +	else
>> +		reg &= ~RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
>> +	rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>>   
>>   	rkisp1_mi_config_ctrl(cap);
>>   
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
