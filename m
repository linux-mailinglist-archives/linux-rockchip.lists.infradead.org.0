Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87DD1C6E26
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 May 2020 12:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QRs2t8QJP8sVv+8o9VzkMJydieKWv/FAQk4dELhHkoY=; b=sPe
	xPa+92NTpcWZ+qkyauFyaMd01AdutHSnzT/iXZ0GBQRQhahh5//Abg9ehrZXFlxOWIkYEQSYTZbu4
	9y+ftAAY6CoOcChX9yChocR76NflvAxQ37dd6z0mw+Ns2aLVLqGYE3x/tEiM9ZkjF/a3XlMX2koC1
	chYKJPr6bvNA/82YBjmVUo1ENwUMXjNOlvo5SLFfZ1EGlgAmFVm0S9CL1MrMXmW6gat36/0Fd5dp4
	Rt8uRlC7Q9qanmD58LbMkjcBpMyNAK0ECc5ftsEYAswZ3Qyp6MOe/ts4Iq2IQfVcTtYrxptJGPIHB
	6eHj6bmCh2/opAB47o8+GVAnEW0RtBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWH4Y-0004L0-SM; Wed, 06 May 2020 10:14:38 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWH4V-0004Ka-LS
 for linux-rockchip@lists.infradead.org; Wed, 06 May 2020 10:14:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 975E82A235E
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] pinctrl: rockchip: return ENOMEM instead of EINVAL if
 allocation fails
Date: Wed,  6 May 2020 12:14:24 +0200
Message-Id: <20200506101424.15691-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_031435_831051_07830A46 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: dafna.hirschfeld@collabora.com, heiko@sntech.de, dafna3@gmail.com,
 helen.koike@collabora.com, kernel@collabora.com, ezequiel@collabora.com,
 linus.walleij@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The function rockchip_pinctrl_parse_dt returns -EINVAL if
allocation fails. Change the return error to -ENOMEM

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 098951346339..a9299f0bd21e 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2940,14 +2940,14 @@ static int rockchip_pinctrl_parse_dt(struct platform_device *pdev,
 					      sizeof(struct rockchip_pmx_func),
 					      GFP_KERNEL);
 	if (!info->functions)
-		return -EINVAL;
+		return -ENOMEM;
 
 	info->groups = devm_kcalloc(dev,
 					    info->ngroups,
 					    sizeof(struct rockchip_pin_group),
 					    GFP_KERNEL);
 	if (!info->groups)
-		return -EINVAL;
+		return -ENOMEM;
 
 	i = 0;
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
