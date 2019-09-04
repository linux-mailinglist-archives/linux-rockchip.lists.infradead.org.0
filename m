Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D82A835D
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 15:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVFAzcvGwWR6kJg99Qdv7WWGjZvjbq8uuKkqS9bYfPs=; b=fXZx9BznC9VP8s
	iPG6xGTGcfLaxYnScC42kPd/9JTcEA7vI9U4KwmhiZg91UlOclQbUXXaYStSZgJ32qjPH9CiYTVtg
	btz0y9RoXNAYV/FvI9K4vrj7iJDC1xcTamEmZfF6RZQhV22ksqx1PHR4dR4zOV4oxhARZt16Ify8J
	M3qtLFtq7WJb5sLTaEPQ7zWaUDmAmLFNkKxRM7LLcbcEnUQcOLWVFwGI5PAMX9NJ65qSR29Xkvcp8
	namXwX3M6zIkj195JbRbZEXNbkRfgF2jzMfAmgzCOiE9ho1iJHhRRWRhAGJmmzq0+LFXkHVGwMzWw
	V+bC85j2n0JXeSJefrtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5V0n-00058Y-BS; Wed, 04 Sep 2019 13:07:49 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5V0k-0004yw-3u
 for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2019 13:07:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 9EE3728D622
Message-ID: <b7a43c96fa861de1dbbe969e3aaa4220e7e96793.camel@collabora.com>
Subject: Re: [PATCH 01/12] media: hantro: Fix H264 max frmsize supported on
 RK3288
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Date: Wed, 04 Sep 2019 10:07:36 -0300
In-Reply-To: <HE1PR06MB4011EAB6F0965D47A20AF805ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <HE1PR06MB4011EAB6F0965D47A20AF805ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_060746_295349_E8CB500E 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Jonas,

Thank you for the patch.

On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
> TRM specify supported image size 48x48 to 4096x2304 at step size 16 pixels,
> change frmsize max_width/max_height to match TRM.
> 

The RK3288 TRM v1.1 (2015-8-20) I have here mentions a maximum
of 3840x2160.

I must admit I haven't tested with actual content this size
to verify it, have you checked it?

Thanks,
Ezequiel
 
> Fixes: 760327930e10 ("media: hantro: Enable H264 decoding on rk3288")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> index 6bfcc47d1e58..ebb017b8a334 100644
> --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
> +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> @@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
>  		.max_depth = 2,
>  		.frmsize = {
>  			.min_width = 48,
> -			.max_width = 3840,
> +			.max_width = 4096,
>  			.step_width = H264_MB_DIM,
>  			.min_height = 48,
> -			.max_height = 2160,
> +			.max_height = 2304,
>  			.step_height = H264_MB_DIM,
>  		},
>  	},



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
