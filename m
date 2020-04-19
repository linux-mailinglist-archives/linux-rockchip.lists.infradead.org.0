Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282281AFA18
	for <lists+linux-rockchip@lfdr.de>; Sun, 19 Apr 2020 14:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiEOzePpZdVePHivfQiZHmdJvkxmIo6sUtKSVnEO6lw=; b=DuEcs+OEGWUviu
	9m3Fulv43Uui7SNzXRdgLwIeH6gXZ9XQ4wXUSYZZMRxrFnnFFz9z5/iB8/0uNEY1XbKpk1ZYEoCR1
	Ud2Mui+Ed+VrILpGBxnr2O4GWME5Aepm5fZsHiMu39hkob+vtSAP1zoZ2h+5OCpLsWYZh+sZrucrg
	YJIAqUtaO8F8liRGNJanzaJz461UjzwXwtOOu3Zmt2hdwkA2CHyhqjjuk7KblO468oQuMtM2/vLDT
	7Owz/7ho5i2U1gTxuamex3JHb9pwYKM5Dmkw1Z3TpepnHDriFBliTFSNKq7jXEbDAbm+gL1DdaB03
	o6drAAuGg3E41Ck4bdMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9CM-0003ib-De; Sun, 19 Apr 2020 12:37:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9BH-0002km-7k; Sun, 19 Apr 2020 12:36:16 +0000
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQ9BB-0006k5-AZ; Sun, 19 Apr 2020 14:36:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/3] arm64: dts: rockchip: add core devicetree for
 rk3326
Date: Sun, 19 Apr 2020 14:35:56 +0200
Message-Id: <158729964648.70529.10290347754936450590.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200414082938.2977572-1-heiko@sntech.de>
References: <20200414082938.2977572-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_053615_302775_B7D59985 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 kever.yang@rock-chips.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 jbx6244@gmail.com, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 10:29:36 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The rk3326 is basically a px30 without the second display controller.
> So add a dtsi based on that, that just removes the affected nodes.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: add core devicetree for rk3326
      commit: df07f7df7e5a61d06b21f89c4ab744fb4e4c2222
[2/3] dt-bindings: Add binding for Hardkernel Odroid Go Advance
      commit: 98412e1e57ea776b4581077a68fe6ed598bfba99
[3/3] arm64: dts: rockchip: add Odroid Advance Go
      commit: ce33988fb69828dfcb5825f9086d9dc2b37a9282

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
