Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F8F1DC197
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 May 2020 23:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/51VrIIdRuRiUU1Bg2THBfNhlwY53jozVV30EDaKqgg=; b=nPwmQqTKUMIFF6paxfabYaMJ+8
	lC4BdSmKs33dWEDkqzgU0AOX+mkf6IQrByUVkw9BgEATVLY96qXYIbzBP/3gH9nEFxBFZUN1inp7r
	ccwm/6fYft1oIwmyUXrHhdSJmUNDfS8gQSDqYejDMbUpNXJt4CzbP3l6ERhR9j9BRvUqfpDkEc3kY
	nbOZtGTHAcSA9ADQZ0Qs4T0Pbha3aPfqu98dIs+N/vqjk1DhLJavLe9/pozFNHgb2eGSjI879YLju
	1l+VLFIw612s14R1EyBvlZ0eMzzBbqfddDmUKfgt1RpxkOS7OeLGO3w1Cn2SL2HZc/V8QSfBi8Ncl
	bwktmDkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWbR-0002IO-SV; Wed, 20 May 2020 21:50:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWbO-0001yf-8m
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 21:50:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id E88302A2CEA
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: cap: change RGB24 format
 to XBGR32
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-2-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <cf93943a-c064-6b49-eb66-99bf38378e17@collabora.com>
Date: Wed, 20 May 2020 18:50:01 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200515142952.20163-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_145014_441205_F08F9C59 
X-CRM114-Status: GOOD (  14.98  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
> According to the TRM, the YUV->RGB conversion outputs
> "24 bit word". What it means is that 4 bytes are used with
> 24bit for the RGB and the last byte is ignored.
> This matches format V4L2_PIX_FMT_XBGR32.

I would just improve this a bit, since you only mention the number of bytes, but
doesn't mention why the colors are swapped.

My suggestion:

According to the TRM, the YUV->RGB conversion outputs RGB 888 format
with 4 bytes, where the last byte is ignored, using big endian representation:

________________________________
|___X___|___R___|___G___|___B___|
31      24      16      8       0

Which matches format V4L2_PIX_FMT_XBGR32 in little endian representation, so
replace it accordingly.


With this clarification:

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks,
Helen

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index f69235f82c45..61b9ebe577b2 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -276,7 +276,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  	},
>  	/* rgb */
>  	{
> -		.fourcc = V4L2_PIX_FMT_RGB24,
> +		.fourcc = V4L2_PIX_FMT_XBGR32,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
>  	}, {
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
