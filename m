Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A581D80BC
	for <lists+linux-rockchip@lfdr.de>; Tue, 15 Oct 2019 22:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YThMQ4gGOYaonyhn8zpNrxorWsKyyndqdT/ZKsGm7fY=; b=aoomVYuTvdYZos
	l94MOfnVFTrViMdBrSHc7Nvuz84sDnrIO/MvwwGvd4ck+wZVhJGN0NBgOCbkEuspP7pzzH/W9Gvau
	J4q/jWQX9+z40X+SwXmyLso/hK4vUF+bitfAcZNcVAohZ0THY+vIHL7T4VNmvGIU9miig7xhzBRxR
	Y7RZ0iTBzayEy1jNybU+vMwXfzU42dXODl3Hw947CFeTHaniSsz54VyucKyLOLtm91Z951A0DQRXL
	1CbiO5DUKlcPkik5041rM5wz+QZP9DJpckB5vNUyhvOSgXEd9pSysjXew1fjIpgld8mEFDV5QFFFc
	/H42HjKqNrbOte2GaXtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKTAG-0007Xz-1T; Tue, 15 Oct 2019 20:11:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKT9g-000793-Bi; Tue, 15 Oct 2019 20:10:54 +0000
Received: from remote.shanghaihotelholland.com ([46.44.148.63]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iKT9c-00080l-5K; Tue, 15 Oct 2019 22:10:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/2] include: dt-bindings: rockchip: remove RK_FUNC defines
Date: Tue, 15 Oct 2019 22:10:42 +0200
Message-ID: <2236841.lnJlJmhppS@phil>
In-Reply-To: <20191015191000.2890-2-jbx6244@gmail.com>
References: <20191015191000.2890-1-jbx6244@gmail.com>
 <20191015191000.2890-2-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_131052_550323_678DAF79 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Johan,

Am Dienstag, 15. Oktober 2019, 21:10:00 CEST schrieb Johan Jonker:
> The defines RK_FUNC_1, RK_FUNC_2, RK_FUNC_3 and RK_FUNC_4
> are no longer used, so remove them to prevent
> that someone start using them again.

That won't work. Devicetree provides a slightly flexible promise of
backwards compatibilty. So a new kernel should still work old devicetrees.
(not exactly sure if this means dt-binaries and sources or only binaries)

So while I think RK_FUNC_0-n should not be used anymore, we should
probably just mark them as "deprecated" in a first step.


Heiko


> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  include/dt-bindings/pinctrl/rockchip.h | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/include/dt-bindings/pinctrl/rockchip.h b/include/dt-bindings/pinctrl/rockchip.h
> index dc5c1c73d..2798b6c03 100644
> --- a/include/dt-bindings/pinctrl/rockchip.h
> +++ b/include/dt-bindings/pinctrl/rockchip.h
> @@ -50,9 +50,5 @@
>  #define RK_PD7		31
>  
>  #define RK_FUNC_GPIO	0
> -#define RK_FUNC_1	1
> -#define RK_FUNC_2	2
> -#define RK_FUNC_3	3
> -#define RK_FUNC_4	4
>  
>  #endif
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
