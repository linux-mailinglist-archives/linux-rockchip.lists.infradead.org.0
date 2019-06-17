Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AAC47B5A
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkLFys+ucUlRW2LvB8zkJ2pZ5D3cpZexB1dUZ4Eb8zQ=; b=tXFBxxTzvFm9Sq
	pVCJf/LNaGE4vKymJYZzuQuJ8I0EAYpuRprkAFwk/OIoJPR5ngoa2ixVvHaDiXrR5dO3I8NZwoqif
	Rw48NgfrHJb9LomzmUZP/2iJPbvE/Jp2lqqStekHhCLDwFR/u9e64FOruG/PPQ8JjEDFgC/GKZSys
	2fK5jyRWHO3XEzUm/JTqrjDLq6nlV3Z5/6KX/Ss+dbnhKL14Z48d71PpglNweChB43bWu3YgYGG0b
	f9CvnQHxHFBlz0AMTdJ7tepbWk1+iNSvNdHE2s4nXQxGdQQflc7cTydVq2KYxACsREGevSfgI2df+
	UPwR5FNwDNJdQywx9McQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmF2-00087q-Bv; Mon, 17 Jun 2019 07:39:48 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEy-000862-Tt
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id p184so5187202pfp.7
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0dBKJAw/OqEa6SfO5qnRhxLrvR7EKsvthsOfsjyIDWk=;
 b=q8ylcSA4bX5cXuMTQCexyV29NrLRTAO2h9d4vi5+TNNvxYT1gMjrJ7XXr+rRTW/Tdo
 EggE8aMg3MZ6XDh1gNCPbGfdHa0oxXWf7Yta7PbXRohaH6e/B8QM7oUOfbRmRqygfDLa
 llVhK2NaKfTK1cfgfOJ+1yQnm6PR+nG1j1k4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0dBKJAw/OqEa6SfO5qnRhxLrvR7EKsvthsOfsjyIDWk=;
 b=rQW9dHV0Ddn+07YFh92XqFatkzE3QVFxpym619KaV27LNykKC+H++PGGjOcO0DHqBR
 Oq0+jDpX8Epfk3eHVVerkS2HD+7GLcELJHCPMN//E77UleCCkF1ECBNGAEvYbE3Huqrr
 +pJSivmpkbrydLwWsidB4sWSsSjmuV5mp2IkwDQ31ASXGF7M1+WggYVXObAO14C3jUtU
 kHF7apC4k+ow37nLikkiM3hu2Sh5H5dJDxYwP91fVO06vF+XaHE0R43bLlcWumjcfz1w
 ItuYFAx6NLR7sdAOCsQIzFVN/ndxyXJhO4Z4m9LXSDkpg8k/kRqOraQ4yFqG1gJhWAZR
 0cXQ==
X-Gm-Message-State: APjAAAWqoe8gRIGve2KCmP6mEgJ2JlNxUdzM907DAlQObxr0fvGJfLUH
 gcvXeOtT6cF1iiLfm3pX4G+7Wg==
X-Google-Smtp-Source: APXvYqyI/TXqWXcn1EGKTATKaAEF96RyhcygZcp+rOn3QTJdoQOgYp2eWm6VikGYx1DtkN7indH13Q==
X-Received: by 2002:a17:90a:3787:: with SMTP id
 v7mr24903327pjb.33.1560757184453; 
 Mon, 17 Jun 2019 00:39:44 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:44 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 61/99] ram: rk3399: Add lpddr4 rank mask for wdql training
Date: Mon, 17 Jun 2019 13:02:14 +0530
Message-Id: <20190617073252.27810-62-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003945_096045_05AC1AB1 
X-CRM114-Status: GOOD (  10.61  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add rank_mask based on the rank number for lpddr4.

This would keep the wdql data training loop based on the
desired rank mask value instead of looping for all values.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index d967a602bc..935e3c495e 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -925,7 +925,10 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
 
-	rank_mask = (rank == 1) ? 0x1 : 0x3;
+	if (params->base.dramtype == LPDDR4)
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
