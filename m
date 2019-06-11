Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3084A3CFB3
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAuxTKBHZL/kstLUVj+LZCGvzEXVn7EB2jj1Ok6LjY4=; b=tLcJ0Tb/BqW7Ue
	vs6EGBxdItwOM7ES9pHiVmxAMo3H/IevSdSGTXBmPxfBuajQYTIMoWWbDWUPuo4rZFfAuocxibBX3
	RD5xAaqAyQ/xdpyutgZJQyHY7ffGGqXV0pVFmw2ckZgz18B8DK7V9xf0hHXYo/6/ceW26ITBejwIg
	ZuMt9IYqW5Htm3sDeWAzo8g4cf2xMYWqpdiHe5wRQ+JEqH/crNHQFMCdetM91mInnH7V4iUjvvK98
	coztVYLzUUwBOrES6d+t6c+zHNAj39YoU1tL2H7u60VzXK0Ob9BmAdlWQ4KZ+UGoudrOvpqyL3SYY
	OzlZ6mw4eUaT45iVxU+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiBe-0007a4-UL; Tue, 11 Jun 2019 14:55:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiBa-0007Wp-Bh
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:43 +0000
Received: by mail-pf1-x443.google.com with SMTP id t16so7582596pfe.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ih+Anadf88MvP50WAMrcs/65Vc6e/HWE4U7h04mB5FU=;
 b=Ryg2ctVpPaDJkNZtt8LOpdPUe6GCo+axSMnO4iwJvzQ3Ux2QnB2W0/4xICxAEMGix5
 UxMqM1Lr7ep8KLDhERhSUVBTjSbK4kolyQpYguprNRwcFwTaKtlNpmH/1fut2+dbQU1r
 Mspsz8x4cbcGofnmI1wNNlv2+GIzB0jMzT5WM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ih+Anadf88MvP50WAMrcs/65Vc6e/HWE4U7h04mB5FU=;
 b=mp1+a7pWZhisteXZDouAfG/i5EAo/rdDz2bf+JF1kqL2Yyv16Bc8LzwGCsP47ePZ66
 6NdsX0JMmZCeR4CBjkVf2EnCUkP0aOk+p++NY91Fpl5FqLE86M7mx9Dr3vKqzMNNZuCu
 lHzYauMHHE9RpTwrIu7auZrsc2wRMOKMOuxtm9jshyEA2h3OBpl8kgI4B7jgYgHYiU7K
 8fi9wlvrLYdaoCZTaA+wx0cYttW4qoZ1LkgkGnCE9Yt7iODqHah3HxzsDT67loT9iKKf
 1C8FqDmABhfDJoQlvzzywwtUQNOUgXX4iAKp6qOk1fZKXf3fkQ8P1w3m1miNpe8RiQot
 hLRQ==
X-Gm-Message-State: APjAAAVGWOT7kUJT67VS6w3N/7R667bkJe7nIK9TEk0sfArRD/p60ucW
 WUmDbtc+xxNvVPyyIZ0VkEgtqw==
X-Google-Smtp-Source: APXvYqy8zwggSzrhrzD1eD/Z4MO10dJumPrluUSPEw1rwttusXkvcmkLtLDQRYESheb72n+QWwrQ1w==
X-Received: by 2002:a17:90a:372a:: with SMTP id
 u39mr27500295pjb.2.1560264941836; 
 Tue, 11 Jun 2019 07:55:41 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 58/92] ram: rk3399: Add lpddr4 rank mask for cs training
Date: Tue, 11 Jun 2019 20:21:01 +0530
Message-Id: <20190611145135.21399-59-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075542_419040_35D53C2A 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add rank_mask based on the rank number for lpddr4.

This would keep the ca data training loop based on the
desired rank mask value instead of looping for all values.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index a5fa41e498..004a4819ff 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -692,7 +692,10 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
 
-	rank_mask = (rank == 1) ? 0x1 : 0x3;
+	if (sdram_params->base.dramtype == LPDDR4)
+		rank_mask = (rank == 1) ? 0x5 : 0xf;
+	else
+		rank_mask = (rank == 1) ? 0x1 : 0x3;
 
 	for (i = 0; i < 4; i++) {
 		if (!(rank_mask & (1 << i)))
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
