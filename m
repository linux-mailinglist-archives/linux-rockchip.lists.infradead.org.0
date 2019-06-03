Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D333333E8
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 17:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dgohAdD466R5hg+dZNGYHRGRLRgdD1DuMAauWUnsaqI=; b=HZruMftZn1T4B0nicQBPU2r0b+
	L+8aZoUW6w3XY4NaYifzlSCqA9f72LYdvwazGY+C9uxmrTCKeM/cWzuQhpchUoHL86F7mZ/Eqr8JW
	G8TDFeNUMkLchtWjnoMj59WmZ8WjnhbIsRAUto6cHNV5KTWse352M7Gi2aNriql8l4BVOCGwepI4A
	38N/LO35cQkBTTrCWkyztQrlLNQP7m45AXpseYvpMGQTwaBRuELWunMT7nUaPQ/reUG3tuo+Yun7K
	g39S6uZeQ3CnIVnVCdpxw56jAsEX3G5VM/ezfrSOoQ5FRO/0bzVUScpRbJJPUyjzURBEw6RFl8V0j
	SjDZx/uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpEx-0006bD-Cu; Mon, 03 Jun 2019 15:51:15 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpEu-0006ar-TP
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 15:51:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 823DD15AB;
 Mon,  3 Jun 2019 08:51:12 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 CEC803F246; Mon,  3 Jun 2019 08:51:10 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 09/57] drivers: sound: rockchip: rk3399: Use
 bus_find_device_by_of_node helper
Date: Mon,  3 Jun 2019 16:49:35 +0100
Message-Id: <1559577023-558-10-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559577023-558-1-git-send-email-suzuki.poulose@arm.com>
References: <1559577023-558-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_085112_954702_B92E670E 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Heiko Stuebner <heiko@sntech.de>, suzuki.poulose@arm.com,
 gregkh@linuxfoundation.org, rafael@kernel.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Switch to using the bus_find_device_by_of_node helper

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Takashi Iwai <tiwai@suse.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 sound/soc/rockchip/rk3399_gru_sound.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
index 3d0cc6e..677c92c 100644
--- a/sound/soc/rockchip/rk3399_gru_sound.c
+++ b/sound/soc/rockchip/rk3399_gru_sound.c
@@ -405,11 +405,6 @@ static const struct dailink_match_data dailink_match[] = {
 	},
 };
 
-static int of_dev_node_match(struct device *dev, void *data)
-{
-	return dev->of_node == data;
-}
-
 static int rockchip_sound_codec_node_match(struct device_node *np_codec)
 {
 	struct device *dev;
@@ -421,8 +416,8 @@ static int rockchip_sound_codec_node_match(struct device_node *np_codec)
 			continue;
 
 		if (dailink_match[i].bus_type) {
-			dev = bus_find_device(dailink_match[i].bus_type, NULL,
-					      np_codec, of_dev_node_match);
+			dev = bus_find_device_by_of_node(dailink_match[i].bus_type,
+							 NULL, np_codec);
 			if (!dev)
 				continue;
 			put_device(dev);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
