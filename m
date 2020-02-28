Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0D2173761
	for <lists+linux-rockchip@lfdr.de>; Fri, 28 Feb 2020 13:43:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SYN33tmNzKlTgS+lZ/1LB0Y9aH+21KE0D+8YJXY0UlE=; b=IfpVpVqTfVYXEuxss3+R/bo19
	VF2+wNdejXRlj6khxNlBRVZe+BoP9eeF7sle8P/JGtDn0//4kNlTe8ktJ8dFY1aay0kfmq3YxNJBC
	c9abfsq6f+PSc74mu1zfZFRlvEqqsnEipN+oXXAKMKFNb81IFRlzQp1o0Ud97pbUOftd9hqPZ3YT1
	HaE/qPl6QGPfz6xm2xakmqsxUVE8SE/UdtozLB4BS+qWVTRXuyttq37xETSKf1gL3C33cf3ugGGVg
	lRShIvl6TucSoV1svtr540XPIDuadietiZ1el7oTXcuiEH38TdbhpDfHlA0z9Pl1uSnI1XAo8znJr
	TFZsqBmJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ez3-0007TK-LF; Fri, 28 Feb 2020 12:43:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7eyp-0007Iy-8f; Fri, 28 Feb 2020 12:43:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 66E794B2;
 Fri, 28 Feb 2020 04:42:58 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 229663F7B4;
 Fri, 28 Feb 2020 04:42:57 -0800 (PST)
Subject: Re: [PATCH 3/4] dt-bindings: arm: fix Rockchip rk3399-evb bindings
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
References: <20200228061436.13506-1-jbx6244@gmail.com>
 <20200228061436.13506-3-jbx6244@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <78b8b53f-2e2a-3804-41fb-bb2610947ca2@arm.com>
Date: Fri, 28 Feb 2020 12:42:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200228061436.13506-3-jbx6244@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_044259_350218_50C548BD 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 28/02/2020 6:14 am, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: /: compatible:
> ['rockchip,rk3399-evb', 'rockchip,rk3399', 'google,rk3399evb-rev2']
> is not valid under any of the given schemas
> 
> Fix this error by adding 'google,rk3399evb-rev2' to the compatible
> property in rockchip.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index d303790f5..6c6e8273e 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -509,6 +509,7 @@ properties:
>           items:
>             - const: rockchip,rk3399-evb
>             - const: rockchip,rk3399
> +          - const: google,rk3399evb-rev2

This looks wrong - the board can't reasonably be a *more* general match 
than the SoC. If this is supposed to represent a specific variant of the 
basic EVB design then it should come before "rockchip,rk3399-evb" (and 
possibly be optional if other variants also exist).

Robin.

>   
>         - description: Rockchip RK3399 Sapphire standalone
>           items:
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
