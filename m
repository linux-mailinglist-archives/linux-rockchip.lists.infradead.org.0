Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2960A47B35
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jb0mXaMENjQY9w1mSXTselYqp8j4ej8sYkZycTLzm2E=; b=eJ1a6xVxBF5vTs
	0A3VSEScbdHHfMex4VbPlnMlGcowV1Fh7YUCwuuLwr2WNA6jX/UEVMoKjszfqxOoQh93mA+AJGy0a
	IGCBrKbyMGRYRjTdXNgAMzQkr4BLmPitgXR/fz+Q/ZzdNBBFvzSb3LocfbEU1wgomzqrTeGp1gxQG
	0h+zm76JqdIEcdRsmiFqCa+t/pROohwLnFNS8UYFeD8k92TeLREJzrUMkivrFwFTrn7TpAvjgMTWo
	gB8RkR2NO2siszplwnHS4FmCsvz4JrEsN/lk8nUkjr6fTTYp3cJvI+SElXpEL5kXtJoEEVyHwTnvR
	GnOtiJLcieDXh13iob1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDQ-0006QW-NK; Mon, 17 Jun 2019 07:38:08 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDG-0006J8-Js
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:00 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay6so1502069plb.9
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aKfA0ut8I1Le1vPQe5OQteNOxVFg016J7FpHlk5ewlI=;
 b=Lmmb1TIQajhvm6SSpeUlAvxXQgD1/dA46oeC/y6VWHSihshdUGtVnXxv3rPBQInlij
 ubCZ67w0yh5+Gbvwrck5NZT9fVnpYjaQP/pAHoGbZ4edfhiDLHgTzlAUlda879ohOF94
 G2lF6FblmBy0mZIj/TKF1CUmvDqgQXK5CKRg8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aKfA0ut8I1Le1vPQe5OQteNOxVFg016J7FpHlk5ewlI=;
 b=ZWRW0fq/81sz9dCUCEBgIDolSUNH2K2d3OsxVPsVmuxXGMyQsGPOOp8m4yyYQ3GYG+
 Z6QIeckVi7KBLjlukGzIvbyjyqyn3CjGksWtmUpSN/wXJVc0HsAiPbPCOoBYw7ziH+Cr
 8KR/4AJNhdWY+l7sN6Yaxe49txaWk1kWS9rACjjoWdFgEH9XW0ORk6TdV4SSynFsLni0
 oyvFOuS1cMBNv8PZk/HoiN2Rqkd8+SMlVvay+BHXUY6H5nisSqMfUIu2IDfTyUOFzb6O
 pv0Hd+LfL43ZVL26jVoz3PyyAdwy1OezZmmTsmBpp6I9RgXviNicPd6WQow4zfSkD0vz
 qBPg==
X-Gm-Message-State: APjAAAXEnMkwqcrLfFOPbYz2t5sVBWRCZT4QNDFmfgHyRwERp3+kNuj9
 b0G3g9kA08XKvc9Nx9ztOVAsPw==
X-Google-Smtp-Source: APXvYqyLjl7A1a1xeAACoVvE9bmyQ6e3V8AyjHDJutP2BmjZLEJXhtRLLuvpEcnoqm5eYthhGB/lQw==
X-Received: by 2002:a17:902:6ac6:: with SMTP id
 i6mr92874147plt.233.1560757078092; 
 Mon, 17 Jun 2019 00:37:58 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 29/99] ram: rk3399: Handle pctl_cfg return type
Date: Mon, 17 Jun 2019 13:01:42 +0530
Message-Id: <20190617073252.27810-30-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003758_821907_D10B51E5 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Add proper return type handling of pctl_cfg with
meaningful print statement.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index dc9229ddf3..d408459daf 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1119,6 +1119,7 @@ static int sdram_init(struct dram_info *dram,
 	unsigned char dramtype = params->base.dramtype;
 	unsigned int ddr_freq = params->base.ddr_freq;
 	int channel;
+	int ret;
 
 	debug("Starting SDRAM initialization...\n");
 
@@ -1138,9 +1139,10 @@ static int sdram_init(struct dram_info *dram,
 		if (channel >= params->base.num_channels)
 			continue;
 
-		if (pctl_cfg(chan, channel, params) != 0) {
-			printf("pctl_cfg fail, reset\n");
-			return -EIO;
+		ret = pctl_cfg(chan, channel, params);
+		if (ret < 0) {
+			printf("%s: pctl config failed\n", __func__);
+			return ret;
 		}
 
 		/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
