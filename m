Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D4C1BAE4C
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 21:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dODvQpgx+iE17xUX0JrJK0jTDtR1T3TXhX3PA3s66+8=; b=UeQJimitMSRUyr
	ZF5wxB7cs2jRQUXYj+4/koUOcjnJkmcnk7TSseN6gImDxEmNA44rYvM35nfY3S4sqUTAL5ZOlyXK4
	jr99PXQyzGHMycEielxz4psKRDEPmIWUnkv1EbSAGobmKrtIR5OjGXfIFsekDDelfd5uBCzWczZq9
	eXKTb8xUza7xWEEx2Ppv20e9n2BxUtDUmBwBN+QfjWpovld5ojaf71PfradlygL57KKCVnaWqNn5P
	o0Z9AYoIXI7Ygus0JcWg9wyRP9h06xlfgqNzJX7SCqsiEInMjMxRxsbsQU3KY8VK0+ICm0S74k+7o
	IWN5WuLD4E+eLzEqvktA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9gE-0004gD-6e; Mon, 27 Apr 2020 19:44:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9eU-0002y1-Km; Mon, 27 Apr 2020 19:42:51 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jT9eR-00008e-D4; Mon, 27 Apr 2020 21:42:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: remove #sound-dai-cells from
 &i2s1 node of rk3399-pinebook-pro.dts
Date: Mon, 27 Apr 2020 21:42:46 +0200
Message-Id: <158801655764.50670.4654854118288471887.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200424155600.24254-1-jbx6244@gmail.com>
References: <20200424155600.24254-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124250_705243_9D321196 
X-CRM114-Status: GOOD (  10.26  )
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

On Fri, 24 Apr 2020 17:55:59 +0200, Johan Jonker wrote:
> The '#sound-dai-cells' property is already defined in rk3399.dtsi
> at the 'i2s1' node, so remove it from the '&i2s1' node in
> 'rk3399-pinebook-pro.dts'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 1 -
>  1 file changed, 1 deletion(-)
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: remove #sound-dai-cells from &i2s1 node of rk3399-pinebook-pro.dts
      commit: e565dd298c6bc9f53f0b07d96b019e000777c1fe
[2/2] arm64: dts: rockchip: remove #sound-dai-cells from &spdif node of rk3399-hugsun-x99.dts
      commit: de70083cbaabb86c282f421b070b041236ba6f4b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
