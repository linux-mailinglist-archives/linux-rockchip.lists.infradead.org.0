Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1AD1D45B2
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 08:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d0kyPiEI/YKTJ5+xLddKQrIoOR8DsCsuhSWQMWmC7n8=; b=ntsxYdtXj9H8XVdTN9wTQger2
	sF3Axmi4czVaPt8/YR85Rc9xB8OHX+kZrNBNVq3ryMAcu72J4uNREIXkW5zVXuGAld/MLqvMVZ7mO
	xtRWCghRVWtaQE7NbmlZjUPhbeg7ZmhGfgyMhZDPZzUOWpIc0ATq6fRxa4fUJllr7sek0CEdCsb/u
	wpyMRKUi6VK2K8No9BO9FwqkPhcBKc35tAlS13R1Fud5TmLEl/RNvnEIkgHjye5aCY+BMy+55C5dF
	1PqLzCj7Y/YXmCy/QZZjk2AtZLtT92ZRApGcjCxrLWappLygU1S4uH9vq4FchW1cmsnRrzuxHTp6E
	ECwmTdVKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZTe0-0001Cb-FG; Fri, 15 May 2020 06:16:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZTdv-0001Bt-39
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 06:16:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 4AF372A31F3
Subject: Re: [PATCH] media: staging: rkisp1: cap: change RGB24 format to XBGR32
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org,
 ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com,
 dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
References: <20200328135311.21221-1-dafna.hirschfeld@collabora.com>
 <7d387293-5fc8-6d6e-bc5a-03138a247d50@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <e9b91595-be82-c0d6-339c-daf61faa9821@collabora.com>
Date: Fri, 15 May 2020 08:16:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <7d387293-5fc8-6d6e-bc5a-03138a247d50@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_231623_266696_B8B35EDC 
X-CRM114-Status: GOOD (  17.50  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

hi,
thanks for the review

On 30.03.20 22:19, Helen Koike wrote:
> 
> 
> On 3/28/20 10:53 AM, Dafna Hirschfeld wrote:
>> According to the manual, the YUV->RGB conversion outputs
> 
> s/manual/datasheet
It is actually from the TRM
> 
>> "24 bit word" that means that each pixel is 4 byte but the last
>> one should be ignored. This matches format V4L2_PIX_FMT_XBGR32.
> 
> I think you can re-word this a bit, since 24bits is 3 bytes, and this doesn't mean 4 bytes are used.
> 
> I guess you meant that datasheet says 4 bytes are used, with 24bits for the RGB and the last byte is ignored.
indeed, i'll change that
> 
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>> The patch rebased on to of the patch
>> "media: staging: rkisp1: cap: remove field fmt_type from struct rkisp1_capture_fmt_cfg"
>>
>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> index 3abf38362f5a..5f248b68190e 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> @@ -281,7 +281,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>>   	},
>>   	/* rgb */
>>   	{
>> -		.fourcc = V4L2_PIX_FMT_RGB24,
>> +		.fourcc = V4L2_PIX_FMT_XBGR32,
> 
> Shouldn't it be V4L2_PIX_FMT_RGBX32 ?> 
> Or the colors are inverted as well?
yes, the bytes are inverted

Thanks,
Dafna
> 
> Regards,
> Helen
> 
>>   		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>>   		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
>>   	}, {
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
