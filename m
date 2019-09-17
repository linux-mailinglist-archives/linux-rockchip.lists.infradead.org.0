Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84875B48F4
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wIahx+0jcUgJO1c3p3CH2920OhaHQiiDUszYE+5mctc=; b=HGTrA35DgN5HQw
	KZ88yWLu3zj2UkONM0Ird5YCkUIyVtpfsFcSTg1/+TVPexYdcU6ZDTD8oCllyStFCm3g2hGG168E3
	SluGwUDLxNA7mQZ8IqlzoX+qtiqqXxcuPn4pM+O/wOz/bKyy9w5rFKekhw1hb9ypzLQj5iQnm4kmc
	wmp65RJl/qUoOsSazk+Wu9kwT8XOE7kmjjZnlwaLU71Wp2Jt3ALTTxLj+dUJGV9NvpbU7Ku7iQW1S
	Xsc1Un2YMMry9MIpiZo05fr8tC5AYAhP7vRUZhOCm14BL4NmQqL/hQgsWwAI9ZymoHTMy9+vb2V8d
	cxrSWbgsdHct5/IpLGSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8cQ-0005Bm-0t; Tue, 17 Sep 2019 08:13:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8c7-00051n-0o
 for linux-rockchip@lists.infradead.org; Tue, 17 Sep 2019 08:13:34 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8bz-0005RU-WA; Tue, 17 Sep 2019 10:13:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lee.jones@linaro.org
Subject: [PATCH 1/4] mfd: rk808: fix rk818 ID template
Date: Tue, 17 Sep 2019 10:12:53 +0200
Message-Id: <20190917081256.24919-1-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_011331_291873_72F45C50 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: d.schultz@phytec.de, Heiko Stuebner <heiko@sntech.de>,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, Joseph Chen <chenjh@rock-chips.com>,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Daniel Schultz <d.schultz@phytec.de>

The Rockchip PMIC driver can automatically detect connected component
versions by reading the ID_MSB and ID_LSB registers. The probe function
will always fail with RK818 PMICs because the ID_MSK is 0xFFF0 and the
RK818 template ID is 0x8181.

This patch changes this value to 0x8180.

Fixes: 9d6105e19f61 ("mfd: rk808: Fix up the chip id get failed")
Cc: stable@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>
Cc: Joseph Chen <chenjh@rock-chips.com>
Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Acked-by: Lee Jones <lee.jones@linaro.org>
[resend as it seems to have dropped on the floor]
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 include/linux/mfd/rk808.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 7cfd2b0504df..a59bf323f713 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -610,7 +610,7 @@ enum {
 	RK808_ID = 0x0000,
 	RK809_ID = 0x8090,
 	RK817_ID = 0x8170,
-	RK818_ID = 0x8181,
+	RK818_ID = 0x8180,
 };
 
 struct rk808 {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
