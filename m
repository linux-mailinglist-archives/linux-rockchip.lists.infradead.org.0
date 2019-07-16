Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F04086A7EC
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5nODVHl19u6dpm4ZHUBmwBPN5UdhiKwLFRq9oXrKZGU=; b=OSt/owjUFXYdSv
	FSg2fc5JI86DNR8kcoFfFf8V4tUdYIixnbBxLzu8Hkm2mhG2dmNkXr8FOxMpmfi5OkwNnwVW5X7DG
	pf/NRVlZp32pkpKbR02/Vzw2xjjEf1jyGUN5e6qU2hng94BY6GdpW7dFcZ9JxWdBp1sSzYky6h3Ro
	qYOdwJi83rESV37O2qR1zW1w6/gbTgWqt9wk86RpCT6wqCUz+6Ou+2T7YAfGvEq/1D0TXHFzvvNif
	eSPIR7gJYqd7sQFIC0xT/5Outr1uboxn+wF8S2DhEK/oTPLdZ8c9nT2NEhhUYgsHdqkeHvjBbDt8R
	Q+cI3edi1sDq5NRBR9mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8U-0006sJ-Ni; Tue, 16 Jul 2019 12:00:46 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6A-0003pH-IS
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so9318263pgp.12
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xFSBaPoLEgv3bGdkt8E0ZmIHJeSdBwXN2dF/hzci7V4=;
 b=jNpnIVKwK6nsKMX8ljokGSIS1Ym2efxgdbMa+fHPK0bRBJvyAcjbL4BttThlzDrPpn
 rVjpnTl9hpcKWeT8o0wtL25kKhw01uTbkDf27KyzV0AJbsg2nD7bq4dhXvkvf4/sap5a
 p5YVWY7Z9rkyBWQksDx/iGUJDXH7kQ0ek4qNU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xFSBaPoLEgv3bGdkt8E0ZmIHJeSdBwXN2dF/hzci7V4=;
 b=V4BFvVRMhdk5cpCUkatlbnEX2c+CaEs6WOuwU4VWkguTx1zE/jWOxazqo1/e6TXhjl
 0IIw4Kw7mSo4rFUrt6yr3WWG76ET27Ia7E49MSs8j1ydoeViqZRKzebwnxl+Kft39fEK
 vvUbWM2wGgNp26H4SddCmgKiIQb9TnuVuTaDI6oWkFI5nZZ6jnorl19ZWefTNNfbhcmv
 0FR/7d0PVuTnOk2u3WMjFg4UK8hfOQGe9ktAqKkjBe06zZ+48Gjvr9CUidCxycgI3ZHJ
 iNiSSacSGDOqJK9mzdBZRWwsc9mAsPFvzqF84KtkIvSlOzhhK6YZcmFt3Jp7+N6vzQlT
 myWA==
X-Gm-Message-State: APjAAAXPEA+h7WSdZ6OFKBJSYTe6LWMvIiGd5tOEC6C10iz9Xxy5aYK9
 /FKevHHV6HVw8jBdpRnwLDkL4w==
X-Google-Smtp-Source: APXvYqxZCAcPCf9EPSHmV9uh5HPhCt7R/4tBbkq+J62jtZaVy2ZfmBwzNPSrlR5ZKUIc7ZGdAnrdhg==
X-Received: by 2002:a63:6bc5:: with SMTP id g188mr2108600pgc.225.1563278301786; 
 Tue, 16 Jul 2019 04:58:21 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:21 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 07/57] ram: rk3399: Add bk enc macro
Date: Tue, 16 Jul 2019 17:26:55 +0530
Message-Id: <20190716115745.12585-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045823_038692_0E31B9C5 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Add simplified and meaningful macro for bk.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index e7f15a7cf9..71062e3e71 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -86,6 +86,8 @@ struct sdram_base_params {
 #define SYS_REG_ENC_COL(n, ch)		(((n) - 9) << SYS_REG_COL_SHIFT(ch))
 #define SYS_REG_BK_SHIFT(ch)		(8 + (ch) * 16)
 #define SYS_REG_BK_MASK			1
+#define SYS_REG_ENC_BK(n, ch)		(((n) == 3 ? 0 : 1) << \
+					SYS_REG_BK_SHIFT(ch))
 #define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
 #define SYS_REG_CS0_ROW_MASK		3
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index f6a83f2acf..b93a6c6c44 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1093,8 +1093,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_CHINFO(channel);
 		sys_reg |= SYS_REG_ENC_RANK(info->cap_info.rank, channel);
 		sys_reg |= SYS_REG_ENC_COL(info->cap_info.col, channel);
-		sys_reg |= info->cap_info.bk == 3 ? 0 : 1 <<
-			   SYS_REG_BK_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_BK(info->cap_info.bk, channel);
 		sys_reg |= (info->cap_info.cs0_row - 13) <<
 			    SYS_REG_CS0_ROW_SHIFT(channel);
 		sys_reg |= (info->cap_info.cs1_row - 13) <<
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
