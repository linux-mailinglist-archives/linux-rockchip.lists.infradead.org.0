Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAE147B4C
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsYTBx/L5vYAXBPrc+oQZ3ooRCrRMNBlPVOPFWfVMr0=; b=TIzDQVBWgpIrw4
	KuMo6bf/ta4dnPeu+dOgd7fH63lF2MN9sulFMGgNIEzBxJw7GfAVGBVIsbsehXMKe6bsAt5qeUN3J
	jD/Z1t1yMJaff/lx/9l1FPcyCiZz+qhfmDDs1TsFpT29F4uTwBsf3N0QAazjlPYgQCEUkEB9/UDMR
	+eyrQ2j+f9DLY4/v6Z3mpdtULiIhgB5FsrRV0JU2K/+MxbajnfuoH+upc52O/aSveXLNhOiOknTar
	t7t/oK5ethDtP1uGUpZoLhwElIyewJ4MDL9/1+6k/YzGFdgil+NE2Sbc/hm8MDGG2hGQkuzmsSiL+
	joGu9LTfKtVPjiPBtEwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEN-0007Wh-6A; Mon, 17 Jun 2019 07:39:07 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEE-0007QP-Gw
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id p184so5186072pfp.7
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kw/++CuXx6mQuiTZ6aAWPkhA635XZSGQPzWMsqf+2Gk=;
 b=QUl2SnuPlG7sOEe4jY4XNp5KdEZP4fyc2bIWI122nb1ZsM4vUH2UX0+2uHRh88llj3
 VWTCuj9XDvMXS1Zfib0RruYNw+DHrx/y8gW0F9QON3kgy/+JJTPofXCqN1Z+HT9EjhEK
 JGPf9ELYw2YHy16G4SgeBhiTUKAQ1tGyA7cMw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kw/++CuXx6mQuiTZ6aAWPkhA635XZSGQPzWMsqf+2Gk=;
 b=nvULvfc/REtdIfRNzpsDtOrWYZH3Jn1089HQSvyT58n6kjU+31lxlZcZS8cDELC5Uv
 jT9oac+HFQ22D2Mr9YVmCV5OYO308bdFgfwIVdfH3KlxYOFgn4WHjUOScmblw5nWYOlj
 aTjJfMKe9BXIxK5U/W0+FCnEqOS39lfLPIplhvQCCTUvm/vTyDxR1LtVQR3h3nJdDsxm
 AeB7bZxcPzXa2V434ZbqjPMAO8kZc1EvICF0NKNko+d99FZOcoQDJLUy1S5QqNvHaeUv
 pSTLTlGDJOCbOaJmq+eT3vpoyP+qq6uWQaZ7sYbAqHITNfyU7GpbXVzz9xDECG5uaClM
 q2CA==
X-Gm-Message-State: APjAAAVWoIGUn/cTZtR/bhKDf/yf6dN7u0bEOPCkoofowRLvvNsIuMwi
 ju56PGMwVwSN5toZISAGezjhbg==
X-Google-Smtp-Source: APXvYqzIap2VV9ADQX9qbccaj6gg+IFNgd9gPVXajyvmcBQ31W7ROjZscw9za6ctZ7E+WqBlxtJNnQ==
X-Received: by 2002:a63:26c7:: with SMTP id
 m190mr48786614pgm.141.1560757137893; 
 Mon, 17 Jun 2019 00:38:57 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 47/99] ram: rockchip: debug: Get the cs capacity
Date: Mon, 17 Jun 2019 13:02:00 +0530
Message-Id: <20190617073252.27810-48-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003858_646176_93DBE82B 
X-CRM114-Status: GOOD (  11.55  )
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

Add code to get the channel capacity, this would help to
print the capacity of specific channel.

Here is sample print on LPDDR4, 50MHz channel 0
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_debug.c | 46 +++++++++++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
index 69a6f94a73..19e9225c12 100644
--- a/drivers/ram/rockchip/sdram_debug.c
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -33,10 +33,46 @@ void sdram_print_dram_type(unsigned char dramtype)
 	}
 }
 
+/**
+ * cs  = 0, cs0
+ * cs  = 1, cs1
+ * cs => 2, cs0+cs1
+ * note: it didn't consider about row_3_4
+ */
+u64 sdram_get_cs_cap(struct sdram_cap_info *cap_info, u32 cs, u32 dram_type)
+{
+	u32 bg;
+	u64 cap[2];
+
+	if (dram_type == DDR4)
+		/* DDR4 8bit dram BG = 2(4bank groups),
+		 * 16bit dram BG = 1 (2 bank groups)
+		 */
+		bg = (cap_info->dbw == 0) ? 2 : 1;
+	else
+		bg = 0;
+
+	cap[0] = 1llu << (cap_info->bw + cap_info->col +
+		 bg + cap_info->bk + cap_info->cs0_row);
+
+	if (cap_info->rank == 2)
+		cap[1] = 1llu << (cap_info->bw + cap_info->col +
+			 bg + cap_info->bk + cap_info->cs1_row);
+	else
+		cap[1] = 0;
+
+	if (cs == 0)
+		return cap[0];
+	else if (cs == 1)
+		return cap[1];
+	else
+		return (cap[0] + cap[1]);
+}
+
 void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 			  struct sdram_base_params *base)
 {
-	u32 bg;
+	u32 bg, cap;
 
 	bg = (cap_info->dbw == 0) ? 2 : 1;
 
@@ -71,4 +107,12 @@ void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 
 	printascii(" Die BW=");
 	printdec(8 << cap_info->dbw);
+
+	cap = sdram_get_cs_cap(cap_info, 3, base->dramtype);
+	if (cap_info->row_3_4)
+		cap = cap * 3 / 4;
+
+	printascii(" Size=");
+	printdec(cap >> 20);
+	printascii("MB\n");
 }
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
