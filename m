Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1130169ADC
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsYTBx/L5vYAXBPrc+oQZ3ooRCrRMNBlPVOPFWfVMr0=; b=DUzko0Ckacww6k
	cTiL4Xrdofm+VQQ1liV9c6j2doZuvdDuON660P8EtNxE3mIe/nzrenoedTO71MVDw/BT4thYWOGOC
	zPuJh1dJf6CGiH/YWIs4zD5IXqgOyFBi8jo4QfHCJdaJP5vftMsMo2HAufK6hHEBqng24AEUlkI+s
	mJradFHNarKiHVBbt4liXAfU3ljQqBXS0hAosTqvt8gUffRE5kD5zff6aargDmMKXHNrh6Nb+HHVq
	/AxpGwp5s4DkT0jGr0gjoxsrXZX058QlCGN7AqmFppaV4sGpvkD2fqsZCWzXRHUGEGfEgE0GjdHza
	DNQTUfsF5z7PZZe8SJpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jY-0001FQ-La; Mon, 15 Jul 2019 18:29:56 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5jT-0001CK-1u
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:52 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so8099679pgp.12
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kw/++CuXx6mQuiTZ6aAWPkhA635XZSGQPzWMsqf+2Gk=;
 b=k7wlHWZdkoxcCel3F5cqCw7p7xxQ+M/gQVp0KlPMU5aqW/KfGOZzqXaqW5kdS3IZk4
 GIpK9VJhcHMxrOZLurRvnSwdmMV6NZELbwqkNQF2fefEMkWijf1ZoOqG8cjHpryEl1HZ
 kAHpX8aQc60Ak9jiVCgzHmpr2I5d2HA1PYhtQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kw/++CuXx6mQuiTZ6aAWPkhA635XZSGQPzWMsqf+2Gk=;
 b=pMgt3YU7YV/4xXJimcD+wLVYCMGNUFwZCWEzXz7nqyG5q1+RXTLCvK0NXqIoix62+5
 Jouf7SH2qbOE3nyFcanR50P9cJpcEYzWrJFt+eUgLnJprP6aI71FHN50TgVyLnmVDbQo
 XAQ10dUYk2WJUP0X+f21Ce1T/l+bJLV0FGTPI3myLR22unWqY6Y1bCU1mzKtCD0oaGB/
 pRzMBOMEk8IhfvhP94OvEveDrf2LdhQxbKuws+C2gm7iypD9Ugw5DJBPNgytqglEju7V
 72GnG0otGnH2CvF35SZ0f4ur+sSDQ1/9qNbUrP/8SW97cYP22754Qxl4VqKzENY/KM6m
 p71A==
X-Gm-Message-State: APjAAAUF1hKprgikrPM/mGmT9bpQtBNQi0IhBVl48+jDbjd2ev7iEO0x
 b/DySxhd+w5hFDha6dwG+buMrA==
X-Google-Smtp-Source: APXvYqzjKoy2m05TK9g7ghOrDVYBD2b8wt3KIKbneT3Ym3yt3MijoNWxaSysY2Cngpd1zRJFv5NbMg==
X-Received: by 2002:a63:1a03:: with SMTP id a3mr26939638pga.397.1563215390465; 
 Mon, 15 Jul 2019 11:29:50 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:50 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 12/18] ram: rockchip: debug: Get the cs capacity
Date: Mon, 15 Jul 2019 23:58:50 +0530
Message-Id: <20190715182856.21688-13-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112951_236418_06C4FF0F 
X-CRM114-Status: GOOD (  11.85  )
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
