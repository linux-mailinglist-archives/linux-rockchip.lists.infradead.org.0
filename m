Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B77AA2E0
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Sep 2019 14:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/0esV3mwGILYc+KVw2Ps9iZ5jpwe84JIsOAwdiP6LI=; b=E0LAMJ+ilsrXYe
	Wwu33iZ+1VNRSYyl9rp+qX0gewNyRq8Y7eUtKv3fkE5fNLf+0w1DHH7jdSmPYWhJkVu3dtS/CTID1
	c24EU0wT8rGaSto9zRsrKrSd3gfEVnlsROX+pWeB6RPKg8XbGUAcmc5TdVVKbNVvsVs3/JO+N+DCt
	8+gRloUwVQ2i4fcqQolqDq3Gmy4vUKWK9PCUqVST09NMtcajthh8w2CYhyMhh5LzsmTFetd7Z5Kyl
	keRVhyttnPhBXuN8pZObNFU3OGnPcZDauitOsU6wj0l+4kfOq1xsl2BIuXQrZKwW6E0i0X6etSqyL
	xreIQBJ/SVgCQ1b9FM0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qjI-0006UY-NI; Thu, 05 Sep 2019 12:19:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qj2-0006J1-FU; Thu, 05 Sep 2019 12:18:57 +0000
Received: from wf0413.dip.tu-dresden.de ([141.76.181.157] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1i5qj1-0003qD-6Y; Thu, 05 Sep 2019 14:18:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 2/2] Rockchip DT64 changes for 5.4 - round2
Date: Thu, 05 Sep 2019 14:18:54 +0200
Message-ID: <43564855.cWDBQSyQMS@phil>
In-Reply-To: <1718334.9BoTfW0Ujv@phil>
References: <1718334.9BoTfW0Ujv@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_051856_662834_F99A3F2C 
X-CRM114-Status: UNSURE (   9.92  )
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
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The following changes since commit fc702ed49a8668a17343811ee28214d845bfc5e6:

  arm64: dts: rockchip: Add dts for Leez RK3399 P710 SBC (2019-08-16 14:39:20 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.4-rockchip-dts64-2

for you to fetch changes up to 03e61929c0d227ed3e1c322fc3804216ea298b7e:

  arm64: dts: rockchip: limit clock rate of MMC controllers for RK3328 (2019-09-01 03:00:17 +0200)

----------------------------------------------------------------
RK3328 mmc clockrate limit and addition of vpu node as well
as a regulator fix for the rk3328-rock64.

----------------------------------------------------------------
Jonas Karlman (1):
      arm64: dts: rockchip: add rk3328 VPU node

Kever Yang (1):
      arm64: dts: rockchip: fix vcc_host_5v regulator for usb3 host

Shawn Lin (1):
      arm64: dts: rockchip: limit clock rate of MMC controllers for RK3328

 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 11 ++---------
 arch/arm64/boot/dts/rockchip/rk3328.dtsi       | 17 ++++++++++++++++-
 2 files changed, 18 insertions(+), 10 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
