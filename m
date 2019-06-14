Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6027B45899
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 11:26:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgAQ+jVSzXDE3V+/pa1o9AdsQ/Opx7g2ymMBy9xURfQ=; b=Xj/rDckvfdNMkQ
	ZdhLCyCDtiHe3W74l3gnotZ4+NbrO9pgcHI8d76qXFHPjEXMLEgfxCUJlzz7VWkxHwm5PuF2wjgUt
	dlw3lFbUKsAEs21+N0lskhexhJKS7+AGkMGWg5VzMjhMJCdtIHvn//t6rUdgGpR9dJm2suWFdmCbe
	e2eoomU0xKkMAqdevtVVv+T3m6kNhx1prS6M8QBc0cjCE6ve62X6fxD5ZebWR9X9fEhAkuMIV2Dzx
	iY1R2G1brrNW6v00L5SBxHJytX3/nNIZ8wBuF8TvJWKTvxnlbeS3oDjQ2suOoN6IbEPULDiVEmXha
	rAbz65oXn0MiFFd2C/Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiTn-0001Zl-V1; Fri, 14 Jun 2019 09:26:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiTX-0001O1-Qm; Fri, 14 Jun 2019 09:26:25 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbiTS-00043v-Aj; Fri, 14 Jun 2019 11:26:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: set TX PBL for rk3328-roc-cc gmac
Date: Fri, 14 Jun 2019 11:26:17 +0200
Message-ID: <1619091.6MGD9gV0do@phil>
In-Reply-To: <8ded737d-1fd5-3609-ca2e-cfeba63b2d95@gmail.com>
References: <20190417210059.26262-1-papadakospan@gmail.com>
 <1555938803.1241.1@gmail.com>
 <8ded737d-1fd5-3609-ca2e-cfeba63b2d95@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_022624_020051_ACB1B9C3 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jose Abreu <jose.abreu@synopsys.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 "Leonidas P. Papadakos" <papadakospan@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Am Donnerstag, 23. Mai 2019, 02:00:27 CEST schrieb Peter Geis:
> 
> On 4/22/2019 9:13 AM, Leonidas P. Papadakos wrote:
> > 
> > Indeed, at least with that first patch users won't have a crappy 
> > experience by default (ssh lags and the like)
> > 
> > 
> 
> I apologize for taking so long at this, but I wanted to make sure I had 
> it right.
> 
> So far I've found a few things that seem to help, and would like y'all 
> to test them when you get the chance.
> 
> Adding snps,aal (configures DMA for address alignment) appears to make a 
> massive improvement to stability, although the the snps,txpbl = <0x4> is 
> still necessary for this to work.
> 
> Second, I added snps,rxpbl = <0x4> as well, which seems to help with my 
> RX issues a bit.
> The biggest improvement with these two settings is more stable transmit 
> and receive.
> Currently I'm getting about 800mbps on tx and 400 mbps on rx.
> 
> Please test when you get the chance and provide feedback.

I have to confess I lost track of the multitude of patches touching
the gmac on rk3328 and their long mail threads in terms of which
to pick up and which are considered superseeded.

So I'd really appreciate if you could resend the patches that matter
and provide relevant Tested-by, Reviewed-by, etc tags from involved
people that actually were able to test patches

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
