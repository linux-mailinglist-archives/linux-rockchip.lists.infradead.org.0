Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0B547B28
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vPDz5YSp3Gnp3WZqjdLRDPnImDW8Ioet2g2D8oswnQ=; b=aJkfckEtYk5i/N
	aTsy7E35I6Al9AHqX4e26I6YRq3ej1qxElbW1kGWGHRRSfm1Q5DMP6HX0OaPNaI3uC+LPtgRqgwdt
	HnJ4YeMalvKuYaHfgol3e+xGGiuJU4Wcoz2+v3TEWD0fI9L2I/uIPdd8MW/3UcPQ3yQDDBnaHUl3g
	PbCc7ign+BG38nRzRn3kWg1LqxqraJ/DgqkPYNIFQn3R+G+7UHy9m8a5JrBwkUHIXr9R5Hd+3LACx
	rLui7oFbPm2HMf4TNTFzL7CTf7zBEiLVkNpDlRexZIjoYMVV74VZP6mEvw9HN3CK0u5UXg0A9/ugO
	JfKbjimFFqOXxuXz0Gdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCp-0005s6-WC; Mon, 17 Jun 2019 07:37:32 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCf-0005kM-83
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so5183807pff.9
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FoRLpV6GBX004QpLGL8zleTRYW6WWG9bME6yHnDtt9E=;
 b=AiVDC4wxRZEeCHVYX+B0BnfHBMuR8AFZCGOHgv/F3n0YH0RbggnTIlHzrPd86xKOrb
 SER4wxtn99Wv6abB+h984DIDoMphLlXbjsK2ZCIZupMosf7UjCkNhooE7shgSQDXajWF
 qzB1KMREQsEEy2nlT0a/hl91ZGGLxWyGyfARs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FoRLpV6GBX004QpLGL8zleTRYW6WWG9bME6yHnDtt9E=;
 b=R9Gu/pE4byreBAx+guwS2LvfnJDm/Kui3JMmN0aQYLCPNpgQT2Y/pixHmbZ9csw2bm
 TPe9SrBpQ3X5ILX3wduXbp0b8wzIPFWzHW/KteVj17rTyuWIOkXmx+ax7q+UjZbJ0pD3
 4Nhz93qXT3iT6QMnVdhBwE62ujE52OVBjsiBp+7TqNmCPFPIbcfNLY3/Mk+rNwcQ9r64
 UisZE4uANSP0LTw68U9OycD3JsxLIYTusR/vkJ8knnsr9QK4izhM599eCxdVyBgjprtG
 26l7wRDH93PHhBuCR6WgcWWvC6WLN9gC0+zPA7AmTbQeS4eKGZEarkBxRqUtGgxFHWOz
 mxcQ==
X-Gm-Message-State: APjAAAWaCNO970w6WiaclOaYrH77k1cQaGs2aIDM5cLXf2V8ypOcxnwE
 XnWGYbRIsiRH7yLkOPKorkhB6A==
X-Google-Smtp-Source: APXvYqz/y5wfBfYBN5B3ABBstEDTIq3N/fQOBOHbRZL/QfC5HuRVhNu2T+JoPBKLmeTAboDjorLAYg==
X-Received: by 2002:aa7:90ce:: with SMTP id
 k14mr113064367pfk.239.1560757040746; 
 Mon, 17 Jun 2019 00:37:20 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:20 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 18/99] ram: rk3399: Add dbw enc macro
Date: Mon, 17 Jun 2019 13:01:31 +0530
Message-Id: <20190617073252.27810-19-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003721_301580_5EDF51B4 
X-CRM114-Status: GOOD (  10.59  )
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

Add simplified and meaningful macro for dbw.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 78cca88121..72cc9c94cc 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -58,6 +58,7 @@
 #define SYS_REG_BW_MASK			3
 #define SYS_REG_DBW_SHIFT(ch)		((ch) * 16)
 #define SYS_REG_DBW_MASK		3
+#define SYS_REG_ENC_DBW(n, ch)		((2 >> (n)) << SYS_REG_DBW_SHIFT(ch))
 
 /* Get sdram size decode from reg */
 size_t rockchip_sdram_size(phys_addr_t reg);
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 77e7f92b5f..1a3285892a 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1030,7 +1030,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= (info->cs1_row - 13) <<
 			    SYS_REG_CS1_ROW_SHIFT(channel);
 		sys_reg |= (2 >> info->bw) << SYS_REG_BW_SHIFT(channel);
-		sys_reg |= (2 >> info->dbw) << SYS_REG_DBW_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_DBW(info->dbw, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
