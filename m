Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635901BAE31
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 21:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5XGTJZNgkTn3IR5dThO7W6xw7vnVCDNwI7fbZYScdY=; b=EacKdPbdOW//F6
	YJPVY8uwyKtbGRxHrrPvwA16LEeyeTSgnO2w1qkFVnQ5y+D1REEyUBdX67yBYvjD5a712SGQCBc+C
	bAGZMG3xX5GqQeRyEQxqu7Gz6riLS8noGs0GNOb24RhDb155Sq3jkGBtjLE4qt3GTGkL+EAFufKc2
	pLY08sBc2DzO62kNuMkIjUHIlmVCB2opetjV7TN5wOwmzt2lhBUQoHjavsrqysvzxL8Kq2qpj69iu
	AYTQiTqCtjpGJD3FoxOLVDxjigFIdlF5spz9yju21RUaWV0rOn0lEp21Amc4mSLnc3dM2a3bAhbzG
	r1X7sfCuOi9df9XwFO5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9eH-0002mc-7g; Mon, 27 Apr 2020 19:42:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9eC-0002ij-4r; Mon, 27 Apr 2020 19:42:33 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jT9eA-00007W-QQ; Mon, 27 Apr 2020 21:42:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: remove extra assigned-clocks
 property from &gmac2phy node in rk3328-evb.dts
Date: Mon, 27 Apr 2020 21:42:24 +0200
Message-Id: <158801649141.50507.12064704129185456183.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200425122345.12902-1-jbx6244@gmail.com>
References: <20200425122345.12902-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124232_183211_CC80FD8E 
X-CRM114-Status: UNSURE (   8.24  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 25 Apr 2020 14:23:44 +0200, Johan Jonker wrote:
> There are 2 'assigned-clocks' properties in the '&gmac2phy'
> node in 'rk3328-evb.dts', so remove one of them.
> 
> Info from clk-rk3328.c:
> 
> MUXGRF(SCLK_MAC2PHY, "clk_mac2phy", mux_mac2phy_src_p,
> CLK_SET_RATE_NO_REPARENT,
> RK3328_GRF_MAC_CON2, 10, 1, MFLAGS),
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: remove extra assigned-clocks property from &gmac2phy node in rk3328-evb.dts
      commit: f73a28284e2a89a7ca1e10e04514aedd33290c76
[2/2] arm64: dts: rockchip: fix status for &gmac2phy in rk3328-evb.dts
      commit: c617ed88502d0b05149e7f32f3b3fd8a0663f7e2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
