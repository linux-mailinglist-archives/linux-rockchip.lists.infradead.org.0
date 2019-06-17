Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C9047B16
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBUWeQPlk4saF/xtxP83HG8n7KhIXzYkW8ACWxtg6wA=; b=mgjlHrjZ7Fz8gX
	2aRG2DyzBlpKStqqpkInRHDqlKeFA63o2qcFNGWNThDGvUZFwk/a/EWqgmmiaRWxuOgaSlarWi5Rc
	YqhRuxYd4zZyP9BoCvVCVWV7ZslAGk56OCJilSrOyKhC13GZMwo1qQGNLvLE3vT+pLbsHnc0DzxD9
	PwJ7te0zGFmq2ntj6j7GOrMYOJI6kuF+cEPVR9ClBiiBqAf1jzVeN0AqQFAw52yUL6HfbTaHsEhSF
	2R24xlRcH1zUcEBRYSXmmeE2E7nDnDgnfp5qEu2AsQZY/PA8KQu+0SCq9T9iy/+Ox4enImeUnd//Z
	d6waCXVYAJsQWQVXElfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCL-0005U2-Rp; Mon, 17 Jun 2019 07:37:01 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCI-0005RD-Ag
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:36:59 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so5294488pgp.11
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jFjZk68JD5eV1E2NZretcWQElvukX2N3SxgJAGBUBhA=;
 b=GLS3R3lzMF3Qdg4wcAkDi4F8L8/xqRv/759g4PBpVhCH4nUfP+ilFsMKfcKYD7YZgG
 a2xjado4MP5+JVlmnWb9AxvP1ZnH1OvoHhqnn98XEdAV3+lBOOy+v3nbhwlbH3XzCfkC
 RmhbrUSH6oJoVUuIzG2QzNi1gnNjexY1Z7POQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jFjZk68JD5eV1E2NZretcWQElvukX2N3SxgJAGBUBhA=;
 b=udr7HZIqsYKINnRD7xjC1EJS0m3OLuCMZfdNF+PtKi6qjUvB1kPLQEjpTjtCGPwVBR
 +tUt2Nk1+4U1nXrvHDGEvPj97LbrA3r3DcuIYhxYzGZ82LZfM/GtK22oehvXYcBPtIEI
 6xa448FbL4CE8KHugpSfxhJP//c/4YulLMnM/5y/aSZlEZdDOIvQupLAWhauWALcyuHh
 hY8PNviLupWMI3g8TeSE7bSkxDYdakLKdcTfRygPub8L46ibVjA9jETgxqIaKTjpY+K1
 pBK/TJ+1XI+Wx155nAf7CmG9baIETZQsjJ0PDQQC2zhXTQ1XYiLLmGhRVNFHeBJ4vTLz
 3ujw==
X-Gm-Message-State: APjAAAW+NvbkGp/l+WySs0uQ0D/8UdC2wfsKvNNoYzWHnbQE3pSVIwRh
 id3dNJzdx90/K5DFAYsGx0bG9g==
X-Google-Smtp-Source: APXvYqzAZWgShhJzjayThqgbn8JvesZRitsiE1nVzvv5JM7S4tpj2f5+naZhDs1zEpstctrLBcehuA==
X-Received: by 2002:a63:26c7:: with SMTP id
 m190mr48780379pgm.141.1560757017365; 
 Mon, 17 Jun 2019 00:36:57 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.36.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:36:56 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 11/99] ram: rk3399: Add ddrtype enc macro
Date: Mon, 17 Jun 2019 13:01:24 +0530
Message-Id: <20190617073252.27810-12-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003658_370450_35310A26 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Add simplified and meaningful macro for ddrtype macro.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 671c318d50..ce1b62982c 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -34,6 +34,7 @@
 #define SYS_REG_ROW_3_4_SHIFT(ch)	(30 + (ch))
 #define SYS_REG_ROW_3_4_MASK		1
 #define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
+#define SYS_REG_ENC_DDRTYPE(n)		((n) << SYS_REG_DDRTYPE_SHIFT)
 #define SYS_REG_RANK_SHIFT(ch)		(11 + (ch) * 16)
 #define SYS_REG_RANK_MASK		1
 #define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 32fc7771b3..28178f4ee9 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1007,7 +1007,7 @@ static void dram_all_config(struct dram_info *dram,
 	u32 sys_reg = 0;
 	unsigned int channel, idx;
 
-	sys_reg |= params->base.dramtype << SYS_REG_DDRTYPE_SHIFT;
+	sys_reg |= SYS_REG_ENC_DDRTYPE(params->base.dramtype);
 	sys_reg |= (params->base.num_channels - 1) << SYS_REG_NUM_CH_SHIFT;
 
 	for (channel = 0, idx = 0;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
