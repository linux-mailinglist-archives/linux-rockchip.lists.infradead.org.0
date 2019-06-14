Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E92946535
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 18:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ta46dylLP2zqtBuyKVF5Xkns99/GZ73heEwn2vhZgQQ=; b=ZP4g4FQZFzZqg4
	fKVzl/zV+I0vPbypnZGPf9he/900VEm4oa5zas0y/457tDjP6pPYdFQT9i26sTEt6xM4xY4DHO8N3
	ANc3VxIrSl+DZR/buJEN3pBeKOsCiqjGxqqUPRjn+FvVl3ZcD3yRlwlnQg2gVKFAZQPGjA7nII87D
	ERaI5iFgg8FynpN+mJsQBAsBJXKlmP8cL1zUL4XUIBsk41tTZ9LcXkP5L8P0WcAQyH10jeQUMaywl
	bHj+MMr5aeuYPp5iPAmL/SFS1QcPywGjQJHojzx3MaIDsXgLMycW35rwTPWwALlakkmQzs5GqOMCI
	yVw2rhE24671FrrPc9Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpWH-0003n4-Pj; Fri, 14 Jun 2019 16:57:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpWF-0003me-FA
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 16:57:40 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbpWE-0006XT-5C; Fri, 14 Jun 2019 18:57:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: Re: [PATCH 1/2] clk: rockchip: add a type from SGRF-controlled gate
 clocks
Date: Fri, 14 Jun 2019 18:57:37 +0200
Message-ID: <2861779.VsSVQ8N6Tg@phil>
In-Reply-To: <20190606090934.4443-1-heiko@sntech.de>
References: <20190606090934.4443-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_095739_659601_DB69F722 
X-CRM114-Status: UNSURE (   9.95  )
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
Cc: sboyd@kernel.org, linux-rockchip@lists.infradead.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org, papadakospan@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 6. Juni 2019, 11:09:33 CEST schrieb Heiko Stuebner:
> Some clk gates on Rockchip SoCs are part of the SGRF (secure general
> register files) and thus only controllable from secure mode, with the
> most prominent example being the watchdog.
> 
> In most cases we still want to define this as a real clock though,
> to have complete clock tree and not reference the generic base-clock
> from the devicetree.
> 
> So far we've just defined this as factor-1-1 clocks in the clock init,
> so define a special clock-type for it so that this definition can be
> part of the general tree-definition and save some boilerplate code.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied both for 5.3



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
