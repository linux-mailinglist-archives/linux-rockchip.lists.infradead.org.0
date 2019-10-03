Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80687CADEA
	for <lists+linux-rockchip@lfdr.de>; Thu,  3 Oct 2019 20:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5ZQrwIM2INkfO120PQL9bOyC7MahITiaS0qf6EoVnQ=; b=pAPidv8QO0RsEP
	Lpa/2W1eKatX/OiK8CXAzI38m65bm/vY2Un7yc2C1484/g2mJUSs1nJb/IVMBfgf4feev4rlQUCcx
	XCxtaVQqt2zVvSVYKs65eR2T5NusApw+MrzrIYd9RaKHNo5zqFFkORTcWURqaoQ/InpB1+BR7VTiJ
	3OQkU6TMCLGOPij4YpgpnmE7Oh8XiUbas0Lr4oeip/mrpKioi2CLIiNzCENKODGPoA3FCPqgmLMUz
	lblYq/I5a+taD2IEG1/GChhgRL/HXfZiNvmbeTV9ZW5CB1e3QikpON1X0kul20KAqeT0E9SglIc9V
	VfChJOS2vKkpHe/tz3sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5c9-0003AV-VM; Thu, 03 Oct 2019 18:14:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5bu-00030T-J3; Thu, 03 Oct 2019 18:13:55 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 304B520862;
 Thu,  3 Oct 2019 18:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570126434;
 bh=OEFcG8Srhv/ZYjCll5MhUaVrXvpLIbrBCRSqjpiiIA8=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=sUPn/ARNFZqfClXLICHZK6NPr0REdXEB476kJ0611ANUQHt9gL40z9v8L14djPWn+
 izGkbv1jIE8yRn8xIzhu7FDNm+RXop7VmOFFBOFSZDFQNrj2tNykzR6ZueyWoR3+/O
 4xS6sxAYfdZJYGfydjpeOhAQcPHkDi9YExTXxzY4=
MIME-Version: 1.0
In-Reply-To: <1569553244-3165-5-git-send-email-zhangqing@rock-chips.com>
References: <1569553244-3165-1-git-send-email-zhangqing@rock-chips.com>
 <1569553244-3165-5-git-send-email-zhangqing@rock-chips.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
Subject: Re: [PATCH v3 4/5] clk: rockchip: add pll up and down when change pll
 freq
User-Agent: alot/0.8.1
Date: Thu, 03 Oct 2019 11:13:53 -0700
Message-Id: <20191003181354.304B520862@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_111354_647953_C316B4E0 
X-CRM114-Status: UNSURE (   5.47  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 xxx@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Quoting Elaine Zhang (2019-09-26 20:00:43)
> set pll sequence:
>         ->set pll to slow mode or other plls
>         ->set pll down
>         ->set pll params
>         ->set pll up
>         ->wait pll lock status
>         ->set pll to normal mode
> 
> To slove the system error:

solve?

> wait_pll_lock: timeout waiting for pll to lock
> pll_set_params: pll update unsucessful,
>                 trying to restore old params
> 

This commit text needs help. It looks like pseudo-code.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
