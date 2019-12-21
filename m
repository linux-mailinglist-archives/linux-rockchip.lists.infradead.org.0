Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFF01287FB
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 08:55:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VE658xGGSBWVYnXWwP6DhJrgjnC6QCl3sxqdFlBPT6c=; b=gGYpM3eHOkq6o9
	CkOCIo2BsYXY4s6f/uuvjohhQWnhruiuhv81PMnGcDy9aGwqUO1Y99xf0ELrjmQAbLQtqKB/viOVP
	MDXJh6akJKrc+R7+R7NWRy37Dri9swsYLa+kEa+TiH46PQzGQQP6U3u0rQWjYXjDtxqXN22/rO7Mm
	KSO7ECmA831/OQfakSeW9vg+hd89u/5GWvd8Oi87rM//iKbL/jBUQ8EOSEYO8YjPV5qSAreOrY7Zh
	9PbSgKPK7rBWvUNhMgdkz4h/OmUCACIWEN1f/TBaczfsZduo4GvSfv8qf+lEhGVivRd2qgX13x1iE
	ABtPJI4e0S0xQVa0AxWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZbG-0005HF-Id; Sat, 21 Dec 2019 07:54:58 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZbD-0005GV-FX
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 07:54:57 +0000
Received: by mail-pj1-x1041.google.com with SMTP id n96so5150488pjc.3
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 23:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cYR9K4kgo/za5EQis/Lt7xEEmwhFpfJkJx6G1IMWPMk=;
 b=gNXy/wa3PaDpzzGlYJBbxjFdrTAPa16/r8BspzGyhjDj9Sq6WgQ+WAJVC4C3QhjqIM
 PfsHFZqc7U67m4UnXPk8tpmqGZ5yDoZlUwg9dK68IkgbSJyjMCFwsvifAGm69l/81ypb
 M2idMyihoRyRevdvsVNBql0mTWV+ftMNkdGc4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cYR9K4kgo/za5EQis/Lt7xEEmwhFpfJkJx6G1IMWPMk=;
 b=HE62V0J8i5JK8GDDakSEd55bGjo0irQ969mll0/OozgTbOsfk3mxnJa3bTw9lP+tOT
 9dlgGCJZkVVLky6tzHqkKHiHUy+xwGGJeQN3boHgquiKjHUYDHxl35KQ6I/3PvcVUCPZ
 K+ZoeNFKPFRbnBABOa2sgmQW4RcO5W2/F8JGUZWzdoHus7MoCOTKX71WcE9virHHnSJf
 dBuxzzGOY9nGCElVQZTnYj45xEm7zTSg+WNBXxTicC1oZB1PgUGfeBzbKoXT858SCWWn
 TELxrft0+5PoF4ByQeGrWy+IObnTQuE4OImOkQGAMU36lhQQcgmUK7iKC5eUjoSPooyb
 KYHQ==
X-Gm-Message-State: APjAAAVh5ltmG6ZjPWuHbcuu5ZLfphXXdA6TGt85aULlYq5QJZneAmj5
 2oPcXoG9RKV2LLmorZBfBDJUhQ==
X-Google-Smtp-Source: APXvYqzAI0CGTs57MZ9EmoGRzB6dxFgugcbBmjwxphKbNAJrYLfsuhH/kvP2sJNvFdKANfD21bJiZg==
X-Received: by 2002:a17:902:6544:: with SMTP id
 d4mr20136327pln.278.1576914894562; 
 Fri, 20 Dec 2019 23:54:54 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.177])
 by smtp.gmail.com with ESMTPSA id i9sm15551018pfk.24.2019.12.20.23.54.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 23:54:54 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 01/11] spi: rk: Limit transfers to (64K - 1) bytes
Date: Sat, 21 Dec 2019 13:24:30 +0530
Message-Id: <20191221075440.6944-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191221075440.6944-1-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_235455_997599_80A34917 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The Rockchip SPI controller's length register only supports 16-bits,
yielding a maximum length of 64KiB (the CTRLR1 register holds "length -
1"). Trying to transfer more than that (e.g., with a large SPI flash
read) will cause the driver to hang.

Now, it seems that while theoretically we should be able to program
CTRLR1 with 0xffff, and get a 64KiB transfer, but that also seems to
cause the core to choke, so stick with a maximum of 64K - 1 bytes --
i.e., 0xffff.

Note, that the size is further divided into 'minus 1' while writing
into CTRLR1.

This change fixed two different read issues,

1. sf read failure when with > 0x10000

2. Boot from SPI flash failed during spi_flash_read call in
   common/spl/spl_spi.c

Observed and Tested in
- Rockpro64 with Gigadevice flash
- ROC-RK3399-PC with Winbond flash

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/spi/rk_spi.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/rk_spi.c b/drivers/spi/rk_spi.c
index c04535ac44..95eeb8307a 100644
--- a/drivers/spi/rk_spi.c
+++ b/drivers/spi/rk_spi.c
@@ -27,6 +27,12 @@
 /* Change to 1 to output registers at the start of each transaction */
 #define DEBUG_RK_SPI	0
 
+/*
+ * ctrlr1 is 16-bits, so we should support lengths of 0xffff + 1. However,
+ * the controller seems to hang when given 0x10000, so stick with this for now.
+ */
+#define ROCKCHIP_SPI_MAX_TRANLEN		0xffff
+
 struct rockchip_spi_params {
 	/* RXFIFO overruns and TXFIFO underruns stop the master clock */
 	bool master_manages_fifo;
@@ -367,7 +373,7 @@ static inline int rockchip_spi_16bit_reader(struct udevice *dev,
 	 * represented in CTRLR1.
 	 */
 	if (data && data->master_manages_fifo)
-		max_chunk_size = 0x10000;
+		max_chunk_size = ROCKCHIP_SPI_MAX_TRANLEN;
 
 	// rockchip_spi_configure(dev, mode, size)
 	rkspi_enable_chip(regs, false);
@@ -451,7 +457,7 @@ static int rockchip_spi_xfer(struct udevice *dev, unsigned int bitlen,
 
 	/* This is the original 8bit reader/writer code */
 	while (len > 0) {
-		int todo = min(len, 0x10000);
+		int todo = min(len, ROCKCHIP_SPI_MAX_TRANLEN);
 
 		rkspi_enable_chip(regs, false);
 		writel(todo - 1, &regs->ctrlr1);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
