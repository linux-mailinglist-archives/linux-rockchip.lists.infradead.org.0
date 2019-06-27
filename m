Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B74E58E05
	for <lists+linux-rockchip@lfdr.de>; Fri, 28 Jun 2019 00:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSf9BpDV24bqXAm631M8lrDvF+OjflJvc8StfgeVFrg=; b=WVYnaN29rkZTDQ
	R3giYtZZsiYI5gXvt+gtC7LPVlz/Dei2lrwKd92sNKMe4rH6LkDvhOqEJEOA8wjEPbK6z0gcbHbDF
	61GM2G6zQ++L15k+V16KPhoCiJRAYfS0VtvhOQ80EhdxB+CFiUHK/FvMtEGWFz6ltWffyMyanKiP8
	UY6TP1S5fgGPY7N6RSKW3+pF6RAT+/EgBluOoH9fzHUINaQdvFsKSpcXQgibUhlkMiB/jOq4/NcC3
	FUh6W3AOqcIHumfmklv1pZD4sN3DAzDplTe5QfafK/hQOW9jdhkJkdfnypAZ6UVfOIojr1+H1HhSd
	ztaTyzcSGt9x6HX3g48Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgcx4-0000cO-D9; Thu, 27 Jun 2019 22:33:10 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgcwn-0000EI-FW
 for linux-rockchip@lists.infradead.org; Thu, 27 Jun 2019 22:32:54 +0000
Received: by mail-pl1-x641.google.com with SMTP id m7so2036387pls.8
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jun 2019 15:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IhP7OCM25XXvVoqn42DaxOsI4TszTgSwcMwliaWKfKU=;
 b=APnj14df+CUg5mOEsoFJjH7YBNebYWhtkQjolLJgYPARmsWJQImqMpyxDo8U2saVad
 Ot+T60wL7vukQ2mTuVDLfeK+PAtXkQ5z70JhplcMeNdhqbHS7MzK9GbLPf8uZIN+s+iU
 Mw5Vi5zl9rWOLviihNFfDmQervkxHqbOtE6F/jEFk3QrR7nEJQgti7gB+2egkK5Lg2bP
 yfvTEhzhGPHsb+HO9RZ0gudIUHJL5R5z5b4qCIc1dJ0SbbwKmw918vZsuQ0Jg9JCzTtc
 S1t/jcjDk/mJbKmEiJi5o0ZDhgx+zWgEpe+lpe4686gCe12wvwmY3j+kceVdjwkxr8f0
 BvJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IhP7OCM25XXvVoqn42DaxOsI4TszTgSwcMwliaWKfKU=;
 b=VK+lbsOqULFYdW1pMFG0KfVPp6yqXtoiBwtQ2NBMkNuS82myEknezJeHtVNfViiy39
 3LujZ+tYCplEYvnmXXlWl2z8Pjuy93iDT/+4XGeODHNJAdiTZKQoYLw9C1jRGXaa98k2
 QkRzTzpkpAPwtgUeheS/KYvVwKv5QglP2PM3bb4M4dKryhQMEf4bIYL9/9lfy931A/aY
 Y1U0EMNOdiB/+ezf8pTvrV+ObHFlls0t8OWjC8L4eHu3Znq+GG4KlnOuUYDFva3vA2mw
 mPjFU8vM0ltxiHIhqjv8Umlj0XIVTRcMxYdZdGGTMG3Tc7xWlIPh65a/PCpoNxEHUH88
 I/TQ==
X-Gm-Message-State: APjAAAVImOJAnM418HD68TOMaT111lc1a9JKkp/VwXiYWeSyUKoy8fOi
 BR1KpvrEjqAcLqozYkiKdxJwTyuYMN/dge401UfaYA==
X-Google-Smtp-Source: APXvYqzy9jb/It/pkCG4p03Ml+J2Pe8uvS0xgOJ5bJFDSuWv5BAe2P4TqaToD+bMcK566LHPLHIuAYf3Iz61pFm3gpk=
X-Received: by 2002:a17:902:9f93:: with SMTP id
 g19mr7307719plq.223.1561674769064; 
 Thu, 27 Jun 2019 15:32:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190627222220.89175-1-nhuck@google.com>
In-Reply-To: <20190627222220.89175-1-nhuck@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 27 Jun 2019 15:32:38 -0700
Message-ID: <CAKwvOd=RhoKvXzuGVe0PaQik8NEFhDkxuwv-T_s6KAtXCDVVvg@mail.gmail.com>
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
To: Nathan Huckleberry <nhuck@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_153253_533855_AE299146 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: heiko@sntech.de, clang-built-linux <clang-built-linux@googlegroups.com>,
 sboyd@kernel.org, mturquette@baylibre.com, zhangqing@rock-chips.com,
 LKML <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org,
 andy.yan@rock-chips.com, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 3:22 PM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Clang produces the following warning
>
> drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
>
> Looks like this variable was never used. Deleting it to remove the
> warning.

Indeed, looks like it was dead when introduced in:
commit e44dde279492 ("clk: rockchip: add clock controller for rk1108")

I don't see a pattern between when mux_pll_src_4plls_p vs
mux_pll_src_2plls_p is used, so it's not clear where or even if
mux_pll_src_3plls_p should be used.  Given that there hasn't been a
response to your original question
(https://groups.google.com/forum/#!topic/clang-built-linux/NqJT9OPH5C8)
and this patch is no functional change as the variable is already
dead, I don't think it will hurt to remove it.  It should also boost
the signal to noise ratio of this warning.

Thanks for looking into it, and the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> diff --git a/drivers/clk/rockchip/clk-rv1108.c b/drivers/clk/rockchip/clk-rv1108.c
> index 96cc6af5632c..5947d3192866 100644
> --- a/drivers/clk/rockchip/clk-rv1108.c
> +++ b/drivers/clk/rockchip/clk-rv1108.c
> @@ -122,7 +122,6 @@ PNAME(mux_usb480m_pre_p)    = { "usbphy", "xin24m" };
>  PNAME(mux_hdmiphy_phy_p)       = { "hdmiphy", "xin24m" };
>  PNAME(mux_dclk_hdmiphy_pre_p)  = { "dclk_hdmiphy_src_gpll", "dclk_hdmiphy_src_dpll" };
>  PNAME(mux_pll_src_4plls_p)     = { "dpll", "gpll", "hdmiphy", "usb480m" };
> -PNAME(mux_pll_src_3plls_p)     = { "apll", "gpll", "dpll" };

Thanks,
~Nick Desaulniers

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
