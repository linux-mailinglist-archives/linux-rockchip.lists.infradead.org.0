Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F623CF86
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFVJw/9jUI5hQAsl4dGe20kTmCwKdJVO+3gpuulxhd8=; b=PEsc524S/S7f3z
	oFKhwycapx8QItbW3OLyfleFPVs7vN6YpnMNducAi/PodQu2v6fraGM1KGesENh5RKFfwGpHxIJQR
	Jtlg6/k8ZzOzirMrFzFcvXZVw7PShC1JH60P4OhGrmUzsBxDGu7g3SXpNPrsHJo4lvtpiRlV6E1Y9
	8SYqWufuqRjUU0m3Jl5+9iiqx2U3i6j4Vcv9zg0J4bdMnR14LUwOZzCJduByBr+ojWyFt0J8n103N
	CCd+8Yge4B2O9ioYDxo0IyY3E6oWbrshYl9v6hMqSitSkr4x/pwXD9vTY/arO4PTf8BwFEP4u1Cyq
	liElY5vzQC4de7CRlB/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9A-0004ZV-5R; Tue, 11 Jun 2019 14:53:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai95-0004X8-Jd
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:09 +0000
Received: by mail-pg1-x544.google.com with SMTP id 20so7120160pgr.4
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=59prPU8wNA7H+Ep8x38GhAOTW8bSdYKxRxuLXaLFotU=;
 b=a/eJ/2kSk/xe1+QSVrZdNtqW4rxs9LeuuAiM6wQtBrJxE3Jso/OWvb3iCXGey4MaJH
 E15d1dCCZT9HvXAmMpPzh4EIa1hrmMVkQupTJA/um4Peq4R+Plp3TYOH/aL/RqxzOXgp
 QQYHme84S3xCdw3hj3CIO8pmtqO73P3q14u7E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=59prPU8wNA7H+Ep8x38GhAOTW8bSdYKxRxuLXaLFotU=;
 b=SfP1jwfEySqWpR7Vik0TE1QZe06fUI8SCoESfI99sRP9uHvO9OzHnNkjJJlrQSRdAk
 gcIn2aMmjlwwsEX2Y3BRyBlSI6nFMxzMh1Fs9iox5zh2A0IZLzajQfa/Ze2vK5TBE9/X
 5Xir3beIgUBMBs7v7pMnBH6GdRvJapdjer0/aTFgZnk030EE73E2+gdagky3AAWBYgOI
 R7+NeGRE8P9ILIFhDQraho1MaedoutXauCa+fZlY3reBmll/jzkotPKd8a/cTL2vXuqn
 E9sZMEKlo/9m/j1YfqFilJkdYWXXLZE8y4rhGhVQnh5DoKVX/hpgnDzOv55O8RFLDVM/
 g+Dw==
X-Gm-Message-State: APjAAAUhnXyCBLrrUdIwxesyT8mF4T0Jp4zfpexqnDdoDpME6vGQXene
 cujULcqVM11FKaloDjd5NASGxQ==
X-Google-Smtp-Source: APXvYqxm+y2649v/6tJqmGTo1PDjGDyUmVhyFJtGcR625M5VLGncRelsj/9zeKbnvW0ONnn2QJP01g==
X-Received: by 2002:a63:9548:: with SMTP id t8mr20561291pgn.256.1560264786926; 
 Tue, 11 Jun 2019 07:53:06 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:06 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 19/92] ram: rk3399: Add cs1_rw macro
Date: Tue, 11 Jun 2019 20:20:22 +0530
Message-Id: <20190611145135.21399-20-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075307_839238_97CAD43F 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Add simplified and meaningful macro for cs1_rw.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 5c94dba39e..a4b1742438 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -55,6 +55,8 @@
 					SYS_REG_CS0_ROW_SHIFT(ch))
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
+#define SYS_REG_ENC_CS1_ROW(n, ch)	(((n) - 13) << \
+					SYS_REG_CS1_ROW_SHIFT(ch))
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
 #define SYS_REG_BW_MASK			3
 #define SYS_REG_DBW_SHIFT(ch)		((ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e3555504b0..f69194f29b 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1027,8 +1027,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_COL(info->col, channel);
 		sys_reg |= SYS_REG_ENC_BK(info->bk, channel);
 		sys_reg |= SYS_REG_ENC_CS0_ROW(info->cs0_row, channel);
-		sys_reg |= (info->cs1_row - 13) <<
-			    SYS_REG_CS1_ROW_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_CS1_ROW(info->cs1_row, channel);
 		sys_reg |= (2 >> info->bw) << SYS_REG_BW_SHIFT(channel);
 		sys_reg |= SYS_REG_ENC_DBW(info->dbw, channel);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
