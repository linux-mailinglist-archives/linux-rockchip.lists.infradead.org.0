Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D5A1B7601
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 Apr 2020 14:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqD9YEiHe2KSxFcLB1bnFRvDFi8x6zsJtTJjTdOUy1k=; b=R3fvSMtQiP0q9Q
	beosx5FOZ4cRHqY+Z5Z7eI97b9hzcFjhyjIAGf77MyGPy8YW8ljOGoaWMWQj+R1bbgb+Y241OOz6H
	4BzEBdLmObg4grV+sUwKk5hrnfJ1IuI3LLKlZ1g6ofs9tAoL/oYlOQyun0DGCJPh9tWXl8ohEFaPn
	klzf3LLHn6plNj7I7o4XpivBFke5+X9boqd8BoLX4qMQORJEu9+FveTy5SpQW++tuGEgOhwIWiQ+g
	BOVt1K0Yq/Uj/JC/Ju+lcPxMdYVZS60mV0IB/9kgQy7E2un1SYik6brOeFvvU7vp4TpUFL+iKsHZJ
	KgSV+lt+ZYAgk0a1fEfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRxqp-0005ka-7Z; Fri, 24 Apr 2020 12:54:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRxqU-0005Vu-6N; Fri, 24 Apr 2020 12:54:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E0DE32A2C38
Message-ID: <cf31ae67792aedf60ee4cf8002861edadc305314.camel@collabora.com>
Subject: Re: [PATCH v2 3/4] media: rockchip: rga: Add support for the PX30
 compatible
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Fri, 24 Apr 2020 09:54:04 -0300
In-Reply-To: <20200423200937.1039257-4-paul.kocialkowski@bootlin.com>
References: <20200423200937.1039257-1-paul.kocialkowski@bootlin.com>
 <20200423200937.1039257-4-paul.kocialkowski@bootlin.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_055418_360858_27D4B339 
X-CRM114-Status: GOOD (  14.43  )
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
Cc: justin.swartz@risingedge.co.za, Heiko Stuebner <heiko@sntech.de>,
 Hans Verkuil <hansverk@cisco.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Johan Jonker <jbx6244@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hey Paul,

Thanks for the patch!

On Thu, 2020-04-23 at 22:09 +0200, Paul Kocialkowski wrote:
> The PX30 SoC has a RGA block, so add the associated compatible to
> support it.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index 9d122429706e..4fb4615662b7 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -955,6 +955,9 @@ static const struct dev_pm_ops rga_pm = {
>  };
>  
>  static const struct of_device_id rockchip_rga_match[] = {
> +	{
> +		.compatible = "rockchip,px30-rga",
> +	},

Please note that if you don't have anything px30-specific,
then you don't need the compatible in the driver.

You can have something like:

compatible = "rockchip,px30-rga", "rockchip,rk3288-rga"

so you need to add it to the bindings. See Justin Swartz
recent patches for rk3228.

Down the road, if you find something specific for px30,
you can make the driver aware. 

Cheers,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
