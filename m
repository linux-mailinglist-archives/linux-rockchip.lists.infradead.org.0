Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DC81DBDEA
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 May 2020 21:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=61hzlXrtTfjsb8vKWL6D2nii9b+0el1GkSH9V4Dcgjw=; b=aDzJBxe9ILNaRFYGe52g79VSP
	TaP2jgAEegXg0r+a9RoCTSLiqpqmI7tDAf9Jt3qpwC4U1dcmpoDDJV3s9KyEwqFubbmHGDu5Mx5M3
	myAnWCL4uoN2LqHTI2E2XdBbBUnZun2Jj9qZ1takRPD9Y16pXBEmRVpC5o1rFF1Rqb5G+H4p3B8hI
	f+xnC9iaz/PYl672SWOZWt73YFUoKM0BKUUDYQ5tPs6EtotJGJWzMLlzFuelfko9iz07vkR9fKpYF
	W6kaxuW/pkouSOd1NPRE5xvQ7MwtHHWIVJRXXVU8FKqbLhF1WmOQdTzCok3qTPYBNh8/SS4bTTWMy
	aXECs12DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbUIZ-0002sA-Qf; Wed, 20 May 2020 19:22:39 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbUIV-0002rK-HV
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 19:22:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id D91B9260D52
Subject: Re: [PATCH 3/5] media: staging: rkisp1: stats: use spin_lock_irqsave
 for irq_lock
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org
References: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
 <20200512120522.25960-4-dafna.hirschfeld@collabora.com>
 <2d3f52d2-73d7-1e8d-eee3-669012854491@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <5c76ffe9-db3e-20a0-f280-75ded6c72e2c@collabora.com>
Date: Wed, 20 May 2020 21:22:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <2d3f52d2-73d7-1e8d-eee3-669012854491@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_122235_711168_CAFF5F8C 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 20.05.20 13:11, Helen Koike wrote:
> Hi Dafna,
> 
> On 5/12/20 9:05 AM, Dafna Hirschfeld wrote:
>> Currently 'spin_lock' is used in order to lock the 'irq_lock'.
>> This should be replaced with 'spin_lock_irqsave' since it is
>> used in the irq handler.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-stats.c | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
>> index 12998db955e6..5578fdeb8a18 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
>> @@ -403,9 +403,10 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
>>   	struct rkisp1_device *rkisp1 = stats->rkisp1;
>>   	struct rkisp1_isp_readout_work *work;
>>   	unsigned int isp_mis_tmp = 0;
>> +	unsigned long flags;
>>   	u32 val;
>>   
>> -	spin_lock(&stats->irq_lock);
>> +	spin_lock_irqsave(&stats->irq_lock, flags);
> 
> Since you are moving this function to a threaded irq handler, you won't be in interrupt context.
> 
> The spin_lock_irqsave() function disable interrupts for the critical section, are you sure this is
> required?
Hi,
The lock is also used in the hard irq handler in the patch that moves the statistics to threaded interrupt.
The code in the hard irq iterates the buffers queue to find the next buffer available and set the flags of
the ready statistics on it.

Thanks,
Dafna

> 
> Regards,
> Helen
> 
>>   
>>   	val = RKISP1_STATS_MEAS_MASK;
>>   	rkisp1_write(rkisp1, val, RKISP1_CIF_ISP_ICR);
>> @@ -435,7 +436,7 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
>>   	}
>>   
>>   unlock:
>> -	spin_unlock(&stats->irq_lock);
>> +	spin_unlock_irqrestore(&stats->irq_lock, flags);
>>   }
>>   
>>   static void rkisp1_init_stats(struct rkisp1_stats *stats)
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
