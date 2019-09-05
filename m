Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64684AA2DD
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Sep 2019 14:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TgelC/whzHjd2/9wBRUwYNM8Mi7me2OrXMhJCQy8Y6g=; b=YRoGm3soVI2Oec
	mvuFDZiJCPk7JQDTMXjs9kkWU2NDz7wpD88r+1+FF+8IA3/XeK2DpqlBf7gjxVC/Bs4o6bsziuQX+
	U4yL5Ba6YHDuvgh1pa+vvQGyr6P+l73ZxmZJ8sfHZYC4TC8JUdSQWQpmd/xHHBEkMDYHpj6PYrkuy
	Ya2THOxIROVOgnVum6/4Hqbm1juEx2Xr+ot6+EEnsyQWcKBRv5kFjt4Km8VUYwy20SvvOterECFJe
	12bJDp8MbTNqdYxfm4UnJn1gWNBPQf0t1R/eFrHxZVVmLME35UY6D1sJS4e0Uz50jPwHDDmhqRaS/
	1RwFq5Pt0cXIXfq+9XHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qia-0006DL-Jx; Thu, 05 Sep 2019 12:18:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qiL-00062D-Ly; Thu, 05 Sep 2019 12:18:15 +0000
Received: from wf0413.dip.tu-dresden.de ([141.76.181.157] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1i5qiK-0003pP-9j; Thu, 05 Sep 2019 14:18:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 1/2] Rockchip DT32 changes for 5.4 - round2
Date: Thu, 05 Sep 2019 14:18:11 +0200
Message-ID: <1718334.9BoTfW0Ujv@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_051813_869464_08C8A31F 
X-CRM114-Status: GOOD (  12.51  )
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

Hi (arm-)soc people,

please find below and in the reply a small second round of Rockchip changes
targetted at 5.4.

Mainly only small cleanups and have been in linux-next for a while now,
I just didn't get to pull-requests due to travel and jetlag.
Linus wrote that he wants to do an -rc8 but if the stuff below is too late
I can also easily move it to 5.5.

So if not too late, please pull
Thanks
Heiko


The following changes since commit dd7c66ac777a70e224e66593e95ce6d22147c919:

  ARM: dts: add device tree for Mecer Xtreme Mini S6 (2019-08-16 18:04:43 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.4-rockchip-dts32-2

for you to fetch changes up to 9f72a1d0300b03a9fc6cba93f8cc0ab326185788:

  dt-bindings: arm: rockchip: remove reference to fennec board (2019-08-22 21:32:18 +0200)

----------------------------------------------------------------
Removal of the rk3288-fennec board which never made it to
any market.

----------------------------------------------------------------
Kever Yang (2):
      ARM: dts: rockchip: remove rk3288 fennec board support
      dt-bindings: arm: rockchip: remove reference to fennec board

 .../devicetree/bindings/arm/rockchip.yaml          |   5 -
 arch/arm/boot/dts/Makefile                         |   1 -
 arch/arm/boot/dts/rk3288-fennec.dts                | 347 ---------------------
 3 files changed, 353 deletions(-)
 delete mode 100644 arch/arm/boot/dts/rk3288-fennec.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
