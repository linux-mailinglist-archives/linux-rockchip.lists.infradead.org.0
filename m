Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400013CF80
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++EWR4XDbvxrxmhzy4tG5zsXOF3peMDCT+z3/hri+lc=; b=ctUgf2TY9BNXvG
	rUYU+KuGxLBkZoQFnDVb5+is1gx0EqYSX2vhy+AbOLyqhy3y/6wAkcGvmvx6w3DDRsmBgjku4iIu7
	Q98bN7FzIGSYUo1WXER71JHxGKJhhXYIZgGORsLn8ft+27yXvdB9IMhj6UYa9PzFJ1q+3PUf3iVqc
	h250CDk3K8jY/pUrsQPpr+9UbFZaS6Z8PaMjSvAB4PrdTByOrVwfdgkmRC6W1slRI6AOYwBWataTc
	lGBcYkBJkJSYjE6/GzSXoIuepymdbP6YVEeoPPuHX73z1mqEiqPKXatm1acsqVW/W+NSDaUq9Ia+u
	DIUjPhCPZsHHdqTGyplw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8m-0004G2-E4; Tue, 11 Jun 2019 14:52:48 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8i-0004Dj-HK
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id g21so5250998plq.0
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IHluQoWa4h42xR+txLhRcp64NWWrhw7tiyZPWbXNKb0=;
 b=ASLb+1BID8e84GcSywgvStVbS4ZmhzRghhW8aqhU5cLgX0xJN7cdlc0b/g+WY4XRSe
 H1LDXB7ohSukEupcI0h0QfL2bMjapblxU2vDdawXd2IMnVx9BZLmZUTuO7TFG65TJ0tD
 WTyfINhPWV1NoTXV7bE4aI5rCdJHe2sqYD+rM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IHluQoWa4h42xR+txLhRcp64NWWrhw7tiyZPWbXNKb0=;
 b=VJITxbhj3rUywniAG5fjKXKkUuidV0wR664jkd+SEK9a7gDL/CEaYI1IF05v/y75ou
 Mtiiq7GqtIPLBB2TIoZLEID+P/xQzuF/tqHK8poujIIi+KM+40Py54927X34SUiTNpXA
 XBI0muqNIC0crmPDkWpClAHitPeb2tZl9v+LHrdzfGCoBjVaNE7BSlb0nOB/ILisBhnp
 47mJDSEH235lhEjj3mqS7UVXWvoYuliTPX/qe0vztNrxyHFZgIhMVYWO3nCTFadhDjMU
 GwEEWNEwaX2mJ7RaOZ6R6nSUrnC+H/Xrt142WdBjaOAPpYt6CXJzKwAA8B1Wzd15d82V
 bzjg==
X-Gm-Message-State: APjAAAXOl5hAjt3tKtc1DfrwXq0ojIOMPZlyMb/y1OFUzMk2ldr+JKSy
 Qgj5t5lsPGTW/fkfb/4MLT/ZPQ==
X-Google-Smtp-Source: APXvYqzwWmpqmPkC8h8aSBr4Hu66vuYxmAW3sNZZ+znBno1odVrEAGa615/DUR26haOrxlY4sosUCA==
X-Received: by 2002:a17:902:a98b:: with SMTP id
 bh11mr50050749plb.8.1560264763691; 
 Tue, 11 Jun 2019 07:52:43 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 13/92] ram: rk3399: Add chipinfo macro
Date: Tue, 11 Jun 2019 20:20:16 +0530
Message-Id: <20190611145135.21399-14-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075244_693377_1D2393C4 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Add simplified and meaningful macro for chip info.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 49a5d14821..68ae8e8371 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -35,6 +35,7 @@
 #define SYS_REG_ROW_3_4_MASK		1
 #define SYS_REG_ENC_ROW_3_4(n, ch)	((n) << (30 + (ch)))
 #define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
+#define SYS_REG_ENC_CHINFO(ch)		(1 << SYS_REG_CHINFO_SHIFT(ch))
 #define SYS_REG_ENC_DDRTYPE(n)		((n) << 13)
 #define SYS_REG_ENC_NUM_CH(n)		(((n) - 1) << 12)
 #define SYS_REG_RANK_SHIFT(ch)		(11 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 0a7137784e..0feb5d1e10 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1022,7 +1022,7 @@ static void dram_all_config(struct dram_info *dram,
 			continue;
 		idx++;
 		sys_reg |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
-		sys_reg |= 1 << SYS_REG_CHINFO_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_CHINFO(channel);
 		sys_reg |= (info->rank - 1) << SYS_REG_RANK_SHIFT(channel);
 		sys_reg |= (info->col - 9) << SYS_REG_COL_SHIFT(channel);
 		sys_reg |= info->bk == 3 ? 0 : 1 << SYS_REG_BK_SHIFT(channel);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
