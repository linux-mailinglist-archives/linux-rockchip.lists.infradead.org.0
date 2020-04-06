Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5557819F478
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Apr 2020 13:21:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QmxZeZM6lDWCpj95TY1VJhFOe5oWeeYDEFmIaQgoftg=; b=MKBLA6R2DOk7R8krMEjY8xwL7
	Jl1rDRPXT1KS2iAeco3qRKuYBZDsmWKcP7hx7B7adlNsmMbDOYxK1Es2wKmOhSxVro1NC7sDQ4rbl
	+GsXbGx6NiX0XIDqfn5Hu5Q9E762T57C2NSsm9DRbdgbmjh6CbylsAJG7o9zJ+5Z1IEmHw3olpKXG
	jxiBWbh1tg/7khI23JjQ2ltZxWtCv3cJpyBDbyaP304i+92SS0SwhNgSgWRShkEaiaFQqlhPaSAwK
	0UmIGleNg0EGhAVzXfaAIkBei1Qx53Hni32O8iyJRM1JGyTJt13yn9cKPjA0mxbuDBG2BMcrD0x9X
	BALegx0AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLPoK-0001QX-Ak; Mon, 06 Apr 2020 11:21:00 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLPoH-0001Pw-Fh
 for linux-rockchip@lists.infradead.org; Mon, 06 Apr 2020 11:20:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id E6A8928EA9F
Subject: Re: [PATCH v2 2/5] media: staging: rkisp1: cap: fix value written to
 uv swap register in selfpath
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
 <20200402190419.15155-3-dafna.hirschfeld@collabora.com>
 <20200405181044.GO5846@pendragon.ideasonboard.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <8117add9-3780-3913-2b4f-3585a3c738e9@collabora.com>
Date: Mon, 6 Apr 2020 13:20:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200405181044.GO5846@pendragon.ideasonboard.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_042057_659467_9DA9F55C 
X-CRM114-Status: GOOD (  17.76  )
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



On 4/5/20 8:10 PM, Laurent Pinchart wrote:
> Hi Dafna,
> 
> Thank you for the patch.
> 
> On Thu, Apr 02, 2020 at 09:04:16PM +0200, Dafna Hirschfeld wrote:
>> The value RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP should be
>> set to the register instead of masking with ~BIT(1)
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> index 5700d7be2819..84a3cf565106 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> @@ -469,8 +469,8 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
>>   	if (cap->pix.cfg->uv_swap) {
>>   		u32 reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>>   
>> -		rkisp1_write(rkisp1, reg & ~BIT(1),
>> -			     RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>> +		reg = reg | RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
>> +		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> 
> This indeed simplifies the code, but I think the logic is wrong in the
> first place. Shouldn't this be
> 
> 	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> 	if (cap->pix.cfg->uv_swap)
> 		reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
> 	else
> 		reg &= ~RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
> 	rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> 
> ? Same for patch 1/5.
Right, I'll send v3.

Thanks,
Dafna
> 
>>   	}
>>   
>>   	rkisp1_mi_config_ctrl(cap);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
