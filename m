Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A6A11AC05
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Dec 2019 14:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bB/rrTNuN1Erh7fNWqlAUv+ev1XpLdLTqz9CosyKBpY=; b=fsktAnSAQm4mgP
	VzhfVJnhvl8UJpXcJZR89QJZpVZtEsCrZH8GqrC14tsLRSEWu2Ad0GRbMeBZTJk/+QfcdUmWiHGcA
	glox/eUNIQYz1dge4/n+NKzINwtGQvMNAIjID/vru9Tfa78fHanqD1bsqO5YEUv67JCnQ6pemKlHG
	z3/5F01plAw2k0fVRruvqgTcz5c/+mAIA9NOYfPl2CUeW771ZQy8sEMlNRBct/lSSwQ15p08QQuYu
	ZPjuOvy87G3oUhJlehtZF+kF1U49yqqnYUr4cR63tDzPkyhtWPVhDwiLtJiiystN8yzy8lY/NM90I
	V7dxJJF27Tf/CCtChfUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if20l-0007Yf-Ge; Wed, 11 Dec 2019 13:26:39 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if20h-0007XF-CX
 for linux-rockchip@lists.infradead.org; Wed, 11 Dec 2019 13:26:36 +0000
Received: by mail-pj1-x1041.google.com with SMTP id g4so8937670pjs.10
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Dec 2019 05:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gVIB5EpzB/rDAwAohidNPXnxHhhwcS3JjiItD99CNjU=;
 b=q1bdb59FCIwPErWWb7FBJGtn2X4XtmXfQE4V6wgCbKwF8AqJ3JUOHAVA5m8wwRzDiu
 I1e8fz1wWWBOgV4NliADznmDdTTKGwE93kdOUdHShkLuol32jwH+btsChBGWDbuKhdiZ
 1aHAzgplq988tOfyR4oQpYsDJsMo6nnP9KDuw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gVIB5EpzB/rDAwAohidNPXnxHhhwcS3JjiItD99CNjU=;
 b=iECl4ZbbEFrEw4DO/PrXJPSHMySbWjR9f1Ze79N+66x54mLTm5BZp+w9FpelFXfNqr
 Iy311f0rEPQqlPkCYSTjxDgknIdGRf7AM4s1RaT+v1tkaHYuxlbZo6PMprf2vSbOQVy+
 XqvmhPzCihxdTle2dvQyZOWya4B9AgE37Vw2K5FLUGUhwCPf9fRTJvuwhBwQ0EEZDkJE
 n8p/KytSgK2dQkwVkW60tbTvNscR/vk9PyL4s7H4s1GuhkWXyVWpwqqOEcmoE+g9Y2a/
 Qxabk4d3btZux+x5W5Vtpx3LMgLzhy9jZe4TmsAem2vDRZQ7E6LVE8cj5HUtkwXPY9Lu
 /xMg==
X-Gm-Message-State: APjAAAU66CdFR6SIBDH9Vctke/WvrqTA7OOYBzUY8hVObHY4qMSFjlxY
 vjQWPGyfJ6eAwxze/MKCPWo/GQ==
X-Google-Smtp-Source: APXvYqxEuSqifCyrjnHoLSgW0ud/i0zpjrs9OssyjTBkY1JzjCxNqA290D9MmhFF4RVI+rhVOUmTvQ==
X-Received: by 2002:a17:90a:d682:: with SMTP id
 x2mr3601839pju.44.1576070794580; 
 Wed, 11 Dec 2019 05:26:34 -0800 (PST)
Received: from localhost.localdomain ([49.206.200.202])
 by smtp.gmail.com with ESMTPSA id e23sm2716145pjt.23.2019.12.11.05.26.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 05:26:34 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 1/2] Revert "rockchip: spi: fix off-by-one in chunk size
 computation"
Date: Wed, 11 Dec 2019 18:56:22 +0530
Message-Id: <20191211132623.430-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191211132623.430-1-jagan@amarulasolutions.com>
References: <20191211132623.430-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_052635_427059_6CBF3179 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The maximum transfer length (in a single transaction) for the Rockchip
SPI controller is 64Kframes (i.e. 0x10000 frames) of 8bit or 16bit
frames and is encoded as (num_frames - 1) in CTRLR1.

So the 0x10000 is offset value for 64K but the actual size value would
be 'minus 1' from 0x10000.

With the existing code of 0x10000 transfer length leads to read
failure when we try to read the flash with > 0x10000 size like,

1. sf read failure when with > 0x10000

2. Boot from SPI flash failed during spi_flash_read call in
   common/spl/spl_spi.c

Observed and Tested in
- Rockpro64 with Gigadevice flash
- ROC-RK3399-PC with Winbond flash

This reverts commit e647decdd93c7408741329432f26758fbec04c7a.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/spi/rk_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/rk_spi.c b/drivers/spi/rk_spi.c
index c04535ac44..d9a310ce80 100644
--- a/drivers/spi/rk_spi.c
+++ b/drivers/spi/rk_spi.c
@@ -451,7 +451,7 @@ static int rockchip_spi_xfer(struct udevice *dev, unsigned int bitlen,
 
 	/* This is the original 8bit reader/writer code */
 	while (len > 0) {
-		int todo = min(len, 0x10000);
+		int todo = min(len, 0xffff);
 
 		rkspi_enable_chip(regs, false);
 		writel(todo - 1, &regs->ctrlr1);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
