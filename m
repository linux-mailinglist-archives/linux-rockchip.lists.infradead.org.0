Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F119BEB263
	for <lists+linux-rockchip@lfdr.de>; Thu, 31 Oct 2019 15:23:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxvjW5E302jGH8uyHLgipE7g0LQ10Wrgy9ryaKQs7rY=; b=e3XgmKbkkT8dVY
	cOwS/7S8zZIx7rCwZSdgfaj2dL3sZ7tVl/OWJto3YDjJXmUGSCbpWx17v8JgV0ax8cCxZBcr9V9Zc
	CFMFo+nVBrAkejy7Q4raZyF7yAKDWhUfVNhlzi6ksk1FXVCkTUiBqtGbW/uOjLfruoHsaXfJGAjOj
	LlfL3BCmcZTq8Ae4KYDDejBPkvnsWkewdDNcJsVXa8q03cNjavuApnNxuBzfJP/HeSLim3PxkPGS2
	07dxHhT8YMN1ZqivuEwBVqj5KEcda6+K7xOzzN9jQc3R1Cqhv9SsuYEhOlndE0jMGhhvH4UCPq21Q
	msezt2V3EoadKliruOcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBMG-0002Cw-Rn; Thu, 31 Oct 2019 14:23:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBLy-0001zr-TD; Thu, 31 Oct 2019 14:23:12 +0000
Received: from dhcp-64-28.ens-lyon.fr ([140.77.64.28] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iQBLt-0005nA-Pi; Thu, 31 Oct 2019 15:23:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add vcc_sys enable pin on
 rk3399-roc-pc
Date: Thu, 31 Oct 2019 15:23:04 +0100
Message-ID: <6903568.7J3coomyo0@phil>
In-Reply-To: <c72db0ad-c261-af4f-efe6-22bbcf4a0b7b@fivetechno.de>
References: <c72db0ad-c261-af4f-efe6-22bbcf4a0b7b@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_072311_112773_BDF47DA5 
X-CRM114-Status: GOOD (  10.09  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 31. Oktober 2019, 09:51:56 CET schrieb Markus Reichl:
> rk3399-roc-pc has vcc_sys 5V supply for USB and other peripherals.
> Add the GPIO pin to enable the regulator.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
