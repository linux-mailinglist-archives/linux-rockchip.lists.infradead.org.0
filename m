Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E18C15AE74
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Feb 2020 18:11:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FozPNCcStA/XP4ZU2JUZdHrnZNeZ+u96FBByrypn2fM=; b=L0viDP7DEjmgqT
	AEd0Xcqs8325VsnE410vnlJi7sE6Tx1r4ls83RIpZlF2MClMe4kKTWweBwsOgNGOhjPGxHZjajoTz
	n9NOgTj57f5QnhFdXQn7ftyM47KBM3mGJas94p+ApuuF+6SXbEdKVt7sfGhPg7FLSdBAGNq+FcdeM
	ko7Tn2tCVs83c+HZEOTkJe0FgocRvHxiNVab66897qTPiE5jyJ7u2OgWcPzbvP88hP+CJgY5f1WOb
	DgiYoNkvmtXq7PyRkA/TPr4/sNAZm49lXutS9gh6VXml3cRv8eACsTr8GOqn7VPGtwFIaBsNW2Xwu
	IjRS9Est2d7j13CCexWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vXX-0002wr-Io; Wed, 12 Feb 2020 17:11:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vWP-0000bY-T3; Wed, 12 Feb 2020 17:09:59 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FF9820658;
 Wed, 12 Feb 2020 17:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581527397;
 bh=AcHXHQJXyMWIuztIi80OjgoPGl5MdYrZDvL2NW3Vq0Y=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=uomKJQQAVHX/x+ZP+YJIqHPI6SZtSV0EtJtPWxHagEVhn4LxzPvQ3MuB3Vn3epyRS
 WIgoTl9hW/QIdFEOblMDVJ1a2F5EiB2tmg1gkhKlcnHyORpEdKytRDsfGKUAxMYF84
 DFmmDrvgSN7u/HYE4Tqz/aVPzJcBbQPYTPXRjSKI=
MIME-Version: 1.0
In-Reply-To: <20200212100830.446-7-geert+renesas@glider.be>
References: <20200212100830.446-1-geert+renesas@glider.be>
 <20200212100830.446-7-geert+renesas@glider.be>
Subject: Re: [PATCH 6/7] ARM: sunxi: Replace <linux/clk-provider.h> by
 <linux/of_clk.h>
From: Stephen Boyd <sboyd@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Heiko Stuebner <heiko@sntech.de>, Lubomir Rintel <lkundrak@v3.sk>,
 Magnus Damm <magnus.damm@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Russell King <linux@armlinux.org.uk>
Date: Wed, 12 Feb 2020 09:09:56 -0800
Message-ID: <158152739647.121156.16877229572128607400@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_090957_979894_DF3DE42B 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Quoting Geert Uytterhoeven (2020-02-12 02:08:29)
> The Allwinner platform code is not a clock provider, and just needs to
> call of_clk_init().
> 
> Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
