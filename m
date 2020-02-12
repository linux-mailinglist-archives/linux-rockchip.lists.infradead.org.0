Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED05115AA2C
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Feb 2020 14:38:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npd+RPq5OzrJwX9rZBTzfwlNl8V7HP2gPm2zL5Dy9a0=; b=jCpg8+KX+4e4eV
	sekOab39jd71rm+j5Kob5nk4Mrt4ECzpjOnkfgmwUyl0IfXmmgynJ54JuJPsFfF++6iEgnsOjEhoN
	KNJS53YPEpZgGj/jWMKj9KqtfMFPMjHGbLetL2ebmxGZN8rE48GnduylWzG7eMLeBQRX1AxW5QhDW
	57HvEcfCOiHWfVFzfaDMwFne7FV6ufp+VbJYSYoJxLSizDHr8GNZ27jrPC1frunALhNnRo8YtV5le
	G9F++NkK1IhQOR+meH6oJBtLhGoB9ms/0sAsTEpTYp8e1ECIh3dKMcH2z8R7RJykp/uTRzmGyMZwC
	ci9o1NTSQhDkdU2Vlodw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1sE6-00055q-8s; Wed, 12 Feb 2020 13:38:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1sDq-0004vy-JS; Wed, 12 Feb 2020 13:38:36 +0000
Received: from p508fd8fe.dip0.t-ipconnect.de ([80.143.216.254]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j1sDe-0008KK-20; Wed, 12 Feb 2020 14:38:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 4/7] ARM: rockchip: Replace <linux/clk-provider.h> by
 <linux/of_clk.h>
Date: Wed, 12 Feb 2020 14:38:21 +0100
Message-ID: <7623400.vQJERCBc6Q@phil>
In-Reply-To: <20200212100830.446-5-geert+renesas@glider.be>
References: <20200212100830.446-1-geert+renesas@glider.be>
 <20200212100830.446-5-geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_053834_792241_2E10BFC2 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Maxime Ripard <mripard@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 linux-renesas-soc@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Chen-Yu Tsai <wens@csie.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 12. Februar 2020, 11:08:27 CET schrieb Geert Uytterhoeven:
> The Rockchip platform code is not a clock provider, and just needs to
> call of_clk_init().
> 
> Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
