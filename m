Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF9F1FE008
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 03:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjP/ONbvr0DSgM/TAs1dpowQJtO+bTL5ZNK9gBk5Fwg=; b=BPiRXlAaTWl/yB
	8OtWx1tYj4+qffmzOak9nCxZHlZyUaOoLny9Qb630tbXKewrN6OY96uItytivXjQPrra/KNAOmdsO
	Tw0u/gSFP2ubptTGjleR2Z3AuLjTsrjjSXoNyNYOV+krDOxyeFDPZX+NCozBxb3h5kLWhemDWcT17
	TahLgPQ1JGFDSFDQdpx/GCsC1mbbqmG7VzxPyAch36/nbl4STcn0UxXQ35K3AfF2IFVqNpzZ8lit7
	WLFm8flseQzNjBTLauiUDeeeNYjh6z0ZjXeSzDII0EzKwHJUPzW3oVd4GvE4LT1yaS89d/XZvhU0l
	Fvd6sbDFI/YMJCmkcwog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljct-0003ho-Vt; Thu, 18 Jun 2020 01:46:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljDJ-0001MF-V7; Thu, 18 Jun 2020 01:19:35 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB4C521D94;
 Thu, 18 Jun 2020 01:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443173;
 bh=PAz4pLAm9XEI1zL/Wk3wIS4gF+KjCk6zdfZrFFmni5k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PmDicJiaOVPEeaE9SeBPrHIw3HNemeH7crHTX22y8t0UhVoNjrHgMDYZtK5wMKwaA
 Icc7FWBxd/kepUY1JIAIXR4ZDerI4KzQif+gwwVPhbrWi8Wr02QE5AbYPYiVXoGMB/
 mlTFczn3eSS4OiLFy8tTYE4ySYOLbd/bfYTwR2Yk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 137/266] pinctrl: rockchip: fix memleak in
 rockchip_dt_node_to_map
Date: Wed, 17 Jun 2020 21:14:22 -0400
Message-Id: <20200618011631.604574-137-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181934_113115_B9359FB5 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

[ Upstream commit d7faa8ffb6be57bf8233a4b5a636d76b83c51ce7 ]

In function rockchip_dt_node_to_map, a new_map variable is
allocated by:

new_map = devm_kcalloc(pctldev->dev, map_num, sizeof(*new_map),
		       GFP_KERNEL);

This uses devres and attaches new_map to the pinctrl driver.
This cause a leak since new_map is not released when the probed
driver is removed. Fix it by using kcalloc to allocate new_map
and free it in `rockchip_dt_free_map`

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Link: https://lore.kernel.org/r/20200506100903.15420-1-dafna.hirschfeld@collabora.com
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/pinctrl-rockchip.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index dc0bbf198cbc..1bd8840e11a6 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -506,8 +506,8 @@ static int rockchip_dt_node_to_map(struct pinctrl_dev *pctldev,
 	}
 
 	map_num += grp->npins;
-	new_map = devm_kcalloc(pctldev->dev, map_num, sizeof(*new_map),
-								GFP_KERNEL);
+
+	new_map = kcalloc(map_num, sizeof(*new_map), GFP_KERNEL);
 	if (!new_map)
 		return -ENOMEM;
 
@@ -517,7 +517,7 @@ static int rockchip_dt_node_to_map(struct pinctrl_dev *pctldev,
 	/* create mux map */
 	parent = of_get_parent(np);
 	if (!parent) {
-		devm_kfree(pctldev->dev, new_map);
+		kfree(new_map);
 		return -EINVAL;
 	}
 	new_map[0].type = PIN_MAP_TYPE_MUX_GROUP;
@@ -544,6 +544,7 @@ static int rockchip_dt_node_to_map(struct pinctrl_dev *pctldev,
 static void rockchip_dt_free_map(struct pinctrl_dev *pctldev,
 				    struct pinctrl_map *map, unsigned num_maps)
 {
+	kfree(map);
 }
 
 static const struct pinctrl_ops rockchip_pctrl_ops = {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
