Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E8D129CFC
	for <lists+linux-rockchip@lfdr.de>; Tue, 24 Dec 2019 04:00:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3UCQkqudmb/ikNHzrC/gU/ODH0mTTtZTk7pVabkvyc=; b=sydEfC9HSD4rHz
	wL3CRZ2Tq57YoSuHi/PsSDfHYG/yERVaQ7I7xkep1VipniCEyToSmla6O21ExW8SAnAJvXmHsVf3M
	cJqeHSyJarF/6DZarulazhtyQ9sSNCCYEOcs4hf30LFIMivVlcV57Vk+/9EjCfcMJlLy8jTBFDjSv
	c72zQdmy9w63YewqGFG+fcfvU3QA8OucDOTYl1TR93NuuhazYcrBfWdIi7+OEn6Nkl2PZ2mt1QY0O
	9Z98oSgF6SrwkrRWRaG2gplgEe83Vnhx7MLwe8zpbp61sdO2E2Pnp6H7BJex8/H7h2+T2JmjKwVZu
	ksWl5qzmRR+bGeX1ra0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijaQM-0003VC-MA; Tue, 24 Dec 2019 02:59:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijaQJ-0003U0-CE; Tue, 24 Dec 2019 02:59:52 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41011206B7;
 Tue, 24 Dec 2019 02:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577156388;
 bh=aptjoahnooeliDkbo4bcZ4z4A3PI74XI3gbsgTgKgDE=;
 h=In-Reply-To:References:Cc:From:To:Subject:Date:From;
 b=OIRuftxtRDB40Z3TgxvRKo7wsZWb4lIOaDP4VyPffyPfR78htWDWi7rS6mWp3uiLs
 rlrnjPSnaEzIbCgzzRX3NeQeve/p9RLZ78TLXSvZZCpUa44bfEe/JthHo2ptTLQ9Op
 8sCMPEySr3wSSd/ML4c5xZB4CRebuWnn34SUytxs=
MIME-Version: 1.0
In-Reply-To: <20190924123954.31561-3-jbrunet@baylibre.com>
References: <20190924123954.31561-1-jbrunet@baylibre.com>
 <20190924123954.31561-3-jbrunet@baylibre.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>
Subject: Re: [PATCH 2/3] clk: let init callback return an error code
User-Agent: alot/0.8.1
Date: Mon, 23 Dec 2019 18:59:47 -0800
Message-Id: <20191224025948.41011206B7@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_185951_437058_820F0909 
X-CRM114-Status: UNSURE (   5.53  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Tero Kristo <t-kristo@ti.com>, linux-rockchip@lists.infradead.org,
 linux-omap@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>,
 linux-clk@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Quoting Jerome Brunet (2019-09-24 05:39:53)
> If the init callback is allowed to request resources, it needs a return
> value to report the outcome of such a request.
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---

Applied to clk-next


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
