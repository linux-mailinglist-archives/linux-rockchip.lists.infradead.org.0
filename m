Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D7C153229
	for <lists+linux-rockchip@lfdr.de>; Wed,  5 Feb 2020 14:45:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNacbBHvG37BjdL6fijYYTaf4Cw9HCcDfAt4dJvm5ac=; b=lg8mc37liddnRV
	JzziY3Qt3EZ6VcXCinWUvZHgbjeFu20+7xUGcwVtSGcceTIIum/iUe8RgBn6p+j5DNCkFxYXbNzrT
	h+pK353YQgC7aZXFACtcafitmBC4t9Kr+GBg1uNqJ2IViTm6DWJ1hRx79rUY+Nw42Xv8Pt0Bwz5IE
	S0r/3p1HDj1WgKaotkWrZlaKhxerKnANCZjneMhQyoylR3zpHqHkMl1T/Nl9ChHnyXhuFuFo1wQbQ
	gUCVlm2TPRirArDuKoPgsjBZALMceBofZv6Vvvn2kWpNvNLmqDEgSswRm2HKtluy5htmcqbn8QK0m
	0bEt7Wh35IILNfRI/EIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izL07-00085I-N2; Wed, 05 Feb 2020 13:45:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izL04-00084U-85
 for linux-rockchip@lists.infradead.org; Wed, 05 Feb 2020 13:45:53 +0000
Received: from [IPv6:2804:214:85ec:bd22:b29b:72b8:8fc3:cfae] (unknown
 [IPv6:2804:214:85ec:bd22:b29b:72b8:8fc3:cfae])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9B23F2947F3;
 Wed,  5 Feb 2020 13:45:46 +0000 (GMT)
Subject: Re: [PATCH] media: staging: rkisp1: fix test of return value of
 media_entity_get_fwnode_pad
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
 <20200204214446.20381-2-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <c814ef05-24ab-d8d8-f839-c2228d0ad15f@collabora.com>
Date: Wed, 5 Feb 2020 10:45:41 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200204214446.20381-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_054552_427054_27E35B7E 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 2/4/20 7:44 PM, Dafna Hirschfeld wrote:
> media_entity_get_fwnode_pad returns negative value on error
> and the pad numeber on success. Therefore change the error test
> from 'if (ret)' to 'if (ret < 0)' .
> 
> Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-dev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> index 21837d4dc9e1..9d866396a5de 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -128,7 +128,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
>  
>  		ret = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
>  						  MEDIA_PAD_FL_SOURCE);
> -		if (ret) {
> +		if (ret < 0) {
>  			dev_err(sd->dev, "failed to find src pad for %s\n",
>  				sd->name);
>  			return ret;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
