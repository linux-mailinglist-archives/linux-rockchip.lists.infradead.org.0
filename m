Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 369CA47B31
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hc+Mjyk0z2ht/Z2zLbXqOxS1ZQQur3z6wPwAW9MRDOU=; b=emT3gZlUE8q2ke
	ssjCU9GslLMwDAamDbGMXa2RqzWrar5Dxyg8+655F4iJXa31XKlRrj0K9fxa1GXiJS9g4fhkxbRU/
	STTQuTMG69nv0GQm3A1cyywfTdWhoF+GCrBi+RK1wP/c0alotpIk1ofdhsq5Za0HnN721MgE9TvnN
	cDIspMAWx0ROwO0uejo4vutW7Ldj6PFu8BrHz+k6HZsz4jp59Til6T3HTT1N8pkhCrgo0eYMDF30z
	m/MbGDJcAxJFwlOW0Sikhdr+LJjxRdmucFYdoG+eguRbClb5Kr/TU/5GYCAdi1EBN4H3IFtOL9uX1
	/MJGXGeYZ9Nj2yOxU88g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDE-0006FD-Lo; Mon, 17 Jun 2019 07:37:56 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmD3-000667-6P
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:46 +0000
Received: by mail-pl1-x642.google.com with SMTP id c14so3742868plo.0
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K2cEX89nJyyFIMB3xn2R5xrY1IHrIl9vY6ukCGCAZR4=;
 b=WLIMK2INc1k/k0KgXqDuhU6gVuJSKgn2vx00BBudpn8zGygltds6xFaAGP3AR9bJRV
 mafFeNCCgwo4KOSYfWAlmuuG8f9wsljJ4rZ+lYhcFtnNbtSO9rL60HyAUD9OmUtvKjRK
 04XeLHQs8nqtpaBI5a4to0D1ARTcrg27JSR4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K2cEX89nJyyFIMB3xn2R5xrY1IHrIl9vY6ukCGCAZR4=;
 b=ITx+5Pk43I9MAd0NqY8lOfXfZ1+m1S7rWrPK1O9o+bm7/7r7uCXTTrpI3kpw7Msim8
 xvEbyzf+vvpGzoQM3cWaORLr/bue8KewuiKj3LEegODoxWAt0VyMeFRRmB/0DwfiArLx
 cwSdE1jd5pN26yy30xC2xdbenVgshjbhluWZtMnjewsv85ps1hZtPr97Z+bJt+WoU1u2
 ohOr+//F5JdRU59LIbwUM5oa01NA7XjCDDwZPiiOZyVlbr9PG6NeCW69rbcnLtrZWuXt
 eTrHvT87cMl3MWkeVjsQeLq/VRWORwJiL9tVGVuxo03pH3qRciP4k+zSKqmbxe/rAVnq
 Y9kw==
X-Gm-Message-State: APjAAAUsNBDgEQi3993XwopBn1gozvXNZhDFJpCyey+1CQ5b/ixsOwn4
 UKVMXESP05yJmkru4iUd4HDA9g==
X-Google-Smtp-Source: APXvYqzTlzsm++FCpaEF1OUcBaRB8q1eUb9Dqkq+nU2NaLa9mq8iOpctCMQ7d4DvQxVpq6azw7wHLQ==
X-Received: by 2002:a17:902:2006:: with SMTP id
 n6mr49795650pla.232.1560757064697; 
 Mon, 17 Jun 2019 00:37:44 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:44 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 25/99] ram: rk3399: Add cs1_col enc macro
Date: Mon, 17 Jun 2019 13:01:38 +0530
Message-Id: <20190617073252.27810-26-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003745_352349_4356B498 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Add dram config macro for handling cs1 column.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 3 +++
 drivers/ram/rockchip/sdram_rk3399.c               | 1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 7062cb57d9..e5145422cc 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -75,6 +75,9 @@
 				     (4 + 2 * (ch)); \
 		} while (0)
 
+#define SYS_REG_CS1_COL_SHIFT(ch)	(0 + 2 * (ch))
+#define SYS_REG_ENC_CS1_COL(n, ch)      (((n) - 9) << SYS_REG_CS1_COL_SHIFT(ch))
+
 /* Get sdram size decode from reg */
 size_t rockchip_sdram_size(phys_addr_t reg);
 
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 21c1c6566a..14e2afcbc4 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1032,6 +1032,7 @@ static void dram_all_config(struct dram_info *dram,
 		if (info->cs1_row)
 			SYS_REG_ENC_CS1_ROW(info->cs1_row, sys_reg2,
 					    sys_reg3, channel);
+		sys_reg3 |= SYS_REG_ENC_CS1_COL(info->col, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
