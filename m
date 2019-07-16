Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D62A76A7F4
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFEtWPCMHHJ0ncix6S12n6/bScyYFQj3C3rA1QX2Lng=; b=b/iiboOevjerCb
	MKsz9R85AR40XN3PAaayOdaHJ3fJJ/WdWmYAOaoHpXcz1ewpi82nckzrbySBz0Q6t6jD/swgX79+d
	iYasS99MC+EoK5bMMOOjWXtHO+R8otInrH/wBBqcjdfG20xGEYeebxplKtquJfu+y4rreCqVVWTC1
	Xs/uWLPRJaF3dUHGbo483Pw+FH23qVMJkGRmg/huIdvUpfP0LJX41FY03qwdahvGhaNg6Gr5HqdKU
	wWOQOhIuIJGDEPYAc10iCZopxpmPFUzV8z2aEENuRHSAAnRuJoELzVKHq0LBLEXvmJnjLDYiYgYCp
	PufK3jSLQEZO9N8PhE2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8r-0007C2-9d; Tue, 16 Jul 2019 12:01:09 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6c-0004Ce-9c
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:52 +0000
Received: by mail-pl1-x643.google.com with SMTP id m9so9955237pls.8
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JD+bh41d7NawJXyb/7y4jJU2UarR0jnLwzqs/x1xT2o=;
 b=Hr02iutHqFFRokEcKG+pUTOq6Tczl5UQccsN1THq7TN4nRKDrfNnWav4ERsfByLtYD
 fHXOHcE56tBMWba06SeNXe6qnaCGSWMlq6Evwjv4svaqhKypB83XwCixPZRpA2pYYFOH
 iC9f/tHu10mAKKq9MompbpcW5WXGBNNWYihVs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JD+bh41d7NawJXyb/7y4jJU2UarR0jnLwzqs/x1xT2o=;
 b=i0aJJ1hyneZPeNkvZ40Clc3hKupE1TdAJWmvQVevZOc1Ea0aBBPdMVoGl8FytX7URO
 7ePUOxlm/eaoJvAbi0QqSh4uK1mflo9K1E0LY0v9qL0YJgNgxr1Vx7PJ1sPoXMgHfjBT
 B5jxtI49c3ndJP8bAtwwQ+sLCief7I6Kd8rGGJ6LQ+mnvJa9RmGm67AgU6sLjfFgLisd
 QD43Zhw7lOPmmZhS58gRwQYO9fp/1RA5Ra9oMEtEFkU9FrR2C9Xjz5xkidseqfXnP4ul
 Ftw+YKjbmueYxwCdtREMTAhGBDGd+wbAtHG4W8CxzTMIc3dUdaAvwAFC1u5auYU/cNSW
 ZOwA==
X-Gm-Message-State: APjAAAUwLw5gigXALX3whtDP+03aD0IP07qOQ47JfIjcRuQ8okfGJSru
 WnyF6X4+KiQwTbV8AjCKL+/XLg==
X-Google-Smtp-Source: APXvYqzedA2eNVXHRpzR7H81JSCdt4B3M97GcOU5ZOYlo/k4+ySv6BHvBXEDnPrVUxsVwzqzLSElNA==
X-Received: by 2002:a17:902:29c3:: with SMTP id
 h61mr34394554plb.37.1563278329823; 
 Tue, 16 Jul 2019 04:58:49 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 15/57] ram: rk3399: Add cs1_col enc macro
Date: Tue, 16 Jul 2019 17:27:03 +0530
Message-Id: <20190716115745.12585-16-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045850_950032_5235433A 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add dram config macro for handling cs1 column.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 3 +++
 drivers/ram/rockchip/sdram_rk3399.c               | 1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 9cd9f3b969..f5c99fea8b 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -113,6 +113,9 @@ struct sdram_base_params {
 				     (4 + 2 * (ch)); \
 		} while (0)
 
+#define SYS_REG_CS1_COL_SHIFT(ch)	(0 + 2 * (ch))
+#define SYS_REG_ENC_CS1_COL(n, ch)      (((n) - 9) << SYS_REG_CS1_COL_SHIFT(ch))
+
 /* Get sdram size decode from reg */
 size_t rockchip_sdram_size(phys_addr_t reg);
 
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1222da39c2..0f28163d6e 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1101,6 +1101,7 @@ static void dram_all_config(struct dram_info *dram,
 		if (info->cap_info.cs1_row)
 			SYS_REG_ENC_CS1_ROW(info->cap_info.cs1_row, sys_reg2,
 					    sys_reg3, channel);
+		sys_reg3 |= SYS_REG_ENC_CS1_COL(info->cap_info.col, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
