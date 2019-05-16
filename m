Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B172107E
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 May 2019 00:24:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxLgLn7T82+P8dCSdwBhKB1jy+VDHpfHra4u4+ayBn8=; b=U94k60iRixqWSL
	o+2e43rvvCdo4L4x61aSrvJqjpO/YLcE60lfew4NtWitgLZ/9kd4O/fB3IcgtrN2Z9rIbhAm0kvla
	EKicyRu8T4lFwk/Uk+UkeKTkmIyIYxqW3CosxljP7DLWirF1kvb05lAifw0pcp5IS0HfHj0DcUus1
	DA+OrNtTvTboybRJeXbbLIQfd9AhIM2CDihKj8pMeP9J3tKiEvukbrAVFaeY7+Wy62jnDiwJ9tnO3
	aCLq/8T46eAfR8s8LJIY1+nQcsLSDNcXR7NzEW7VYKkAIMUH0EEmZI/VidTeuC9b77KFIQPSWYN/F
	zTTNy3sS8iDS884uJgQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hROnA-0005oa-E8; Thu, 16 May 2019 22:24:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hROn1-0005jM-NN; Thu, 16 May 2019 22:23:53 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hROmt-0007Ew-NA; Fri, 17 May 2019 00:23:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH] drivers/clk/rockchip/clk-rk3228.c: add 1.464GHz clock rate
Date: Fri, 17 May 2019 00:23:42 +0200
Message-ID: <5025740.0R6fdBNFxo@phil>
In-Reply-To: <20190516124437.4906-1-justin.swartz@risingedge.co.za>
References: <20190516124437.4906-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_152351_912000_0E1D027A 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Justin,

Am Donnerstag, 16. Mai 2019, 14:44:36 CEST schrieb Justin Swartz:
> Add missing 1.464GHz clock rate to rk3228_cpuclk_rates[]
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

I've applied the patch for kernel 5.3 and adapted the subject
plus commit message a bit to:

"clk: rockchip: add 1.464GHz cpu-clock rate to rk3228
    
Add missing 1.464GHz clock rate to rk3228_cpuclk_rates[], which gets
referenced in the operating points but wasn't defined till now."

So just for you next submissions:
The patch subject should match the subsystem prefix which you can see with
something like "git log --oneline drivers/clk/rockchip" and the commit
message can be as verbose as you like.

So just to clarify, no need to change anything for this patch, just to
keep in mind for future patches :-) .

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
