Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D39B6FBA37
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 21:48:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsPRx7akPu2mgiOH4GtNq7W7Ou4W5Py5KSkM3KFZcnI=; b=P6v+ZlfjvG24MP
	O4Jk5SIwhbCTa8dimpEEz6LAPw+ti0DbgnhsZSfAEe6i9+2SDG2HDMyNvLJ4jsk/+VqbQIQahSfNb
	MMJIYcb7+1pMjcyQ7fKCLk9FxXfGCotpgm83RMN2nJjfu5BRuxRqqBDbtsL4TXqje3W0bG0J7kl8N
	LlnraZDLafygS4xOa+h4F/Q97osM8wisyMsxTy9oZ/0m89nzpy/UtBoxZUra6vbys88BWpjU+rhM8
	SN7A5U4X1k9660rt+m0Ao5MabD9UqC/K1QJqvAzntD2vuH3c/lv8ANKyVFuo+AaIzRsTCX6ajpWrt
	LBjMqEti7gTyOFcQtMag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUzZE-0004u8-B6; Wed, 13 Nov 2019 20:48:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUzZB-0004te-8p
 for linux-rockchip@lists.infradead.org; Wed, 13 Nov 2019 20:48:42 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA7BE206CB;
 Wed, 13 Nov 2019 20:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573678121;
 bh=cr9JMVegJx1oJynsuDAElAURTb0vNtKWI9b3GvC/J2Y=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=hQdYxShn5pxruV9NXfokGFMUb8zaCN14jjz/I2zsY+13NPYw+L1GUVH4m/d9xw32e
 SWA9SFTwsc7aOcwgIxD786gLeUNYM6TXXVI3TgKaHNM9r5Nr8xSSrBMyqXilBsPUIC
 1SX95jAo9olQ9/QDYSek0kyQiL/4sm4HMZGMJP6Q=
MIME-Version: 1.0
In-Reply-To: <2139639.gTPWsosUxc@phil>
References: <2139639.gTPWsosUxc@phil>
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [GIT PULL] Rockchip clock updates for 5.4
User-Agent: alot/0.8.1
Date: Wed, 13 Nov 2019 12:48:40 -0800
Message-Id: <20191113204841.BA7BE206CB@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_124841_326268_99014A1A 
X-CRM114-Status: UNSURE (   7.68  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Quoting Heiko Stuebner (2019-11-10 16:45:05)
> Hi Mike, Stephen,
> 
> please find below rockchip clock changes for 5.5
> Please pull
> 
> Thanks
> Heiko
> 
> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> 
>   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git v5.5-rockchip-clk-1
> 
> for you to fetch changes up to 3b0b4ebfd761943179fe03b107f66c72c3b5c8d4:
> 
>   clk: rockchip: protect the pclk_usb_grf as critical on px30 (2019-11-05 20:53:42 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
