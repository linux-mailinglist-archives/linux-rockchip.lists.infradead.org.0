Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D0C47B5E
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3D3kzBkbH+KdZHtaC2n1Ae+C5iF/Mo2zXl7TNeLK0bs=; b=JiNXX5QgWrp6pI
	vZPJBpe93vgrHuGFhoIfTnSVwFwdtYKLQRzfpYsEFUTyDjYuEs74VC+w5PQO06BDeyPmVR8EKiJNi
	G7yhIBXVan164Pc4gT1LoEkM8lpeibSEbLN4aq33Ux2jkeUM++rqoikkuLle/TZZ0CvgtGndUCK2y
	srzbRRnaxdcboO6Q7Ae4Vi1fbw3nUubBCExqHVn/i5uKf9mJv9GJqJm2cR/OW4pzf7kjht1zfpkWq
	n7B0dAL4+nQsvGwRS4YQyQJxzH1o/zAjNHs0Cskl8FawnDiwxZB4yw1tWHvO/1AygHjTD7vXiasUH
	RLQkBrM7FHyGa5ToN+kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFG-0008IW-At; Mon, 17 Jun 2019 07:40:02 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFB-0008Fm-FQ
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:58 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so5313702pgc.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n0BBFlVj+Y2qXKSPqg3A9zXI4DikqjhrO08dpDnrvdQ=;
 b=XM+HngkcDUSZQqoRKQm+XgbOCTiFZnJDqzhVK84P2uWzOyh9kFOJjLMvQVKto3GYaj
 njhfoNokptMV6NVdOP82pYMGcwO9a4efMjeh5qJPfGIgnJSBUZkbg3RpF6NsktMKs57l
 k9e0uhx7yFqbHBf6UHBDTf4u1EvvdeTulw73c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n0BBFlVj+Y2qXKSPqg3A9zXI4DikqjhrO08dpDnrvdQ=;
 b=dLLTcXIRYzeU06rbV2A80DhWHWcRN/jtYbgVSZsRvEgbS4mVPYBkYB5uwcX11+QdnL
 djK4pXO3qIOS0xxzu2OOe/qQt5f39fIWOg8hA1rfnLRGG2Wzxfl/rJteqkFG10jNgjSs
 7ruLMqWZvlhCM2Ugbs5TrTIDICDtwtHjgWbbaS+Fyl8tZBi1BGp8ZSud+AGme4BU+5VA
 l1/OSWe35a3OqZE9nq1myqBitNAUdjfkQyYbKmKHo05smbmneMPNCOvVkF7zTEMe8OYZ
 LlmmaSqxJXiMLF3B8NKuEvE1fj8Q9NKAd/GMrjfSFfi+DzbOCp1Vanksk/tjGT9I0Dws
 9qYg==
X-Gm-Message-State: APjAAAV9m8sh8IBasGy5JMIsdGq+KxuNczk/4KEAyHeJ+K0lLV4lkoIl
 2AizejRU8XACJPqAcfaMzoJV9g==
X-Google-Smtp-Source: APXvYqwSZVZbwUcYfg2vjEKfOX+G9buKPb5FiBmZROFkM4sxjm3w8B8m4/vTTn/b2d56ku5mIODbJQ==
X-Received: by 2002:a17:90a:2023:: with SMTP id
 n32mr20710281pjc.3.1560757196980; 
 Mon, 17 Jun 2019 00:39:56 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:56 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 65/99] ram: rk3399: Configure PHY_898, PHY_919 for lpddr4
Date: Mon, 17 Jun 2019 13:02:18 +0530
Message-Id: <20190617073252.27810-66-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003957_522295_B467D3C0 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

PHY_898, PHY_919 would require to configure PHY LP4 boot
pll control and ca for lpddr4.

So, configure the same in pctl_cfg for LPDDR4.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 0a5152c710..f04819bacb 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -574,6 +574,11 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	writel(params->phy_regs.denali_phy[911], &denali_phy[911]);
 	writel(params->phy_regs.denali_phy[912], &denali_phy[912]);
 
+	if (IS_ENABLED(CONFIG_RAM_RK3399_LPDDR4)) {
+		writel(params->phy_regs.denali_phy[898], &denali_phy[898]);
+		writel(params->phy_regs.denali_phy[919], &denali_phy[919]);
+	}
+
 	dram->pwrup_srefresh_exit[channel] = readl(&denali_ctl[68]) &
 					     PWRUP_SREFRESH_EXIT;
 	clrbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
