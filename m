Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B79174A76
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Mar 2020 01:29:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrS1y7GmgRN1QloiQmDwVRNefMP3M9bOyohVpXKVxaM=; b=qp+QvuXyX1RBw2
	tlKmLVeLZEvkq6pyBQ3bjxG9otilxQ0BvL6OEX2uAXcGTLVE5oZyL+J2iEkzWoIZ86z7NEelojQ9X
	QQEWdBmy7Lhl8St3OTKchl38IWNxn3QkVDjSIbo5PJBCPq+JLtRNBC/3+6NyUEyafA5lJRCqc35Em
	tOc1a78iSr/uZhpclHEfrUO1/3f1+qgKfwCJg16Re9Z5g5ybYe7G/0zuREq7hhcgav5kDqcZXpAzH
	d2qqgnafzzI0lDoOAKtMTm8M/+Mwia17ZVrAgo0fEMnyKZ8eRzqQ3ICBA8j9vnLDQGzSYJSoroav3
	ILrJ0PO6M+GJeLYujX9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8CUW-0005Od-Em; Sun, 01 Mar 2020 00:29:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8CUD-0005EZ-RE; Sun, 01 Mar 2020 00:29:39 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8CU0-0004yv-LN; Sun, 01 Mar 2020 01:29:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Justin Swartz <justin.swartz@risingedge.co.za>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH v4 1/3] [media] dt-bindings: Add binding for rk3228 rga
Date: Sun, 01 Mar 2020 01:29:23 +0100
Message-ID: <7950264.35eqgo7tFu@phil>
In-Reply-To: <4e66b3f029c56d7c7709d39ed15894b86f51fd37.1580768038.git.justin.swartz@risingedge.co.za>
References: <cover.1580768038.git.justin.swartz@risingedge.co.za>
 <4e66b3f029c56d7c7709d39ed15894b86f51fd37.1580768038.git.justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_162938_037624_373B270C 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Mauro,

Am Montag, 3. Februar 2020, 23:40:15 CET schrieb Justin Swartz:
> Indicate that the rk3228 rga is compatible with that of the rk3288.
> 
> But if any rk3228-specific quirks are identified in future that
> require handling logic that differs from what is provided for the
> rk3288, then allow for the compatibility string "rockchip,rk3228-rga"
> to be matched instead of "rockchip,rk3288-rga".
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

what is the process in the media-world for this dt-binding only patch?

Do you want to apply it, or should I just also apply it with the following
2 dt-patches? There shouldn't be any conflicts with the media tree
as this patch really only affects the rga binding document.

Thanks
Heiko

> ---
>  Documentation/devicetree/bindings/media/rockchip-rga.txt | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.txt b/Documentation/devicetree/bindings/media/rockchip-rga.txt
> index fd5276abf..c53a8e513 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-rga.txt
> +++ b/Documentation/devicetree/bindings/media/rockchip-rga.txt
> @@ -6,8 +6,9 @@ BitBLT, alpha blending and image blur/sharpness.
>  
>  Required properties:
>  - compatible: value should be one of the following
> -		"rockchip,rk3288-rga";
> -		"rockchip,rk3399-rga";
> +  "rockchip,rk3228-rga", "rockchip,rk3288-rga": for Rockchip RK3228
> +  "rockchip,rk3288-rga": for Rockchip RK3288
> +  "rockchip,rk3399-rga": for Rockchip RK3399
>  
>  - interrupts: RGA interrupt specifier.
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
