Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7950E75854
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 21:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTUIj7b34CZbvd8NhS5qW6wRF2XekbmQ7bPNSUmy4d8=; b=stsFYYPCSHqFei
	EM/S3iE8APKBoE/aJ19611JmV9+4mIe6rE6Le4eCkTDCOAuSMfAtP79/lMZ3eq//bLMhyFUtNxhdR
	wkiVd51ZQilFvwKzMW1DBiJSbBGDcI8MBzH2kUHxTVXtdOMrX/KEApV7nlQY/HrAPIcIqUGbPSma1
	Mo377GzPXoFt2tTFr/2lI19VcAs1D2D3A5Rbq6ouM/DnFM0kFUhHU0vqb6gf1lDr2viz7TcmS9caT
	uVc8GVBkd6Xuoo3kntHHWGyWHEiXsI5iKHQ1tXRvwlJ4AqI7XjYfCtkCaYfNuIEWXo4rQ4T6U23Mt
	2Bj8Gf7/0zKOl3W/6fvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjim-0005H5-CM; Thu, 25 Jul 2019 19:48:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjiU-00055U-Ip; Thu, 25 Jul 2019 19:47:56 +0000
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hqjiK-0001nu-FG; Thu, 25 Jul 2019 21:47:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nathan Huckleberry <nhuck@google.com>
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
Date: Thu, 25 Jul 2019 21:47:42 +0200
Message-ID: <1785547.ocfUNUBeK4@phil>
In-Reply-To: <20190627222220.89175-1-nhuck@google.com>
References: <20190627222220.89175-1-nhuck@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_124754_768487_28B2865D 
X-CRM114-Status: UNSURE (   8.98  )
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
Cc: clang-built-linux@googlegroups.com, sboyd@kernel.org,
 mturquette@baylibre.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 andy.yan@rock-chips.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 28. Juni 2019, 00:22:20 CEST schrieb Nathan Huckleberry:
> Clang produces the following warning
> 
> drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
> 
> Looks like this variable was never used. Deleting it to remove the
> warning.
> 
> Cc: clang-built-linux@googlegroups.com
> Link: https://github.com/ClangBuiltLinux/linux/issues/524
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>

applied for 5.4

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
