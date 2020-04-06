Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5488A19F5F7
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Apr 2020 14:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YxJOQpvFFgmVkNsEwF7KnA6mgnRYPmKezB9iphIXx+0=; b=ZIDWHk6cA50f1gDUO8SuN9l1N
	B4Dc/KRFZS1iEOXVtmH9Fv3Cu963iyNewc4RlZFXbTOp1LLwIqFzulkJtJwKX9b4gUQEzhYJYWOZw
	KjvSnD8zhZW9fcf8Qb4FBIGZuLvAGlx8IO/mv/oCB+GQZI5ZqfkEvapd/NnR1zxuQrP5c0n/eLfkv
	vg+d4HryFaY0bIqE4bmWuXwKvL+8Vt/GDv2QONZJHiekpQhRDopAJdRGieKR2LPE7NF4hb7dJeEpe
	EKakL+SXTrGzIEPU86JLbpOFEF47E0msGjq88NszDYsSomZKCCMjFjowYpTxfMAPLbafNWszKoAQk
	VlkzM1gVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLR5G-0007MJ-Es; Mon, 06 Apr 2020 12:42:34 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLR5D-0007Ll-4a
 for linux-rockchip@lists.infradead.org; Mon, 06 Apr 2020 12:42:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 645C2295AC3
Subject: Re: [PATCH v2 5/5] media: staging: rkisp1: cap: remove unsupported
 formats
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
 <20200402190419.15155-6-dafna.hirschfeld@collabora.com>
 <20200405224357.GR5846@pendragon.ideasonboard.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <a6ec9713-77e8-05e1-2a55-f58bca1dc853@collabora.com>
Date: Mon, 6 Apr 2020 14:42:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200405224357.GR5846@pendragon.ideasonboard.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_054231_307570_F36993F5 
X-CRM114-Status: GOOD (  18.20  )
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
Cc: dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 4/6/20 12:43 AM, Laurent Pinchart wrote:
> Hi Dafna,
> 
> Thank you for the patch.
> 
> On Thu, Apr 02, 2020 at 09:04:19PM +0200, Dafna Hirschfeld wrote:
>> For Ycbcr packed formats only YUYV can be supported by
>> the driver. This patch removes the other formats.
> 
> The RKISP1_CIF_MI_BYTE_SWAP bit could possibly help achieving other YUV
> orders, but as far as I can tell, it would affect both the main path and
> the self path, so it wouldn't be very convenient. At a quick glance I
> haven't found a way to support those formats, but just to make sure,
> have you double-checked that the nv21_self and nv21_main bits of
> MI_XTD_FORMAT_CTRL don't also affect packed mode ? If they don't,
Hi, thanks a lot for the reviews, I'll check that.

Dafna
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> Acked-by: Helen Koike <helen.koike@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 21 -------------------
>>   1 file changed, 21 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> index 2d274e8f565b..076335193f40 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> @@ -98,15 +98,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
>>   		.fmt_type = RKISP1_FMT_YUV,
>>   		.uv_swap = 0,
>>   		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>> -	}, {
>> -		.fourcc = V4L2_PIX_FMT_YVYU,
>> -		.fmt_type = RKISP1_FMT_YUV,
>> -		.uv_swap = 1,
>> -		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>> -	}, {
>> -		.fourcc = V4L2_PIX_FMT_VYUY,
>> -		.fmt_type = RKISP1_FMT_YUV,
>> -		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>>   	}, {
>>   		.fourcc = V4L2_PIX_FMT_YUV422P,
>>   		.fmt_type = RKISP1_FMT_YUV,
>> @@ -234,18 +225,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>>   		.uv_swap = 0,
>>   		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>>   		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>> -	}, {
>> -		.fourcc = V4L2_PIX_FMT_YVYU,
>> -		.fmt_type = RKISP1_FMT_YUV,
>> -		.uv_swap = 1,
>> -		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>> -		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>> -	}, {
>> -		.fourcc = V4L2_PIX_FMT_VYUY,
>> -		.fmt_type = RKISP1_FMT_YUV,
>> -		.uv_swap = 1,
>> -		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>> -		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>>   	}, {
>>   		.fourcc = V4L2_PIX_FMT_YUV422P,
>>   		.fmt_type = RKISP1_FMT_YUV,
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
