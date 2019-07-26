Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD62767E8
	for <lists+linux-rockchip@lfdr.de>; Fri, 26 Jul 2019 15:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=db3pAiESXxoBsBVx6x43XQj9o/xP8pzQbOLoEs4YboE=; b=gmrtsSdS1v2xKD
	d9wXVigNFtvjryshq+xYSJG+QIyzCvMNt1QeYXhtkP7DbYug+Jw2Y1O2oxABeLa30jCQJ42OBJO+S
	6jTDLiblvohBL3wxloCzCigskvo5cE80We1T34Pv8Po05naU1EPUc8C9hpifvIR//S0rsLfY41dPs
	N0+o7v+kOi/j5Zm0i5hIkQkihQZcO4tGUGHstFn3bfe8iP+LqN+2i2+PVYavvkelhcVlxX7+/fULJ
	dFnUeFPD9eZrukXskKUlvKxj/EAu7gbnZV0D1OcWFX4nR7f1Pcxr/6mWTTVMe66Ype+NZ2XNMdeGW
	LQKLHTHfo0UFkcHpyIYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0Sq-000361-C1; Fri, 26 Jul 2019 13:40:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0SM-0002m7-Hl
 for linux-rockchip@lists.infradead.org; Fri, 26 Jul 2019 13:40:24 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C9F622CBB;
 Fri, 26 Jul 2019 13:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564148422;
 bh=qUDUVLtmZIyXHd2fhXS7k3Cp3hGJM9arf5K+CPuawhs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2f6oeWvW17t1G62zvSmS+wl6Q3nBw4LFTwrL6a6QcaGpkq74r91jVSqn0hS+lIRNw
 HOrmaXiZSjtZyGL+5qgNGumajAo4+paK5GH8sknIFLvsfMGO3djT5ZHDPNNOnhyg/S
 znwSf2g6ckP2gkP9mT2yFfhMTC2r5MOR0KVfyehg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 25/85] arm64: dts: rockchip: Fix USB3 Type-C on
 rk3399-sapphire
Date: Fri, 26 Jul 2019 09:38:35 -0400
Message-Id: <20190726133936.11177-25-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726133936.11177-1-sashal@kernel.org>
References: <20190726133936.11177-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_064022_790118_AB3B14CA 
X-CRM114-Status: GOOD (  11.64  )
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Vicente Bergas <vicencb@gmail.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Vicente Bergas <vicencb@gmail.com>

[ Upstream commit e1d9149e8389f1690cdd4e4056766dd26488a0fe ]

Before this patch, the Type-C port on the Sapphire board is dead.
If setting the 'regulator-always-on' property to 'vcc5v0_typec0'
then the port works for about 4 seconds at start-up. This is a
sample trace with a memory stick plugged in:
1.- The memory stick LED lights on and kernel reports:
[    4.782999] scsi 0:0:0:0: Direct-Access USB DISK PMAP PQ: 0 ANSI: 4
[    5.904580] sd 0:0:0:0: [sdb] 3913344 512-byte logical blocks: (2.00 GB/1.87 GiB)
[    5.906860] sd 0:0:0:0: [sdb] Write Protect is off
[    5.908973] sd 0:0:0:0: [sdb] Mode Sense: 23 00 00 00
[    5.909122] sd 0:0:0:0: [sdb] No Caching mode page found
[    5.911214] sd 0:0:0:0: [sdb] Assuming drive cache: write through
[    5.951585]  sdb: sdb1
[    5.954816] sd 0:0:0:0: [sdb] Attached SCSI removable disk
2.- 4 seconds later the memory stick LED lights off and kernel reports:
[    9.082822] phy phy-ff770000.syscon:usb2-phy@e450.2: charger = USB_DCP_CHARGER
3.- After a minute the kernel reports:
[   71.666761] usb 5-1: USB disconnect, device number 2
It has been checked that, although the LED is off, VBUS is present.

If, instead, the dr_mode is changed to host and the phy-supply changed
accordingly, then it works. It has only been tested in host mode.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 04623e52ac5d..1bc1579674e5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -565,12 +565,11 @@
 	status = "okay";
 
 	u2phy0_otg: otg-port {
-		phy-supply = <&vcc5v0_typec0>;
 		status = "okay";
 	};
 
 	u2phy0_host: host-port {
-		phy-supply = <&vcc5v0_host>;
+		phy-supply = <&vcc5v0_typec0>;
 		status = "okay";
 	};
 };
@@ -620,7 +619,7 @@
 
 &usbdrd_dwc3_0 {
 	status = "okay";
-	dr_mode = "otg";
+	dr_mode = "host";
 };
 
 &usbdrd3_1 {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
