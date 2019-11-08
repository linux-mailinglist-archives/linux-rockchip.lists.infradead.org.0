Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E775DF5154
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 Nov 2019 17:38:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Apk0d4wOtqFqJfGW4wEkd683mc80uYHYC96BRcMLGA=; b=ZGlq93KxYuifmh
	7xYZSCL7i5K9ozlmkW5zL/b+fuxUZ1iQzr/1XosVYv3ntft4L6EP/CLHVd2i0Dd2O473RTD74UOpb
	k+6pCaThvCIn/zeBkCaTHsO2C4CHqTc5qhmYf9sk9s+QKt/dRK9V7hlUbgTRND8Pw67j5hwK/mrR8
	tXxc6f0BYRICk7Qr5wpAHcqJCsHoxxGkUT0hUCsd8iv9yOqzVqOIF2xZKuoKoRioRsmhg6xqKva1n
	whdkyZVB3f8yGliLESnNJspUfxKrQVsM3U0Pm5GrLFO4P9FWk2+snU9CfZ2e84tuQ0b/oP/rFKxFF
	8hfVNERR5QEeNWgv+qHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7HZ-0001zj-NG; Fri, 08 Nov 2019 16:38:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7HB-0001ct-A5
 for linux-rockchip@lists.infradead.org; Fri, 08 Nov 2019 16:38:23 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iT7H4-0002KZ-2x; Fri, 08 Nov 2019 17:38:14 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: Re: [PATCH 1/5] clk: rockchip: Add div50 clock-ids for sdmmc on px30
 and nandc
Date: Fri, 08 Nov 2019 17:38:10 +0100
Message-ID: <4980410.dClP0N2Ixt@diego>
In-Reply-To: <20190917081903.25139-1-heiko@sntech.de>
References: <20190917081903.25139-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_083821_517689_2AFEEDD0 
X-CRM114-Status: UNSURE (   7.27  )
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 finley.xiao@rock-chips.com, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 17. September 2019, 10:18:59 CET schrieb Heiko Stuebner:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> EMMC and SDIO already have these clock-ids (still unused) only sdmmc is
> missing them, so fix that.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied all 5 for 5.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
