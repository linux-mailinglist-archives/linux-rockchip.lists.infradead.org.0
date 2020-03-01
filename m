Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3711F174A57
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Mar 2020 01:04:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOAavUkcRCQBxc9a+mOIXk6fYjldRbu8diNoc4YvcqM=; b=jFJfPQOYGni6KS
	v4FHoPu78vJ35RxJ8ZjungxhLozkIfgCbtmQV9Pl3LRs/Pl/4tkqdIY64maRUIrrmUUTsI5shh/LR
	l3Hdd1eErGO+aUtU68UV1bzQHyZXn5NqeHGBlYGBI5d4UHLY5Gg4PEUD1fY5kPAmZW9JG9Q6LvP3x
	Y3LvBh8BPiEFjigFd3QqGCMb/wiDO18+sD53geTtkJZ3IGY7rh4ea0m489/t2hg3Dk+lYYflb+UQR
	H3XCao2ZhCl1e6nC+DueUawZ6uSA38aZ0T92Gpp7s5a2YKescFXFnf4TkTYRmfXL3GpSmOe2hTycf
	kGQAbdg+gZeUa6YSOK+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8C5w-0005Jc-QN; Sun, 01 Mar 2020 00:04:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8C5i-000594-9f; Sun, 01 Mar 2020 00:04:19 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8C5g-0004tr-Ls; Sun, 01 Mar 2020 01:04:16 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: fix compatible property for
 Radxa ROCK Pi N10
Date: Sun, 01 Mar 2020 01:04:15 +0100
Message-ID: <2564015.4vhmofR5M8@phil>
In-Reply-To: <20200228061436.13506-4-jbx6244@gmail.com>
References: <20200228061436.13506-1-jbx6244@gmail.com>
 <20200228061436.13506-4-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_160418_484679_2959FF67 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 28. Februar 2020, 07:14:36 CET schrieb Johan Jonker:
> A test with the command below gives this error:
> 
> arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dt.yaml: /: compatible:
> ['radxa,rockpi-n10', 'rockchip,rk3399pro']
> is not valid under any of the given schemas
> 
> During the review process the binding was changed,
> but the dts file was somehow not updated.
> Fix this error by adding 'vamrs,rk3399pro-vmarc-som' to
> the compatible property.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
