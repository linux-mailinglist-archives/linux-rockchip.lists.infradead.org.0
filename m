Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8924E794C2
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 21:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHP8/Pn90DumNLfH0yLH2JgWNAGnYYNsefXGvozBIy4=; b=Wg1IGba8WMl7Zc
	1bYZno7Zagy/BGXgTJUw/gvPncQahnmtCvClD2JQIz9izyt/xLB42FzMy4EZbOdx9WOCo13aSN3i7
	ezzHUJm573IgduRIt/8pG1jVJpICHq77k2SZrpGSLCwynEe5ieI/hLlV0Nm17//whPkxqSE/Fm7tb
	duEweuKeA7PfmVH47ft8UgELEjve4DR3JvsLIvnAFPo90ioAOjCWUw/hs5Q3xkTAiGitnrOHAhHWH
	QVf16GZsYGxJQnKtK2TnXEFU70fcxMB5SLyKqk0r3hZIPw9v1YWifn2TRU4DccFDhIKAHbUad8xOV
	GONndEO9UH8qkBDCKJGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsBQY-0002nL-Qk; Mon, 29 Jul 2019 19:35:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsBQU-0002i4-FD
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 19:35:19 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A87912070B;
 Mon, 29 Jul 2019 19:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564428918;
 bh=XYN/qrYwQHRKz9KRB1CiZLD9OaTPu1tl4KBb3q3d40o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tdlKejRGSSA7euO2+D348JQukrnModNHb19+F8NDdGJGOLHrxkjHJZS+RqAdj7+X7
 aHVcNiR2HUP67yXxywl4BY1Zkfh20faf5MZMDYp7QsXmfWkzp0eOBkcoJwyi/T4RKx
 YwTJbQndqX7hDNy0x2XDqvbYjk+ss98a4D/+i1QY=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.14 225/293] pinctrl: rockchip: fix leaked of_node references
Date: Mon, 29 Jul 2019 21:21:56 +0200
Message-Id: <20190729190841.727001383@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729190820.321094988@linuxfoundation.org>
References: <20190729190820.321094988@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_123518_530222_0E978B8A 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, stable@vger.kernel.org,
 linux-gpio@vger.kernel.org, Wen Yang <wen.yang99@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

[ Upstream commit 3c89c70634bb0b6f48512de873e7a45c7e1fbaa5 ]

The call to of_parse_phandle returns a node pointer with refcount
incremented thus it must be explicitly decremented after the last
usage.

Detected by coccinelle with the following warnings:
./drivers/pinctrl/pinctrl-rockchip.c:3221:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 3196, but without a corresponding object release within this function.
./drivers/pinctrl/pinctrl-rockchip.c:3223:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 3196, but without a corresponding object release within this function.

Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/pinctrl-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index a9bc1e01f982..5d6cf024ee9c 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2941,6 +2941,7 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank,
 						    base,
 						    &rockchip_regmap_config);
 		}
+		of_node_put(node);
 	}
 
 	bank->irq = irq_of_parse_and_map(bank->of_node, 0);
-- 
2.20.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
