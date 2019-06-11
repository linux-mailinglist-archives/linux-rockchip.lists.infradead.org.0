Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DB83C6AC
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 10:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jih/9kUh3raWDNnSHk4GYjAdBttdrpfPbJSmUVIKbz4=; b=LZCPZQhXe7YxPC
	uIuT0wKp3qHoFj62JTrbf0Lhi7AJi5j8ViMl8/nUPCaTQsCkLgJUn0ucXWcy1FtO88P3DjQ8BKo+z
	rQhXhUzQGZX1MZ40vt/m0eho7TlF2DwjjY+G0YOgmFQXsgSGWXLOl80JNbPmsIQL3jW9ik3o/iDES
	HUrrjLf5SyOxkxEz4Tew5AQfokTMD+FFRmsJ1uJEfV2wqRC4/gxDpzt545Uk8J6/66DnYx2N/aiaB
	+qt1WNVhsxoxIxJ9NsfF0R36zTJlUsWnz3FDRDf8TAYN70RZIkEmhC1MTwqlGjqt7rkPIHBuY0StL
	twg08sgBcdAUMEuNPowg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacZ1-0003UH-P4; Tue, 11 Jun 2019 08:55:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacYN-0001rr-CI; Tue, 11 Jun 2019 08:54:53 +0000
Received: from p508fd648.dip0.t-ipconnect.de ([80.143.214.72]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hacYL-00018w-Vp; Tue, 11 Jun 2019 10:54:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 2/3] Rockchip dts64 updates for 5.3 round 1
Date: Tue, 11 Jun 2019 10:54:49 +0200
Message-ID: <12386546.HbqOaVNIXM@phil>
In-Reply-To: <3004130.oi6ZuZy1Zf@phil>
References: <3004130.oi6ZuZy1Zf@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_015451_651759_221EB347 
X-CRM114-Status: GOOD (  11.41  )
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-dts64-1

for you to fetch changes up to 45fa7c3838715b34ccea661e4b7b261d91668b17:

  arm64: dts: rockchip: add WiFi+BT support on ROCK Pi4 board (2019-06-04 15:38:54 +0200)

----------------------------------------------------------------
PCIe for rockpro64, wifi+bt for Rock-PI4, spi for Rock960 family
and a fix for the yet unused isp-iommus.

----------------------------------------------------------------
Akash Gajjar (1):
      arm64: dts: rockchip: add WiFi+BT support on ROCK Pi4 board

Helen Koike (1):
      arm64: dts: rockchip: fix isp iommu clocks and power domain

Katsuhiro Suzuki (1):
      arm64: dts: rockchip: add PCIe nodes on rk3399-rockpro64

Manivannan Sadhasivam (2):
      arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
      arm64: dts: rockchip: Enable SPI1 on Ficus

 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts     |  6 ++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 97 +++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts   | 10 +++
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 18 +++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi          |  8 +-
 5 files changed, 135 insertions(+), 4 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
