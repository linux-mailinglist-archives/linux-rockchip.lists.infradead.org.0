Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2DE57B7F
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Jun 2019 07:32:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rLwiCINladCwAwr0S6T/EDA4QO0aGVh4iWtS7mcRwA=; b=QeskcrKToEm0jl
	UuxwCyE1kT6O3HmXFBiMm8zrQZoND9U/1C6hiw64GLHOn9wxA0z/G9Dl6NYEfBTku56PCpHNq9iPD
	QKe6FegGOojq1iFP0x4RyCtMEUvGyqPbbLZFHYi1qiKcObmzphWscfMVdo7wIuuMY8gNGgGyCKszZ
	vozac3R/Zv3ezN96Z7OEbmlXl45fotnZqM6kk84uRy+o4/W5zXlsyGXQsqH62aytQvXqGk9QUQyj+
	f5iVZIsJDXZ5FJE9Cmp7SNeojpcAcxa2pEWB/zwjI5h3ToxCLlZ2nEmonyE7IEZdPyeEU9K6vPn4K
	UrEbunIbYEXs9n0MkI7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN1P-00048C-BL; Thu, 27 Jun 2019 05:32:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMsf-0007bR-SA; Thu, 27 Jun 2019 05:23:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hxS4g+YLJmA56kXbsyG1nmRaD9gikm+asntstLr9cIQ=; b=AFX0FIQdPUbtk4JPoEt9/yN6lH
 gXuYGd4HnLkSEyJKo29dEo9d5AlZugTrS+sxmah2GS5WKzjYOYBaVYLfCZcA2uvsAABuiT/3mt19o
 xJukvJEjrI+kZvMCr4bqfO93ubC1lwgVKRD4G3T3B+hbudwKA1N33m0uOyOZVY1rG+QJ1m5jLSxos
 IdF4XqyZh1s/qEEF/Z/hTsXLZsqmmEH0myjc6tH0YkLGVOIMkhs4P4Al42uIyAiwKxBIjmotOSSll
 ycPBxEtJlk2eBiY/HpG8tKRxprAXvtXlp0WVLzA9DyyQIkSfBufSuhUbwZBxZ1qnUWyHkb9PB0Y/B
 tuim/x3g==;
Received: from gloria.sntech.de ([185.11.138.130])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgGak-0007KF-Tw; Wed, 26 Jun 2019 22:40:40 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hgGYb-0004Ub-O1; Thu, 27 Jun 2019 00:38:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vivek Unune <npcomplete13@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add support for Hugsun X99 TV Box
Date: Thu, 27 Jun 2019 00:38:25 +0200
Message-ID: <3247989.aGYRIomCNH@phil>
In-Reply-To: <20190621205308.5177-1-npcomplete13@gmail.com>
References: <2273961.GTPgWWlV5T@phil>
 <20190621205308.5177-1-npcomplete13@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_234039_020983_449CA93C 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 21. Juni 2019, 22:53:08 CEST schrieb Vivek Unune:
> Add devicetree support for Hugsun X99 TV Box based on RK3399 SoC
> 
> Tested with LibreElec running kernel v5.1.2.
> Following peripherals tested and work:
> 
> Peripheral works:
> - UART2 debug
> - eMMC
> - USB 3.0 port
> - USB 2.0 port
> - sdio, sd-card
> - HDMI
> - Ethernet
> - WiFi/BT
> 
> Not tested:
> - Type-C port
> - OPTICAL
> - IR
> 
> Signed-off-by: Vivek Unune <npcomplete13@gmail.com>

applied for 5.3 after doing some reordering to make things
alphabetical.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
