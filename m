Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94BD173748
	for <lists+linux-rockchip@lfdr.de>; Fri, 28 Feb 2020 13:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OsBQv5o7YnKco/Z4VFdu9kxsu0V2VrvbTyb+betbB24=; b=G0fGcjmgkKSFoCL90wo3R/cuS
	hhywlJ18klR0gyto0FQvs+6gXXkS2f3FYkMS7Y6Fw40ynbCZwRq8TCQHnX7f8LkVV5kzqk6X8P8RJ
	+179ocWdCxRZQUxT0G7nARFoSVvZwKR5FBv85hbEVkY4fKklkH7eHmt5L8/OvpzZBSHF6O4d5gfSl
	BCVNRKQ4I5VjC9ncm7ZixwRisdH+ILO3p7hD3iSvuzW/tV8hhpjFo6JLp4nE87MZ8vw5XqnqoHs/l
	sMPf2T0wG1D7KrkfYi9j23GEfuoWwYq5QFTs83AqTTKbojwnxspKTPbs8YPsYlomCyTexOMXA9+Le
	ASF+Wzdlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ert-0005CM-Pk; Fri, 28 Feb 2020 12:35:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7eri-00053P-Ev; Fri, 28 Feb 2020 12:35:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E87D4B2;
 Fri, 28 Feb 2020 04:35:38 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B36883F7B4;
 Fri, 28 Feb 2020 04:35:36 -0800 (PST)
Subject: Re: [PATCH 1/4] dt-bindings: arm: fix Rockchip Kylin board bindings
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
References: <20200228061436.13506-1-jbx6244@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <73b41bd1-01e9-6af8-afc8-b1a96614d026@arm.com>
Date: Fri, 28 Feb 2020 12:35:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200228061436.13506-1-jbx6244@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_043538_545044_AB281676 
X-CRM114-Status: GOOD (  16.81  )
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
> arch/arm/boot/dts/rk3036-kylin.dt.yaml: /: compatible:
> ['rockchip,rk3036-kylin', 'rockchip,rk3036']
> is not valid under any of the given schemas
> 
> Fix this error by changing 'rockchip,kylin-rk3036' to
> 'rockchip,rk3036-kylin' in rockchip.yaml.

Although I can guess, it might be worth a note to explain why it's the 
binding rather than the DTS that gets changed here.

Robin.

> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 874b0eaa2..203158038 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -443,7 +443,7 @@ properties:
>   
>         - description: Rockchip Kylin
>           items:
> -          - const: rockchip,kylin-rk3036
> +          - const: rockchip,rk3036-kylin
>             - const: rockchip,rk3036
>   
>         - description: Rockchip PX3 Evaluation board
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
