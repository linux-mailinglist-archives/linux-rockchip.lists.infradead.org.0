Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1659F1D9D07
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 18:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlWfB/0ZuhFXQQVWDjNXF/W/vWy7zVIXG0gtbmFomS4=; b=bUgQDqEvzdyKUL
	Eie30R8RMCi7jNbx+pNLtBwG0MsStTGHzukKvg6HsI77PrblknXLXi/32T0A7yZZ/m2fNAW6mcSb4
	rD+CFEppRyUFOh8mZLCBa2yIWSNSJfRIwrQEYeDcFTqDX6H5uKSq7fEE2xXkNFeQR/sBXA1WGj9EO
	sQTh/1Gwz2L3f/wQ1mMLsDUsxk2lhFjDkDIdJLbH4cLSCBZeh4XlH70YV+SXXT4vu09kqpsKbkLGv
	qOMxQR7tsY6qn0KdmClM4OOjikNKCHKNq3XZHHQs29L2qNa/txxGtU49OwKAUGrpe3WguHXdog/Ro
	ZXUTha/zIGZoVt3osguQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb5Iz-0008B7-KF; Tue, 19 May 2020 16:41:25 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb5Iw-0008Aj-H7
 for linux-rockchip@lists.infradead.org; Tue, 19 May 2020 16:41:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id A1FEC2A23FD
Subject: Re: [PATCH 1/2] media: staging: rkisp1 stats: set a measure flag with
 '|=' instead of '='
From: Helen Koike <helen.koike@collabora.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
 <ce920d19-c602-3ba9-2078-913bb16e8c95@collabora.com>
Message-ID: <0c22dbf1-1360-5afa-d508-f41164cf37da@collabora.com>
Date: Tue, 19 May 2020 13:41:14 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <ce920d19-c602-3ba9-2078-913bb16e8c95@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_094122_696476_D3478B6E 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 5/19/20 1:39 PM, Helen Koike wrote:
> Hi Dafna,
> 
> Thanks for the patch.
> 
> On 5/9/20 12:29 PM, Dafna Hirschfeld wrote:
>> The flag RKISP1_CIF_ISP_STAT_AFM_FIN that indicates a type of
>> statistics is mistakenly set with '=' instead of '|='
>> this might set off previous flags.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>  drivers/staging/media/rkisp1/rkisp1-stats.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
>> index 6dfcbdc3deb8..8351bda0be03 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
>> @@ -253,7 +253,7 @@ static void rkisp1_stats_get_afc_meas(struct rkisp1_stats *stats,
>>  	struct rkisp1_device *rkisp1 = stats->rkisp1;
>>  	struct rkisp1_cif_isp_af_stat *af;
>>  
>> -	pbuf->meas_type = RKISP1_CIF_ISP_STAT_AFM_FIN;
>> +	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_AFM_FIN;
> 
> It seems there is a redundancy, the place that calls this function already sets this bit.
> It seems there is a similar issue in all rkisp1_stats_get_* functions.
> 
> Could you please check and do the proper cleanup?

Please ignore my comment, for some reason I didn't see the second patch.

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> 
> Thanks
> Helen
> 
>>  
>>  	af = &pbuf->params.af;
>>  	af->window[0].sum = rkisp1_read(rkisp1, RKISP1_CIF_ISP_AFM_SUM_A);
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
