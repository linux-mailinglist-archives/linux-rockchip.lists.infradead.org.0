Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3C357B87
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Jun 2019 07:34:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtgOwv3Jrz+z5WB7LPy6Qa8fk3MPEKQ13sIuFV6zqFQ=; b=oU1rYggKJ7iT7d
	6bj+94woICDDZg/h7dI+jkVcPiH8DnAo/FWiT4earnBijcyTuCOxcC0A+vJX4oOYDeSCMx0XbyDyN
	FarWry2Y7gbfS8Nk/xEv6JQSvdtaEwMWO9lnvnHJTjpR2OaBCVz6NGd+Dx0s5wvOLT3QC7rm2+ppU
	JslKGPAnw8uSj583ngLOvEQZsddOOSHrrzh1gIMXFVTbk6zyaBogC8VYEjgEW1uDOjqKLZPtnUxV8
	DOD8AJ/jIJCyZsdafeN22IrujpMnzD4oZ9nDKvDumv1hcrXbsCQ+rGgn+VP3YYA/5j5PPDstS/AAE
	NqB9UsyYWz9IR6PXS9rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN3L-0005j0-RN; Thu, 27 Jun 2019 05:34:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMsq-0006ep-Lz; Thu, 27 Jun 2019 05:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GWrM+dN9D4Et8TcclfTlE9xf6mmy1IE2t2p8pJf1NRw=; b=RwrHTsZ6F4/qwmt3fQEuNj8OGh
 pjhIVad4LrGEXFe/xv9hVBaO4MQgk9ygJk6puWsJYBWoIscJ/HEvsuqNsO9lhsz7nYJV8pB5rYC3s
 gZG9pTuNgyWstl3t9nG5t82/ETHdzxblv75ucKNSKW8rtfO8hBoBYav4jkaUZN4+cN7cQPGskIhAn
 B26MuQbKHrAKprrymXgvuW4MYRvu6bJlemmjF78dDwSM2OPPrbO71UX93QBRCe17zk+ODxal5gA/U
 my2fx3p5DIqEY8AdvobxHCMjJmei3SjgRoDs2BETHtp+4CHUJHjqiyOUXOVYgr8bPPk0i+CkPHl9d
 Y6nqzziw==;
Received: from gloria.sntech.de ([185.11.138.130])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgGKD-0006ri-Mb; Wed, 26 Jun 2019 22:23:35 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hgGK4-0004R2-4U; Thu, 27 Jun 2019 00:23:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH v3 1/1] arm64: dts: rockchip: add core dtsi file for
 RK3399Pro SoCs
Date: Thu, 27 Jun 2019 00:23:23 +0200
Message-ID: <1733690.4bxWPRXO5t@phil>
In-Reply-To: <20190530000848.28106-1-jay.xu@rock-chips.com>
References: <20190529074752.19388-1-jay.xu@rock-chips.com>
 <20190530000848.28106-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_232333_786824_8371BB42 
X-CRM114-Status: UNSURE (   7.97  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, zhangzj@rock-chips.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 manivannan.sadhasivam@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 30. Mai 2019, 02:08:48 CEST schrieb Jianqun Xu:
> This patch adds core dtsi file for Rockchip RK3399Pro SoCs,
> include rk3399.dtsi. Also enable pciei0/pcie_phy for AP to
> talk to NPU part inside SoC.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

applied for 5.3

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
