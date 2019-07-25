Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF15975865
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 21:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HoM0pfraSeBcS1RmJObxl+mwcHVKW+qcbz+1vM1dAAo=; b=YQm+i4iCfCThTX
	f9uypRjq7sShSfvSxthzPAeG5V5Bp5XEDL8YzBPy/TzSK+H7NVDpuk6k/b+HHq7vROvT/IKN5K20c
	q6JqGJAvwe2mAIysZj46RSIpoKwixMB/TUK2HSzY0XgdlPVg5aTNI6lSDfQTmsmfI1VoNE6IfXdyB
	RBanMfB0+toRDDLvSRVQRM2wg7EgyqZUzZpusOr50L+3ToqtYrBFII87qYtXVcnD6mIa/BDmCjFRw
	nnvHtb61X1HeeBTRPsxLQ2Geknvdlm7ht+JxQBPTKl7TWYw45p+v+KMMnIVw+03Ixs//vA+FqqYyz
	9KISRgTninC4wJ7dMzOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjkq-0006zi-LS; Thu, 25 Jul 2019 19:50:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjkR-0005c6-LK; Thu, 25 Jul 2019 19:49:56 +0000
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hqjkO-0001oe-Bz; Thu, 25 Jul 2019 21:49:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
Date: Thu, 25 Jul 2019 21:49:51 +0200
Message-ID: <1978058.CBpQlN27Fr@phil>
In-Reply-To: <CAKwvOd=RhoKvXzuGVe0PaQik8NEFhDkxuwv-T_s6KAtXCDVVvg@mail.gmail.com>
References: <20190627222220.89175-1-nhuck@google.com>
 <CAKwvOd=RhoKvXzuGVe0PaQik8NEFhDkxuwv-T_s6KAtXCDVVvg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_124955_840632_50D1F57A 
X-CRM114-Status: GOOD (  14.07  )
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, sboyd@kernel.org,
 mturquette@baylibre.com, zhangqing@rock-chips.com,
 LKML <linux-kernel@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>,
 linux-rockchip@lists.infradead.org, andy.yan@rock-chips.com,
 linux-clk@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 28. Juni 2019, 00:32:38 CEST schrieb Nick Desaulniers:
> On Thu, Jun 27, 2019 at 3:22 PM 'Nathan Huckleberry' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Clang produces the following warning
> >
> > drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> > 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> > PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
> >
> > Looks like this variable was never used. Deleting it to remove the
> > warning.
> 
> Indeed, looks like it was dead when introduced in:
> commit e44dde279492 ("clk: rockchip: add clock controller for rk1108")
> 
> I don't see a pattern between when mux_pll_src_4plls_p vs
> mux_pll_src_2plls_p is used, so it's not clear where or even if
> mux_pll_src_3plls_p should be used.

The possible sources for a clock really differ often, so there is no general
rule on when to use which sources ... except looking it up in the soc
manual. And I guess any possible conflict will turn up when someone
wants to use a clock that currently may reference the wrong sources.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
