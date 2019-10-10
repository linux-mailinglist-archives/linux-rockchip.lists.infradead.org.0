Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 860D9D336D
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 23:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XzD69o3uXwm2yg3GzFfyxAkVHD+AeC9ROqqwT/kCVu0=; b=sW+ipwzdgJ12zK
	fuzfqw9VPevWKu7Xjs7CpTrP3GYRXhU3QYG77z8mq2fGkWslhqAcOURg4sZ5AinKRv1NN45lRJLkF
	JpNELWZq9u2kQVkqlAHDfhRHJ+yEYfgnNloZMciCEbiYnQ9I6SXVfHdRv/1dGx+F/tyl6F6cTpTXZ
	vlk9kfYSdjZ417PEdjBV5im8pnyeJicvccwQXxuRTqvgBJXPaJsc0vVxXkCxOehckU6dlpO8jHupV
	JZy6X1qaalo8W6u6BPpHaocQrvJizKWJap4ugq3IDd43f/4ZzpE7y6D9+4bWunRwSDI+YGNs+CjNR
	gkQAXszNfBX9AKPaOaag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIg10-0000fF-Uz; Thu, 10 Oct 2019 21:30:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIg0y-0000eo-4Q; Thu, 10 Oct 2019 21:30:29 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iIg0w-0007BZ-RA; Thu, 10 Oct 2019 23:30:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix RockPro64 sdmmc settings
Date: Thu, 10 Oct 2019 23:30:26 +0200
Message-ID: <2055831.6uBfQfHlXk@phil>
In-Reply-To: <20191004203213.4995-1-smoch@web.de>
References: <20191004203213.4995-1-smoch@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_143028_323024_023870D2 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
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

Am Freitag, 4. Oktober 2019, 22:32:13 CEST schrieb Soeren Moch:
> According to the RockPro64 schematic [1] the rk3399 sdmmc controller is
> connected to a microSD (TF card) slot. Remove the cap-mmc-highspeed
> property of the sdmmc controller, since no mmc card can be connected here.
> 
> [1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
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
