Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E995144009
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Jan 2020 15:57:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RHK03R8AlROfgH7Y5Y/QkRo7NCE+7nWXNlvSx9wmsDM=; b=NRQtWnGmS/G29olYVHrWKMlWf
	jHpb4WLyXs6VoY5Lp5ngmwYIZ0KXWRe/WqSS/uyC8swJ051Smh4/8hznOZMwvVk7e+W0G+je9/YqZ
	PzUqswT33eUXkebKnfCRqtceVqJOWOUXZKr1ae2+JjwrBsvb51HoItncTAKiS4SxtatsAGa0qTIJX
	wQdf3UiNTEhNTQpmmH0g//3k0H/D9j8j6psGusc7T0wKh0TYz8BdDjjbdzLLwNXYcgEb8QfrvCTsF
	z0oLRklGILkQ9Pv87/oupGhGj+0389a0lWhv0budkdWm9+hV6kWkInFm6PM30lM+mwLRzfQMenDS1
	l9EZnCmeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ituxu-0001X9-RU; Tue, 21 Jan 2020 14:57:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituxh-0001MA-FQ; Tue, 21 Jan 2020 14:57:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0F0330E;
 Tue, 21 Jan 2020 06:57:00 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D725C3F52E;
 Tue, 21 Jan 2020 06:56:59 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: fix px30 lvds ports
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
References: <20200121134510.3893487-1-heiko@sntech.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1cd15d49-3c4f-6da2-4d4f-0414dd6d6adc@arm.com>
Date: Tue, 21 Jan 2020 14:56:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200121134510.3893487-1-heiko@sntech.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_065701_575808_748AD72F 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 christoph.muellner@theobroma-systems.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, miquel.raynal@bootlin.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 21/01/2020 1:45 pm, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The lvds controller has two ports. port@0 for the connection
> to the display controller(s) and port@1 for the connection to
> the panel, so should have a ports node covering the port@x nodes.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   arch/arm64/boot/dts/rockchip/px30.dtsi | 23 ++++++++++++++---------
>   1 file changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 9b1c92132007..37e014444214 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -421,19 +421,24 @@ lvds: lvds {
>   			rockchip,output = "lvds";
>   			status = "disabled";

FWIW, the main node's "#{address,size}-cells" properties above here 
should now be unnecessary too.

Robin.

>   
> -			port@0 {
> -				reg = <0>;
> +			ports {
>   				#address-cells = <1>;
>   				#size-cells = <0>;
>   
> -				lvds_vopb_in: endpoint@0 {
> +				port@0 {
>   					reg = <0>;
> -					remote-endpoint = <&vopb_out_lvds>;
> -				};
> -
> -				lvds_vopl_in: endpoint@1 {
> -					reg = <1>;
> -					remote-endpoint = <&vopl_out_lvds>;
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					lvds_vopb_in: endpoint@0 {
> +						reg = <0>;
> +						remote-endpoint = <&vopb_out_lvds>;
> +					};
> +
> +					lvds_vopl_in: endpoint@1 {
> +						reg = <1>;
> +						remote-endpoint = <&vopl_out_lvds>;
> +					};
>   				};
>   			};
>   		};
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
