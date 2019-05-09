Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D818C18700
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 10:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrVcfNcyjSZYg+8I0Ju3ENCUiieT7VNrxzEVav2q1Kw=; b=ra/YgUKIz90FzQ
	3sxLNwUPDXdC5uuZSVBrdkHKOrHbUGUV125RWRt7HKMD67Atn78S26++g5vP/Wf9c6ogB6DAMXnSW
	R7Ng8oEktAktywFxIesnXRzHx+J0kTS2TlsTjQYxdHEG8xgxW/bnpARCPK9ZFpjCo1xLWBBWVNyD5
	eaNUXjUCwsMEutavbVWCHDr2rB3fTWZgeKZcTVybHhHUXeZ4atHv1STx80be7ESh8bJjuHVc4BcFR
	2OHIT8AshxEbX0XfSS8uKa0xnG0OCCxSh38zmg1AIxF+4J09DCNnxtfc0ntWRn7B+0bza0sd0P0+z
	0V2sRYDfgCYSw/yuqg2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOeiH-0003Se-E7; Thu, 09 May 2019 08:47:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOeh1-0002yK-FY; Thu, 09 May 2019 08:46:22 +0000
Received: from we0048.dip.tu-dresden.de ([141.76.176.48] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hOegx-00020s-6J; Thu, 09 May 2019 10:46:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] clk: rockchip: Use clk_hw_get_rate() in MMC phase
 calculation
Date: Thu, 09 May 2019 10:46:14 +0200
Message-ID: <23276655.4tYWeNrtuJ@phil>
In-Reply-To: <20190507204935.256982-1-dianders@chromium.org>
References: <20190507204935.256982-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_014620_971973_892BFF3A 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: hal@halemmerich.com, Stephen Boyd <sboyd@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 7. Mai 2019, 22:49:35 CEST schrieb Douglas Anderson:
> When calculating the MMC phase we can just use clk_hw_get_rate()
> instead of clk_get_rate().  This avoids recalculating the rate.
> 
> Suggested-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.3

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
