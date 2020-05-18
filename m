Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1021D8B26
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 00:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRxVXAKn7cEmamqdA9dQ/pJokNLgFmtOznu/qqZZA7g=; b=Q/kp8Ix1qbMyHv
	ppggqyJ1HgzEXkKvky7YdFNpisSATcGl6+qMjwzRtEpiVa1Em8+I7ntxJHuInCQwtCd4vzCUYT43/
	s5QbtN5wcXrUlH8aHO/wld4JvaxtaaXWED0wQ9JRcYMEf0CQzW6mxexXKeT88F2B3FTrd0H8TdQTF
	ueS9IG2kzDqIaHtuKoIW7xHbqvW9x6Gi15Vk5pE3t3qfso201olHoDd+7S4K1oEs2bdGF42fiCWLE
	77/qqp5Vm4wGn5la6jI8jymjMBKMpcM/iPw68y6jB8aZXl4yFud3HugrEQtB+aGYY2LAzEQQ6B1FL
	LZBwM6kwCh1mEPcHifWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoTW-0003pc-Ms; Mon, 18 May 2020 22:43:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoSs-0003D0-TD; Mon, 18 May 2020 22:42:32 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaoSn-0000D0-7B; Tue, 19 May 2020 00:42:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Justin Swartz <justin.swartz@risingedge.co.za>,
 Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2] ARM: dts: enable WLAN for Mecer Xtreme Mini S6
Date: Tue, 19 May 2020 00:42:23 +0200
Message-Id: <158984169638.2264085.17568438379923007784.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200406135006.23759-1-justin.swartz@risingedge.co.za>
References: <e602c1b8-3606-a8d3-c64c-ec9e58315974@gmail.com>
 <20200406135006.23759-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_154230_947008_FCD5C968 
X-CRM114-Status: UNSURE (   8.47  )
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
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 6 Apr 2020 13:50:04 +0000, Justin Swartz wrote:
> The Mecer Xtreme Mini S6 features a wireless module, based on a
> Realtek 8723BS, which provides WLAN and Bluetooth connectivity via
> SDIO and UART interfaces respectively.
> 
> Define a simple MMC power sequence that declares the GPIO pins
> connected to the module's WLAN Disable and Bluetooth Disable pins
> as active low reset signals, because both signals must be deasserted
> for WLAN radio operation.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: enable WLAN for Mecer Xtreme Mini S6
      commit: 6067ec2c7ffacab4689ddfed3df74a467d112efe

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
