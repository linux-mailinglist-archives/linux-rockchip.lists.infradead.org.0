Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4269469AE2
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:30:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+zLeTENMO/cgAVYFUfrc4AJBCMKsV3Irf5ARbsGhIg=; b=nUHpzZmTpUK/kw
	4WDTe47zb4TtSqQTx3clih3vflNr4yRyLZ1yvLP1nxJI0sh3tXOqdzK8CxDzsIdd+5rB1/q/1zXxF
	zkutAkhwA2aPhl3cED3veCbkug1zkBaCg9hEsleJ7ojGRLJYNkJOp6LA6Cn0sL03wuwGJvQdjD1gu
	xfp15/yQswLTHbuSAUSi1N4RK+A4425i5SxozdtEvdDqt7TAs5HAWU8ci0zCIdinf1dg2fhFuqRMW
	HPYhKcdYMuFk532MZ9zxIcbXBX7cVoFR0/pQead5Bb+4hiWs9wNi4VvMgznP4n7mb3RrJDaqnRxL4
	mKrCFFCnxn7RL0zKgDzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jr-0002gc-7f; Mon, 15 Jul 2019 18:30:15 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5jk-00028X-Cg
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:30:09 +0000
Received: by mail-pl1-x643.google.com with SMTP id m9so8679622pls.8
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gYf4E6KmEJMpnMow4hpC6iE9+FOQ3+Z1CgoYtUkZWOg=;
 b=rvikxEPLkz2503wcJyoyqBLful11DQcvNNfV+wrHDRBrT9rD1W8tc6fItigFPO9vHa
 TPILa7dyl2nRzY11UFZ1dvHL+C2eArzABZRRRcGtLI/9VVAKD/6+Qf8icJhBUXVo3+FP
 PQLBeqFczphwAtjeGjsz2OTV5zNI3YGgCSlc0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gYf4E6KmEJMpnMow4hpC6iE9+FOQ3+Z1CgoYtUkZWOg=;
 b=k/QRNffRrnz1zfhxUgYJLmdQExFwjqkGmaveywH9tH7We49fKEHYr7m0umDZ9DT9dv
 6GWgYZfKekeMt4cU9H7/S0p6NLinGD+NF2IAv3kNyByZMsS6Z7EujkXTemcWbTxU2O+4
 yYIr3xdN0hn6vYxXQg3BiyMAynUl3duFbTBQEb5YLZC6Cpvq0JT/rJ8M3URpUeJaLpNb
 GuqNCWOzYvzoeLeBbtZSAf3sTaMHgTnt+MERsyA7zd9k/qdL+O9XkMfXT9HehZCHWAuo
 zZ4w98Qp9ugmkBIiftNg5Psph5wfqUuOjEwsfJZQabpht8q/pqLTqhwwopP2vwWL2F/s
 jfMA==
X-Gm-Message-State: APjAAAW/wD1FRvtb8H1su3EmEuO49InKC1lpzBZ301K4AYpHKUpEFKhH
 yiei9Yfg9pKqoibH2bC8J3avuw==
X-Google-Smtp-Source: APXvYqw2evLoNu65Hm6lRS0sZD1C2SNhy3Hvj0UnygXE+cFE24hprtFDrWkS0NhU06ecxS0iXqWW5Q==
X-Received: by 2002:a17:902:b608:: with SMTP id
 b8mr30342008pls.303.1563215407898; 
 Mon, 15 Jul 2019 11:30:07 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.30.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:30:07 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 17/18] ram: rk3399: Enable sdram debug functions
Date: Mon, 15 Jul 2019 23:58:55 +0530
Message-Id: <20190715182856.21688-18-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_113008_443813_879BA54F 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This would help to debug the sdram base parameters while
debugging existing chip or while supporting new sdram type.

It require explicit enablement of CONFIG_RAM_ROCKCHIP_DEBUG
for showing the debug prints.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index b83955f94e..9a60c24135 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1251,6 +1251,8 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *params)
 		}
 	}
 
+	sdram_print_stride(stride);
+
 	return stride;
 }
 
@@ -1357,11 +1359,14 @@ static int sdram_init(struct dram_info *dram,
 		debug("Channel ");
 		debug(channel ? "1: " : "0: ");
 
+		sdram_print_ddr_info(cap_info, &params->base);
+
 		set_ddrconfig(chan, params, channel, cap_info->ddrconfig);
 	}
 
 	if (params->base.num_channels == 0) {
 		printf("%s: ", __func__);
+		sdram_print_dram_type(params->base.dramtype);
 		printf(" - %dMHz failed!\n", params->base.ddr_freq);
 		return -EINVAL;
 	}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
