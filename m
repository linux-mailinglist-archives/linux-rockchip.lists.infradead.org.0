Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96D6FFCAE
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 02:05:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pD8nO8NYWVyuySigvopAApC0tWr39k7StFg6nItEnxU=; b=GoupB0kqMjq4p9
	nIu7VscZpW9mY+rCHf+dpK84cJa55ysLtNdqvGdDSAMnMIdYmSVBfOcjaZx0cZ3jYhdABr9/13wUS
	thZD8hLtAoOneI/Ae9Pl6GcxE31wSCGVyMA/LR/ooPwmYesLr/P2m/ek/UoCU/elTiXeywO9G1FQ7
	BZnIbegQaXgPEt0VnKUACNe0daISWIv/sIFyuHXYuANb8+sGsZn+iHvkC9GyCpBCGAzhIMuvGxhd3
	0LfH2YoB2B6EslMtdC5lB+rNksA2HoJzrjw7Li7akaF6h1VAKU6LXl91bVMsXyH2Z2RONm6qg3DfA
	xqsWxJlau17+9M7SwCbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWVTV-0000uC-KX; Mon, 18 Nov 2019 01:05:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWVTR-0000Xt-C8; Mon, 18 Nov 2019 01:05:02 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWVTO-0003jf-2X; Mon, 18 Nov 2019 02:04:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Fix min voltage for
 rk3399-firefly vdd_log
Date: Mon, 18 Nov 2019 02:04:57 +0100
Message-ID: <2125664.Zgi4m6pvVL@phil>
In-Reply-To: <20191111005158.25070-1-kever.yang@rock-chips.com>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_170501_563206_C86001CB 
X-CRM114-Status: GOOD (  10.66  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 11. November 2019, 01:51:56 CET schrieb Kever Yang:
> The min/max value of vdd_log is decide by pwm IO voltage and its
> resistors, the rk3399-firefly board's pwm regulator circuit is designed
> for IO voltage at 1.8V, while the board actually use 3.0V for IO, which
> at last lead to the min-microvolt to '430mV' instead of '800mV'.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

applied for 5.6 (or maybe still 5.5)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
