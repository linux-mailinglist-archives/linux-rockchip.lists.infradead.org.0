Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0590FC1921
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Sep 2019 21:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUDKryuLIIG7t14ynYlgtquf/EcqaFEOuQ8nIvwyJAo=; b=ECpaS1jOBBMiOl
	gZacipEJI0Lh3lFMNNST3l/PQqsz8uYyqd2NRVLl+byKcBxLLz3H+Un9OgpDSr78Yevki7fByeOO4
	CTz1T6cT8AuqQBv2A+437L6DidLjYNpyxVk1/zKOUZF7+L5D0JHiVdnO7wcr6V1/vGPbV/UO7pyq8
	hKr/P4VF1eGZN1T8SpD3jdqFGo2LCJ1aHfZz+cJWmT2GT90QF2R/c3dL4avLDKeVDVJT4yXSv9VDw
	z9wGz8X8nvb8Q5BGu+gXHEnJEq0EZjaoEEO1CT4WH5d/KQCsGuvR6MSeBBQCXrVcOS/JXf488YN/O
	QTvAqXpFdP33PocEubNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEexU-0000UK-SC; Sun, 29 Sep 2019 19:34:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEexP-0000TI-Qu; Sun, 29 Sep 2019 19:34:13 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iEexA-0001BS-Tj; Sun, 29 Sep 2019 21:33:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH 2/3] clk: let init callback return an error code
Date: Sun, 29 Sep 2019 21:33:53 +0200
Message-ID: <7697352.nLdc4jJAoa@phil>
In-Reply-To: <20190924123954.31561-3-jbrunet@baylibre.com>
References: <20190924123954.31561-1-jbrunet@baylibre.com>
 <20190924123954.31561-3-jbrunet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_123412_020484_0F48DCBC 
X-CRM114-Status: UNSURE (   8.66  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Tero Kristo <t-kristo@ti.com>,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 24. September 2019, 14:39:53 CEST schrieb Jerome Brunet:
> If the init callback is allowed to request resources, it needs a return
> value to report the outcome of such a request.
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
[...]
>  drivers/clk/rockchip/clk-pll.c        | 28 ++++++++++++++++-----------

for the Rockchip part
Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
