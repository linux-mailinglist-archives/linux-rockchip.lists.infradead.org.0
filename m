Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BE6AAB6F
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Sep 2019 20:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSzAJULSwBoTfHUjpI+JnCN8fxgUreYAbVf5TO2LQBQ=; b=o/v7rnyDbdg2fb
	xM2CTsG2dU2gqQBvk5Bj1o+MvaUIhp21CZ7FuAG7DDvr2qjhqyVai6Lzl8e+fagQ8gRmvywJQOOnr
	3bmpxZW4TnG4phokNUZigedwSN7ukyng2z+0j9bYISMu0ySkRRzTcOmbeKn+Uz50DKTXP7SIn9cye
	LRZvYjQgXgElqq7Y5S+xShvdzbW6RlgtpvV78mQOeTI7biwCUFT48W9BJ7u6rmhPtueOeLeb0xySh
	LuVCjONyaXrvSs7vM5rMJzG5fVsFSflJTk/CpkFoetqrocfb2rYNo/jeD/ZwgwKVvBJg6jFviv8Us
	BUURp5Vp7ajyMvjn3LRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5woL-00030w-Nn; Thu, 05 Sep 2019 18:48:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5woI-00030J-SX
 for linux-rockchip@lists.infradead.org; Thu, 05 Sep 2019 18:48:48 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C015520825;
 Thu,  5 Sep 2019 18:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567709326;
 bh=w50tD+33F5R8dc2fXJEl8SIoqEQOVGYCi7R9J3SrOV8=;
 h=In-Reply-To:References:Cc:Subject:To:From:Date:From;
 b=VIMSHFkGskoaCxhINBinMken3pf2l4A0IuhKPUF4mfZOBRhqcF7b0aF1PD94/mrwm
 rtXpBvt2jZgnEkBPLs92JcDYq+8ot6ai7g6YVCHIx+5LCOQ/Uz6+D8S/84de+0k79C
 zLknPoufl0L7JxAyxHxIZOo/Bb+EKRpe9048KHb4=
MIME-Version: 1.0
In-Reply-To: <1787421.rStINWtZbh@phil>
References: <1787421.rStINWtZbh@phil>
Subject: Re: [GIT PULL] Rockchip clock updates for 5.4
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 05 Sep 2019 11:48:44 -0700
Message-Id: <20190905184846.C015520825@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_114846_945334_DC9CC1B8 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Quoting Heiko Stuebner (2019-09-05 05:25:14)
> Hi Mike, Stephen,
> 
> please find below rockchip clock changes for 5.4
> 
> Please pull
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
> 
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.4-rockchip-clk1
> 
> for you to fetch changes up to ac68dfd3c4836bb2636fd37f3e075ed218afdb2b:
> 
>   clk: rockchip: Add clock controller for the rk3308 (2019-09-05 12:43:39 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
