Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE31CC3E2
	for <lists+linux-rockchip@lfdr.de>; Fri,  4 Oct 2019 22:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ds12II4JQmWQkmPq7n5Hdfk71VldBjBCMGhFgyghji0=; b=L7OSL2mRW1AESW
	I+EWuhmqtLw0w9cQrNhYzvzUuYHpINXuWYELPSx/aEQJb9QLWdShuG0Cac5WhXrf/HV+IyMqlP8Fu
	LSpbZWaDB5Spd5ajHUcXDTlt550SKryqrDqO/XL93GGQQ7+pQh88qE1FSFW0xXfvh4osfeBT+PIVA
	HNtkLKCdZxxAE48QeJrxVYN5i1m/tMSer7NvR+tZLdwgn69VjrtCri9K2yXhraS6Q0h1g3oWFaX52
	Mqiy6SpAEfhVJYG0aimu1jQpfqZTXexyZS3inwjVZhGEBQznWASJMRPzQVeazjQc27IJw+FdLQZH5
	8fgX/Krp2Qa+Cf3c81Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGTp5-0008LJ-9V; Fri, 04 Oct 2019 20:05:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGTp1-0007jW-IE; Fri, 04 Oct 2019 20:05:05 +0000
Received: from 94.112.246.102.static.b2b.upcbusiness.cz ([94.112.246.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iGTp0-0006VL-8Z; Fri, 04 Oct 2019 22:05:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: fix RockPro64 sdhci settings
Date: Fri, 04 Oct 2019 22:05:01 +0200
Message-ID: <1725946.B0GZWAYfbM@phil>
In-Reply-To: <20191003215036.15023-2-smoch@web.de>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-2-smoch@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_130503_758528_4DD819D1 
X-CRM114-Status: GOOD (  10.40  )
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 3. Oktober 2019, 23:50:35 CEST schrieb Soeren Moch:
> The RockPro64 schematics [1], [2] show that the rk3399 EMMC_STRB pin is
> connected to the RESET pin instead of the DATA_STROBE pin of the eMMC module.
> So the data strobe cannot be used for its intended purpose on this board,
> and so the HS400 eMMC mode is not functional. Limit the controller to HS200.
> 
> [1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
> [2] http://files.pine64.org/doc/rock64/PINE64_eMMC_Module_20170719.pdf
> 
> Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
> Signed-off-by: Soeren Moch <smoch@web.de>

applied as fix for 5.4

Thanks
Heiko





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
