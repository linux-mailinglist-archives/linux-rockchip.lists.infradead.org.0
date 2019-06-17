Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF15047B4D
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64tEnidJ2V0q/Rq8UOztah5BW6GLQzLUG0oJsmYYHXo=; b=DfRevP8DfZzRdL
	qKlww22NOQNc06P3IeLw7ZxHLOeI3E50Ijt1UJNsWrCqijpTBbD2RbWdpb+hThtI9vovNnIiGcA/L
	cbWMpjlhklk/YPaeDttWahindA+aMYeIKVv7jWCHsuEXbdvPb0YNbi+C3pn0TS4Ewj1b+X9fyMhAA
	q5RkA2B9JKZmJoJlNoq3CnCykod0+aL4RHgBNfcYoDU3ICFlsjm2IL5odo1gjEc0xFByyOI3ngXHg
	kj8OIoSEySRTQCQ7Y06j8jblTrMk0LPOGWdIfKo7YiuoOYiM6o+qy9M9JDymjNrxTI4GCtRLVjuHq
	ZuqIm8B3g/PlLTIMt8zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEQ-0007Ys-3e; Mon, 17 Jun 2019 07:39:10 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEH-0007TX-S9
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id s27so5320016pgl.2
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HWBj/1uRsL5ErEedEXzfm03DRp+F6MGfVh41KQF2PFU=;
 b=Jpmge8Zxgtxj0ZfNaEMAjRiV0GBqz9QfMNtqfQrBB30mKOrocIkzbc/TwohIdrxzNz
 ZGA0LSR3jfutiupoNsbzA4x4MuTbRFgVshNkk8erq95lYPSPsmwjPWP1X+toEFcuPrGl
 NgUa6SgTCv99pDug8XXguHwFDc+PkGdcjOt4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HWBj/1uRsL5ErEedEXzfm03DRp+F6MGfVh41KQF2PFU=;
 b=B3jX85bH3RMqz5KHBxcEwChGUjhwO+eK1CPzGAJJ1eapQlJC/z+LiPw7cD/fCm01lF
 1nh9Llh0jxjDk8x4QWXHMBaKefaa2H//QnymZB5YNIeZlxFKr5TSLVNEFfJdTGm87gm2
 cuRkXxs4wd4npZiwAeVsgUZ8AAfU4Qt5MdMWlXLblJLmpMUgfOCRs9m5Ob25smbtaxW1
 1FxgGWW88o4fqDhpK7aYn8G2gmEfdB7MSR8eP9xxy80qy4EgML4KVJf1DSbWz/5OtT3l
 Qp+9I38DT0/pVunN755Tu9naBAVSfnCdY4d4m/WaduFNSy7wjtLuTwZu5A+i0K63VVdw
 RPcg==
X-Gm-Message-State: APjAAAUXItQ2mV4XwjslB1YMKdznmjqVILlnvNNvU84mIMoOZd08nFVd
 ATCsoMEUVvQygOIKrnjTfNmuQw==
X-Google-Smtp-Source: APXvYqwmKrbbiCpLbh7cUok+uJNGhlu6zeg8a0s7Zyhu1UTfzn1z1e+NRKT01cBDS7GS5svXQMlyJw==
X-Received: by 2002:a65:5004:: with SMTP id f4mr49149352pgo.268.1560757141220; 
 Mon, 17 Jun 2019 00:39:01 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 48/99] ram: rk3399: debug: Add sdram_print_stride
Date: Mon, 17 Jun 2019 13:02:01 +0530
Message-Id: <20190617073252.27810-49-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003902_193744_C731A0DB 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Add code to print the channel stride, this would help to
print the stride of associated channel.

Here is sample print on LPDDR4, 50MHz.
256B stride

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 .../include/asm/arch-rockchip/sdram_common.h  |  5 ++++
 drivers/ram/rockchip/sdram_debug.c            | 29 +++++++++++++++++++
 2 files changed, 34 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 7d1372f033..8027b53636 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -133,10 +133,15 @@ inline void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 				 struct sdram_base_params *base)
 {
 }
+
+inline void sdram_print_stride(unsigned int stride)
+{
+}
 #else
 void sdram_print_dram_type(unsigned char dramtype);
 void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 			  struct sdram_base_params *base);
+void sdram_print_stride(unsigned int stride);
 #endif /* CONFIG_RAM_ROCKCHIP_DEBUG */
 
 #endif
diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
index 19e9225c12..9cf662675b 100644
--- a/drivers/ram/rockchip/sdram_debug.c
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -116,3 +116,32 @@ void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 	printdec(cap >> 20);
 	printascii("MB\n");
 }
+
+void sdram_print_stride(unsigned int stride)
+{
+	switch (stride) {
+	case 0xc:
+		printf("128B stride\n");
+		break;
+	case 5:
+	case 9:
+	case 0xd:
+	case 0x11:
+	case 0x19:
+		printf("256B stride\n");
+		break;
+	case 0xa:
+	case 0xe:
+	case 0x12:
+		printf("512B stride\n");
+		break;
+	case 0xf:
+		printf("4K stride\n");
+		break;
+	case 0x1f:
+		printf("32MB + 256B stride\n");
+		break;
+	default:
+		printf("no stride\n");
+	}
+}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
