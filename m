Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CCA45873
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 11:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJuC478URJoiT9VlzZUXllHE06RHCIjztwARjBuUqWc=; b=qCpXghlm5+EgIR
	vV2oB8kV0+qmuEwOESwD8T7eLTZB2mdNrvk8j2RpIVN86hjurlullJ4uSldlnK1Zrby+9lAzzJ5MP
	+rJtSQphLE1ke7slCjuUvx5iBZGWXDgKJM+3jo/qRhuVqDloSdLxHRiMRFdQSWrtlEs3biWpUtBkF
	jWGtewZ1uD3SYk6teT/pog4daI4ZCUvOfHCIqbmYwiefKih5T2a7O4aU8U9Gwfh9DXxQa0tpIHUlm
	bruBBFCuqRv3AQDkVF9+fAQKixd4ijJEFfM05QEuo7U6445yRzrsiTrq2OxC4xiq1/ON/CvulIlz4
	gXh6USQrhDuJSTjBKM+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiNn-0007Gp-C6; Fri, 14 Jun 2019 09:20:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiNk-0007GN-HM; Fri, 14 Jun 2019 09:20:25 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbiNi-00042a-Uo; Fri, 14 Jun 2019 11:20:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI audio on Rock Pi
Date: Fri, 14 Jun 2019 11:20:22 +0200
Message-ID: <2770514.s8ZUFaWtDL@phil>
In-Reply-To: <20190608003501.32454-1-ezequiel@collabora.com>
References: <20190608003501.32454-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_022024_729383_CC8657EF 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 8. Juni 2019, 02:35:01 CEST schrieb Ezequiel Garcia:
> This commit enables the hdmi-sound device needed to have
> audio over HDMI on the Rock Pi board.
> 
> Fixes: 1b5715c602fda ("arm64: dts: rockchip: add ROCK Pi 4 DTS support")
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

applied for 5.3

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
