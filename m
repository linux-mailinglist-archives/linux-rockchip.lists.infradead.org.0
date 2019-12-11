Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB00111AC07
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Dec 2019 14:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKiIFIjXgEe/blLJInwgGjZQc6om0z4nAXqhZEKI/TY=; b=QLAEKdKtVk8NKj
	kmR2JRV/U35eflnKGuX5nJlG63hOeGCY7thNxk+ZJyniuvrw1M5370r1Zej5L/3tpuxPI1x5cqdod
	WIkPzVw0l/8gqOHZG3XthVm6lo9w2Zo5tIxT3KpjOQlWyryho+hW6kOYtYKAC13SUheg6gMQkr5OT
	cKBdsGumngXovQS5K+0Wl9hJWS0af1hWBR8YpKW8yx0MuiDXaKUhR4Lj0EvthvHWaXLpfiRUU2gHJ
	cnvilAoakoqEEOf8Vbv+SEVzmb7M0JlvCfpj1QgcILO3Ln2/CYKDbViaAgw5hWS0p8eYbasPx/dnP
	/ljuXPrmWP88fYh5r4Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if20n-0007aE-5L; Wed, 11 Dec 2019 13:26:41 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if20j-0007Y1-VR
 for linux-rockchip@lists.infradead.org; Wed, 11 Dec 2019 13:26:39 +0000
Received: by mail-pf1-x442.google.com with SMTP id x185so1824262pfc.5
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Dec 2019 05:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ObG5oFXVgbJieCK61dlo5Mt5bEHKF5QSUTpfYMRFq74=;
 b=I+EFHP+dGfyQ+yElnzPem3XNKdvDDJ1k1RKkuGDLp4ikG2a8EFZYPE0FjtJx/4YLcP
 uQhztAX+uI9YczdqteV7KNygwOPTWxgycycdM+S/i+ucWDt6e19EWe9iokfASSuyBJuS
 aSYpCBADsuue7eZuUx+8P14N+aGQeCMQ2FTBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ObG5oFXVgbJieCK61dlo5Mt5bEHKF5QSUTpfYMRFq74=;
 b=Z+5pBolsFWECajHT764tUCrI32bc3PpzXaN+gVIwy3usex+T84ESJYGfZFSlSZx5m2
 GLFeM4n3d8ZR6smD61AKyvVSuHq8JNt553iQSbvLoel5eeE5UvxjLi715qW5Ky12I35b
 imm9iGjNrto4OaHMIdc7jRRwncvo6w6p0kzWVN58ADSqzfvHZjmfPs/4yVgcHRRpkQ9m
 dv8Vmb/BzTDB3GWFyFoz6vjZDwTk6wGnP3kA01DaVqBSaWctVIXc0K5Bdw5hjYVvwqmd
 XkoKWGb/dMbAlKKRzr5ZkAt+qkMJFPR4PnHUSnzzAbCZmZqBWdS/zqxNpDhq4A95dUsL
 75PA==
X-Gm-Message-State: APjAAAWnjuhvkjlhr9wvnDJl4C7SQeICJ0XUQsZrkpH2UV9FrwIXhWmx
 c4R8glIbG4ZIcQPnhB2vYO8pfg==
X-Google-Smtp-Source: APXvYqwjCl5uFhWzaGrTZeEj6ejcJHd2Qhh7hVvyeS9g5X9qNJXzCKqPvUApRRlKL9jTCSwg6f+x7g==
X-Received: by 2002:aa7:9808:: with SMTP id e8mr3822249pfl.32.1576070797214;
 Wed, 11 Dec 2019 05:26:37 -0800 (PST)
Received: from localhost.localdomain ([49.206.200.202])
 by smtp.gmail.com with ESMTPSA id e23sm2716145pjt.23.2019.12.11.05.26.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 05:26:36 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 2/2] spi: rk_spi: Fix overflow max chunk size
Date: Wed, 11 Dec 2019 18:56:23 +0530
Message-Id: <20191211132623.430-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191211132623.430-1-jagan@amarulasolutions.com>
References: <20191211132623.430-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_052638_024314_83DBCA14 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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

The max chunk size (in a single transaction) for the Rockchip
SPI controller is 64Kframes (i.e. 0x10000 frames) of 8bit or 16bit
frames and is encoded as (num_frames - 1) in CTRLR1.

So the 0x10000 is offset value for 64K but the actual size value would
be 'minus 1' from 0x10000.

With the existing code of 0x10000 max chunk size leads to read
failure when we try to read the flash with > 0x10000 size like,

1. sf read failure when with > 0x10000

2. Boot from SPI flash failed during spi_flash_read call in
   common/spl/spl_spi.c

Observed and Tested in
- Rockpro64 with Gigadevice flash
- ROC-RK3399-PC with Winbond flash

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/spi/rk_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/rk_spi.c b/drivers/spi/rk_spi.c
index d9a310ce80..6059f2415a 100644
--- a/drivers/spi/rk_spi.c
+++ b/drivers/spi/rk_spi.c
@@ -367,7 +367,7 @@ static inline int rockchip_spi_16bit_reader(struct udevice *dev,
 	 * represented in CTRLR1.
 	 */
 	if (data && data->master_manages_fifo)
-		max_chunk_size = 0x10000;
+		max_chunk_size = 0xffff;
 
 	// rockchip_spi_configure(dev, mode, size)
 	rkspi_enable_chip(regs, false);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
