Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44656134E6D
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 22:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nqqSuBf3mpR1HeNNwqHOVi+BXVVME5ZMGQYohPKnJIM=; b=VJvaGNyGom9Is2cGBSADIOrLhv
	nMh9We6kUhUq/KUNyX8Dp45ACRMFLueO0wvY7XeZkm3oQMQfmpPc+w0pth6Tn+FD7AosdROR9XZo9
	QXc1sHN32MAED1vALlx+dAkwpVr3XeYDAUAI1EZii4KnVKR+ZxN2qN8uv56UkgmLzRFo3FiCRrF7c
	hV2fAnp4qTJyArc3QyG4J6PaCjwjt84OWBLugAaiudc+VjhN3r4+oALEJturrYHBkQkSkTmDxPU16
	7XhXm9sgG1c0Zef+ymGgUDuTspqzCUOG/l728VrwJ3oSEnwxM4FIiAHok16sycRU1ZIPK7IPo4wSq
	JAgQDDxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIZU-0001DQ-L6; Wed, 08 Jan 2020 21:08:56 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIYQ-0000B5-DB
 for linux-rockchip@lists.infradead.org; Wed, 08 Jan 2020 21:07:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=mikxWY2WrXrZaeo3Sy9pZz4F5Xpp8LK8RWbT2pvPkS8=;
 b=c5Zi1M/iQ2ds2zT20WYGa11guG+zfdVtMAe+CAkmqtjzemb3wjvXrWi1zmpmS9MAG5QK
 8uNN63l+wgABhSq0edDU+iAi94G4bM9kYwsOSK29F8qljjGNGLcHLVaNrsiQAFNJEhcTHW
 rAi9ZBJnHh/16U3/uitUJe2uKJ2tR6LMc=
Received: by filterdrecv-p3mdw1-56c97568b5-q2ks7 with SMTP id
 filterdrecv-p3mdw1-56c97568b5-q2ks7-18-5E1644A4-35
 2020-01-08 21:07:48.439329 +0000 UTC m=+1974281.571208866
Received: from bionic.localdomain (unknown [98.128.173.80])
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP id udtq48_xRBOkOOBGcfZLrA
 Wed, 08 Jan 2020 21:07:48.244 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 03/14] phy/rockchip: inno-hdmi: remove unused no_c from
 rk3328 recalc_rate
Date: Wed, 08 Jan 2020 21:07:48 +0000 (UTC)
Message-Id: <20200108210740.28769-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h9ysraDeTlvkeU=2FTa?=
 =?us-ascii?Q?=2F88pEB13iGtDbQ9qBh5gCDeW=2FIlYWIRb34k9xBj?=
 =?us-ascii?Q?hxE2oG2UH0lhwzjkeTUZnOOhuz86tZ5fD6Hf3Qq?=
 =?us-ascii?Q?3F2BbGvYu=2FpywHYjMkUdPwQinP=2FA+TCfyx1Sije?=
 =?us-ascii?Q?Z0ND0iTvhsxScMzp1qge0UiWu6PutjIB3+KJyf9?=
 =?us-ascii?Q?fKW3aYRmovaWR=2FCPIQ5Lw=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_130750_692078_BE0037E9 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [208.117.55.133 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.117.55.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Zheng Yang <zhengyang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

no_c is not used in any calculation, lets remove it.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 093d2334e8cd..06db69c8373e 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -714,7 +714,7 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 {
 	struct inno_hdmi_phy *inno = to_inno_hdmi_phy(hw);
 	unsigned long frac;
-	u8 nd, no_a, no_b, no_c, no_d;
+	u8 nd, no_a, no_b, no_d;
 	u64 vco;
 	u16 nf;
 
@@ -737,9 +737,6 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 		no_b = inno_read(inno, 0xa5) & RK3328_PRE_PLL_PCLK_DIV_B_MASK;
 		no_b >>= RK3328_PRE_PLL_PCLK_DIV_B_SHIFT;
 		no_b += 2;
-		no_c = inno_read(inno, 0xa6) & RK3328_PRE_PLL_PCLK_DIV_C_MASK;
-		no_c >>= RK3328_PRE_PLL_PCLK_DIV_C_SHIFT;
-		no_c = 1 << no_c;
 		no_d = inno_read(inno, 0xa6) & RK3328_PRE_PLL_PCLK_DIV_D_MASK;
 
 		do_div(vco, (nd * (no_a == 1 ? no_b : no_a) * no_d * 2));
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
