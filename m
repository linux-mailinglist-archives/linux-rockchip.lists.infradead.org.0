Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C0B76871
	for <lists+linux-rockchip@lfdr.de>; Fri, 26 Jul 2019 15:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i09a7/iY55AKPo2BLnGdoMWz8AhUQdjNJ+9nXunVqec=; b=d9Pm6u9Ijvlssu
	gRmfR+Fd5Ypz4R+r18gzr343h6BaTwQpCbC4BlETxrQmbJwrE6MAtzZET97c4EyOQi2m4vaM5ZCP6
	eXUqKFnw4SvbgZbE0lEuJ+ooPkRPSg0UmWQYm86IdW9sWSDk7ELMEcPuB6MiQoV9A9NTQ58NkPXa1
	GSaaUtXwTip8p4neV1mLfpxmrHKw8A71wog24rsjw0QpO/4dQ2NbV7BNMfsnBj3wpiBD81hStL1Om
	OzvY4sdb28EHPJOXK978fgScN9PeID3MGrAgt3jYtyGkTI80UXpjbJ3RAI5XQOb8kqQB6BwHYB6g4
	SV/mRrGOQUdPspf4hquw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0WW-0001DO-FS; Fri, 26 Jul 2019 13:44:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0WS-0001C5-PO
 for linux-rockchip@lists.infradead.org; Fri, 26 Jul 2019 13:44:38 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C418922CC2;
 Fri, 26 Jul 2019 13:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564148676;
 bh=DW0/+b386S6BxIhF3lTqJDjxgcYxjRg3twB+teXfVt4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ADT0auT/1o9R968ugjIzeaKL9pjowHFg5ZYpG+r8HamfkOPOarnHVZsYFmnFyZnJq
 rijUWlbBbv5Lt1eoY0RStmqaMQO5UZusn2Si+C+yyMQXfrrXgm+7hg5Q6GqrR06tNW
 Q98kJOlVFHUIiPETXqJpIlMRo3/RQ5lfXrmih9lM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 03/30] ARM: dts: rockchip: Make
 rk3288-veyron-mickey's emmc work again
Date: Fri, 26 Jul 2019 09:44:05 -0400
Message-Id: <20190726134432.12993-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134432.12993-1-sashal@kernel.org>
References: <20190726134432.12993-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_064436_837011_749BA5B0 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Douglas Anderson <dianders@chromium.org>

[ Upstream commit 99fa066710f75f18f4d9a5bc5f6a711968a581d5 ]

When I try to boot rk3288-veyron-mickey I totally fail to make the
eMMC work.  Specifically my logs (on Chrome OS 4.19):

  mmc_host mmc1: card is non-removable.
  mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
  mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
  mmc1: switch to bus width 8 failed
  mmc1: switch to bus width 4 failed
  mmc1: new high speed MMC card at address 0001
  mmcblk1: mmc1:0001 HAG2e 14.7 GiB
  mmcblk1boot0: mmc1:0001 HAG2e partition 1 4.00 MiB
  mmcblk1boot1: mmc1:0001 HAG2e partition 2 4.00 MiB
  mmcblk1rpmb: mmc1:0001 HAG2e partition 3 4.00 MiB, chardev (243:0)
  mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
  mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
  mmc1: switch to bus width 8 failed
  mmc1: switch to bus width 4 failed
  mmc1: tried to HW reset card, got error -110
  mmcblk1: error -110 requesting status
  mmcblk1: recovery failed!
  print_req_error: I/O error, dev mmcblk1, sector 0
  ...

When I remove the '/delete-property/mmc-hs200-1_8v' then everything is
hunky dory.

That line comes from the original submission of the mickey dts
upstream, so presumably at the time the HS200 was failing and just
enumerating things as a high speed device was fine.  ...or maybe it's
just that some mickey devices work when enumerating at "high speed",
just not mine?

In any case, hs200 seems good now.  Let's turn it on.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3288-veyron-mickey.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
index f36f6f459225..365382ab9ebd 100644
--- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
@@ -161,10 +161,6 @@
 	};
 };
 
-&emmc {
-	/delete-property/mmc-hs200-1_8v;
-};
-
 &i2c2 {
 	status = "disabled";
 };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
