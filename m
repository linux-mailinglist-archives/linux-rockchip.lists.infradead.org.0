Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 698C9128909
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 13:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlUhXRlkMzvXrfUUCFv6+ivaouCwGVQzhpgZVPH7X+8=; b=gI56jR0vw3ORze
	q7pnaJiGh+cg4OoAin9vKQotKRVMTQ7v0nakQxWPxGc1Zbvizt3764Rmt3I3ZJyiP4it8dbBnJDY5
	xt6EKof1NB1703WfzouDM95qvsg6DZnzgI8zxdo27k2JoDYR4PdjqL7oQ2Cjrqc49ltMyosGcBVPw
	ProkqgYzzdPOdaS5Fw+5wMXuv/qn46pFqcRpb/9slZfiDNZ6yUEp3/UOz1GPhP8IBpKq5rB1MNu5/
	aiG0St/uoppWGA7KnJOvkOzi2IwH/Lu07VYO6tp1KTLODpAIxJdincu1tqxStW4v/Sl3L6+6btYs8
	eoMjPX94uDDtPt5osL5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iidgG-0004iO-9E; Sat, 21 Dec 2019 12:16:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iidg3-0004ai-TU; Sat, 21 Dec 2019 12:16:13 +0000
Received: from [195.37.15.138] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iidfu-0004rE-Np; Sat, 21 Dec 2019 13:16:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 0/4] arm64: dts: rockchip: Add Rock Pi N10 support
Date: Sat, 21 Dec 2019 13:15:59 +0100
Message-ID: <2568287.AjJObobGxI@phil>
In-Reply-To: <20191216174711.17856-1-jagan@amarulasolutions.com>
References: <20191216174711.17856-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_041612_103340_B3824A68 
X-CRM114-Status: UNSURE (   8.55  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tom Cubie <tom@radxa.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 16. Dezember 2019, 18:47:07 CET schrieb Jagan Teki:
> Unlike, other Rock PI boards from radxa, Rock Pi N10 SBC is based
> on SOM + Carrier board combination.
> 
> Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
> - VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
> - Dalang carrier board from Radxa.
> 
> patch 0001: dt-bindings for Rock Pi N10
> 
> patch 0002: VMARC RK3399Pro SOM dtsi support
> 
> patch 0003: Radxa Dalang carrier board dtsi support
> 
> patch 0004: Rock Pi N10 dts support
> 
> Tested basic peripherals and will all more in future patches.

applied all 4 for 5.6

And looking for to seeing the rk3288-variant as well :-D .

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
